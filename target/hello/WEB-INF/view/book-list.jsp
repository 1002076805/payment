<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <body>
    <div style="text-align:center;vertical-align:middle;">
        <h2>book-list</h2>
        <c:forEach items="${payments}" var="payment">
            ${payment.name} <br/>
        </c:forEach>
    </div>
    </body>
</html>