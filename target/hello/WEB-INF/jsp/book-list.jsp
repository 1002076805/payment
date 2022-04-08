<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<style type="text/css">
    body {
    background-image: url("listBackground.jpeg");
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: cover;
    }
</style>
</head>

    <body>
	<div style="position: relative; top:50px;left:550px;vertical-align:middle;">
        <h2>book-list</h2>
        <c:forEach items="${payments}" var="payment">
            ${payment.name} <br/>
        </c:forEach>
    </div>
    </body>
</html>