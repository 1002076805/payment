<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
<style type="text/css">
    body {
    background-image: url("addBackground.jpeg");
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: cover;
    }
    *{
        margin: 0;
        padding: 0;
    }
    .parent{
        position: relative;
        width: 644px;
        height: 36px;
        margin:200px auto;
    }
    input{
        position: absolute;
        width: 540px;
        height: 36px;
        border: none;
        border: 1px solid #ccc;
    }
    .button{
        position: absolute;
        width: 100px;
        height: 37px;
        box-sizing: content-box;
        outline: none;
        border: none;
        background: #3385ff;
        border-bottom: 1px solid #2d78f4;
        color: #fff;
        right: 2px;
        top: 0;
    }
</style>
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