<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <link rel="stylesheet" href="static/style/main.css">
</head>
    <body>
    <div>
        <form class="parent"  action="controller?command=addBookMain" method="post">
            <input type="text" required="required" placeholder="book name" name="name"/>
            <input class="button"  type="submit" name="submit"/>
        </form>
    </div>
    </body>
</html>