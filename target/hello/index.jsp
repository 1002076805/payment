<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <link rel="stylesheet" href="./static/bootstrap/bootstrap.4.6.min.css">
    <link href="./static/style/index.css" rel="stylesheet">
</head>
<body>

    <div style="position: absolute;left: 90%;top: 50px;">
        <a href="controller?command=register" style="position: absolute;">
            <button  class="btn btn-lg btn-primary btn-block" type="submit" name="login" value="login">register</button>
        </a>
    </div>

    <form class="form-signin" action="controller?command=login" method="post">
        <div class="text-center mb-4">
            <img class="mb-4" src="./static/img/pay.svg" alt="" width="72" height="72">
            <h1 class="h3 mb-3 font-weight-normal">Just Pay</h1>
        </div>

        <div class="form-label-group">
            <input type="text"  name="login" class="form-control"  required autofocus>
            <label >ACCOUNT</label>
        </div>

        <div class="form-label-group">
            <input type="password" name="password"  class="form-control"  required>
            <label >Password</label>
        </div>

        <div class="checkbox mb-3">
            <label>
                <input type="checkbox" value="remember-me"> Remember me
            </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit" name="login" value="login">Sign in</button>
        <div class="login-error" style="color: red">
            <c:if test="${error_message != null}">
                ${error_message}
            </c:if>
        </div>
        <p class="mt-5 mb-3 text-muted text-center">&copy; 2022-2023</p>

        <c:if test="${RegisterMessage != null}">
            ${RegisterMessage}
        </c:if>
    </form>

</body>
</html>
