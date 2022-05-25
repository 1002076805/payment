<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="static/style/main.css">
    <link rel="stylesheet" href="static/style/balance.css">
    <link rel="stylesheet" href="static/bootstrap/bootstrap.4.6.min.css">
    <c:if test="${user != null and user.isadmin == 1}">
        <jsp:include page="/fragment/navbar.jsp" />
    </c:if>
    <c:if test="${user != null and user.isadmin != 1}">
        <jsp:include page="/fragment/navbar2.jsp" />
    </c:if>
</head>

<body class="cardlist_body">
	<div style="position: relative;width:70%; top:50px;left:150px;vertical-align:middle;">

        <h2>User-list</h2>

        <form action="controller?command=userList" method="post">
            <div class="inputBox">
                <label for="account">Account:</label>
                <input type="text" name="account" id="account" >
                <label >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IsAdmin:</label>
                <select class="" name="isadmin" id="isadmin" data-placeholder="isadmin" style="">
                    <option selected value="2">All</option>
                    <option value="0">User</option>
                    <option value="1">Admin</option>
                </select>
                <input style="text-align: center" class="submit1" type="submit" name="query" value="query">
            </div>
        </form>

        <table>
            <table class="table">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">account</th>
                    <th scope="col">name</th>
                    <th scope="col">password</th>
                    <th scope="col">idNumber</th>
                    <th scope="col">gender</th>
                    <th scope="col">tel</th>
                    <th scope="col">address</th>
                    <th scope="col">isadmin</th>
                    <th scope="col">update</th>
                    <th scope="col">delete</th>
                </tr>
                <c:forEach items="${users}" var="users">
                    <tr>
                        <td>${users.name}</td>
                        <td>${users.account}</td>
                        <td>${users.password}</td>
                        <td>${users.idNumber}</td>
                        <td>${users.gender}</td>
                        <td>${users.tel}</td>
                        <td>${users.address}</td>
                        <td>
                            <c:if test="${users.isadmin== 1}">Admin</c:if>
                            <c:if test="${users.isadmin!= 1}">User</c:if>
                        </td>
                        <td><a href="controller?command=updateUser&id=${users.id}"><button type="button" class="btn btn-info btn-xs">update</button></a></td>
                        <td><a href="controller?command=deleteUser&id=${users.id}"><button type="button" class="btn btn-danger btn-xs">delete</button></a></td>
                    </tr>
                </c:forEach>
                </thead>
            </table>
        </table>

        <nav aria-label="Page navigation example">
            <ul class="pagination">
                <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item"><a class="page-link" href="#">Next</a></li>
            </ul>
        </nav>

    </div>
</body>
</html>