<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="static/style/main.css">
    <link rel="stylesheet" href="static/bootstrap/bootstrap.4.6.min.css">
    <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
            text-align: center;
        }
        tr:nth-child(even) {
            background-color: rgba(150, 212, 212, 0.4);
        }
        th:nth-child(even),td:nth-child(even) {
            background-color: rgba(150, 212, 212, 0.4);
        }
    </style>
</head>

    <body class="cardlist_body">
    <%
        Object message = request.getAttribute("message");
        if(message!=null && !"".equals(message)){

    %>
    <script type="text/javascript">
        alert("<%=request.getAttribute("message")%>");
    </script>
    <%} %>

    <jsp:include page="/fragment/navbar.jsp" />

	<div style="position: relative;width:70%; top:50px;left:150px;vertical-align:middle;">
        <h2>Card-list</h2>
            <table>
                <table class="table">
                    <thead class="thead-dark">
                    <tr>

<%--                    <th scope="col">id</th>  --%>
                        <th scope="col">cardnumber</th>
                        <th scope="col">name</th>
                        <th scope="col">tel</th>
                        <th scope="col">email</th>
                        <th scope="col">update</th>
                        <th scope="col">delete</th>
                    </tr>
                    <c:forEach items="${cards}" var="cards">
                        <tr>

<%--                            <td>${cards.id}</td>--%>
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