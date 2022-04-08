<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <body>
    <div style="text-align:center;vertical-align:middle;">
        <h2>add-book</h2>
        <form action="controller?command=addBookMain" method="post">

            <input type="text"  placeholder="book name" name="name"/>
            <br/>
            <input type="submit"/>
        </form>
    </div>
    </body>
</html>