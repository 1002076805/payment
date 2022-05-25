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

        <div style="position: relative;width:70%; top:50px;left:150px;vertical-align:middle;overflow: hidden">
            <h2>Card-list</h2>

            <form action="controller?command=cardList&cardName=${user.name}&isadmin=${user.isadmin}" method="post">
                <div class="inputBox">
                    <label for="cardnumber">Card Number</label>
                    <input type="text" name="cardnumber" id="cardnumber" >
                    <input style="text-align: center" class="submit1" type="submit" name="query" value="query">
                </div>
            </form>

            <table>
                <table class="table">
                    <thead class="thead-dark">
                    <tr>
                        <th scope="col">cardnumber</th>
                        <th scope="col">name</th>
                        <th scope="col">tel</th>
                        <th scope="col">email</th>
                        <th scope="col">update</th>
                        <th scope="col">delete</th>
                    </tr>
                    <c:forEach items="${cards}" var="cards">
                        <tr>
                            <td>${cards.cardnumber}</td>
                            <td>${cards.name}</td>
                            <td>${cards.tel}</td>
                            <td>${cards.email}</td>
                            <td><a href="controller?command=updateCards&id=${cards.id}"><button type="button" class="btn btn-info btn-xs">update</button></a></td>
                            <td><a href="controller?command=deleteRecord&id=${cards.id}"><button type="button" class="btn btn-danger btn-xs">delete</button></a></td>
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