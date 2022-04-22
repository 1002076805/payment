<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Document</title>
    <link rel="stylesheet" href="static/style/main.css">

</head>
<body>

<div class="top">

    <div class="leftPostion">
        <a href="controller?command=addCards">
            <img src="static/img/add.png" alt="HTML tutorial" style="border:1px solid black;width:200px;height:200px;">
        </a>
        <h2 style="text-align:center;">BindCards</h2>
    </div>

    <div class="leftPostion">
        <a href="controller?command=cardList">
            <img src="static/img/card.png" alt="HTML tutorial" style="border:1px solid black;width:200px;height:200px;font-size: 250%;">
        </a>
        <h2 style="text-align:center;">CardInformation</h2>
    </div>

    <div class="leftPostion">
        <a href="controller?command=balanceList">
            <img src="static/img/balance.png" alt="HTML tutorial" style="border:1px solid black;width:200px;height:200px;font-size: 250%;">
        </a>
        <h2 style="text-align:center;">BalanceInformation</h2>
    </div>


    <div class="leftPostion">
        <a href="controller?command=Logout">
                <img src="static/img/logout.png" alt="HTML tutorial" style="border:1px solid black;width:200px;height:200px;">
        </a>
        <h2 style="text-align:center;">logout</h2>
    </div>



    <c:if test="${user != null and user.isadmin == 1}">
        <div class="leftPostion">
            <a href="controller?command=userList">
                <img src="static/img/user.png" alt="HTML tutorial" style="border:1px solid black;width:200px;height:200px;">
            </a>
            <h2 style="text-align:center;">UserInformation</h2>
        </div>
    </c:if>

</div>
</body>
</html>