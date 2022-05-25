<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="zh-CN">
<head>
    <link rel="stylesheet" href="static/bootstrap/bootstrap.4.6.min.css">
    <link href="jumbotron.css" rel="stylesheet">
</head>
<body>


<main role="main">

    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">Hello!WELCOME! </h1>
            <h2 class="display-4" style="color: #2d78f4"> ${user.name}  </h2>
            <p>Alipay has established strategic cooperation relations with more than 180 banks at home and abroad, visa, MasterCard International Organizations and other institutions, and has become the most trusted partner of financial institutions in the field of electronic payment.</p>
            <p><a href="controller?command=cardList&cardName=${user.name}&isadmin=${user.isadmin}" class="btn btn-primary btn-lg" href="#" role="button">Go Start &raquo;</a></p>
        </div>
    </div>

    <div class="container">
        <div class="row">

            <c:if test="${user != null and user.isadmin == 0}">
                <div class="col-md-4">
                    <h2>Add card</h2>
                    <p>Hello, through this function, you can bind your bank card, which is more convenient for your management.</p>
                    <p><a href="controller?command=addCards" class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
                </div>
            </c:if>

            <div class="col-md-4">
                <h2>Card information</h2>
                <p>Hello, through this function, you can view your bank card information, and you can view and delete your bank card information through this function.</p>
                <p><a href="controller?command=cardList&cardName=${user.name}&isadmin=${user.isadmin}" class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
            </div>
            <div class="col-md-4">
                <h2>Balance information</h2>
                <p>Hello, through this function, you can view your consumption records. You can query the consumption amount through your bank card.</p>
                <p><a href="controller?command=balanceList&balanceName=${user.name}&isadmin=${user.isadmin}" class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
            </div>

            <c:if test="${user != null and user.isadmin == 1}">
                <div class="col-md-4">
                    <h2>User Information</h2>
                    <p>Hello, through this function, you can bind your bank card, which is more convenient for your management.</p>
                    <p><a href="controller?command=userList" class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
                </div>
            </c:if>
        </div>

        <hr>

    </div> <!-- /container -->

</main>

    <footer class="container">
        <p>&copy; Just Pay 2022-2023</p>
    </footer>



</body>
</html>
