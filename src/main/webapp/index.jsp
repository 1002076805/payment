<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>login UI</title>
    <link rel="stylesheet" href="login.css">
</head>
<body>
    <div class="box">
            <h2>login</h2>
    <form action="controller?command=login" method="post">
    <div class="inputBox">
      <input type="text" name="login" required="">
      <label>ID</label>
    </div>
    <div class="inputBox">
		<input type="password" name="password" required="">
		<label>PASSWORD</label>
    </div>
    <input type="submit" name="" value="submit">
	</form>
	</div>
    <script type="text/javascript">
        <c:if test="${error_message !=null}">
              alert("${error_message}")
        </c:if>
   </script>


    </body>
</html>
