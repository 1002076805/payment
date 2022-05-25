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
<body>

	<div style="position: relative;width:70%; top:50px;left:150px;vertical-align:middle;">
        <h2>Balance-list</h2>

            <form action="controller?command=balanceList&balanceName=${user.name}&isadmin=${user.isadmin}" method="post">
                <div class="inputBox">
                    <label for="cardnumber">Card Number</label>
                    <input type="text" name="cardnumber" id="cardnumber" >
                    <label for="cardnumber">&nbsp;&nbsp;&nbsp;Balance</label>
                    <input type="text" name="balance" id="balance" >
                    <input style="text-align: center;left: 20px;" class="submit1" type="submit" name="query" value="query">
                </div>
            </form>

            <table>
                <table class="table">
                    <thead class="thead-dark">
                    <tr>
                        <th scope="col">cardnumber</th>
                        <th scope="col">spend</th>
                        <th scope="col">balance</th>
                        <th scope="col">time</th>
                        <th scope="col">address</th>
                    </tr>
                    <c:forEach items="${balances}" var="balances">
                        <tr>
                            <td>${balances.cardnumber}</td>
                            <td>${balances.spend}</td>
                            <td>${balances.balance}</td>
                            <td>${balances.date}</td>
                            <td>${balances.address}</td>
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