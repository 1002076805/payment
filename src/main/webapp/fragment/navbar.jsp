<%--
  Created by IntelliJ IDEA.
  User: Guo
  Date: 2022/4/22
  Time: 17:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item" >
                    <a class="nav-link " href="controller?command=Main" style="font-size: 20px;font-weight: bold;">Main</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="controller?command=cardList&cardName=${user.name}&isadmin=${user.isadmin}" style="font-size: 20px;font-weight: bold;">Card information</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="controller?command=balanceList&balanceName=${user.name}&isadmin=${user.isadmin}" style="font-size: 20px;font-weight: bold;">Balance information</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="controller?command=userList" style="font-size: 20px;font-weight: bold;">User information</a>
                </li>
            </ul>
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="controller?command=logout" style="font-size: 20px;font-weight: bold;">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

</body>
</html>
