<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>login UI</title>
    <link rel="stylesheet" href="static/style/login.css">
    <style type="text/css">
    </style>
    <link href="static/style/login.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="box">
    <h2>Welcome</h2>
    <form action="controller?command=login" method="post">
        <div class="inputBox">
            <input type="text" name="login" required="">
            <label>ACCOUNT</label>
        </div>
        <div class="inputBox">
            <input type="password" name="password" required="">
            <label>PASSWORD</label>
        </div>
        <div style="text-align: center">
            <input style="text-align: center" class="submit1" type="submit" name="login" value="login">
        </div>

    </form>
    <form action="controller?command=register" method="post" style="text-align: center;margin-top: auto;padding-top: 20px">
        <div >
            <input  style="text-align: center" class="submit2" type="submit" name="register" value="register">
        </div>

    </form>
</div>
<script type="text/javascript">
    <c:if test="${error_message !=null}">
    alert("${error_message}")
    </c:if>
</script>


</body>
</html>
