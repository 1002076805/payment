<%@ page import="by.bsu.web.entity.Card" %>
<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add cards</title>
    <link rel="stylesheet" href="static/style/register.css">
    <link rel="stylesheet" href="static/bootstrap/bootstrap.4.6.min.css">
    <c:if test="${user != null and user.isadmin == 1}">
        <jsp:include page="/fragment/navbar.jsp" />
    </c:if>

    <c:if test="${user != null and user.isadmin != 1}">
        <jsp:include page="/fragment/navbar2.jsp" />
    </c:if>
</head>
<body>

    <div class="rg_layout">

        <div class="rg_left">
            <p>Add Card</p>
        </div>

        <div class="rg_center">
            <div class="rg_form">
                <form action="controller?command=addCardMain&cardName=${user.name}&isadmin=${user.isadmin}" method="post">
                    <table>
                        <tr>
                            <td class="td_left"><label for="cardnumber">cardnumber</label> </td>
                            <td class="td_right"><input type="text" name="cardnumber" id="cardnumber"> </td>
                        </tr>
                        <tr>
                            <td class="td_left"><label for="password">password</label> </td>
                            <td class="td_right"><input type="password" name="password" id="password"> </td>
                        </tr>
                        <tr>
                            <td class="td_left"><label for="name">name</label> </td>
                            <td class="td_right"><input type="text" name="name" id="name"> </td>
                        </tr>
                        <tr>
                            <td class="td_left"><label for="tel">tel</label> </td>
                            <td class="td_right"><input type="text" name="tel" id="tel"> </td>
                        </tr>

                        <tr>
                            <td class="td_left"><label for="email">email</label> </td>
                            <td class="td_right"><input type="text" name="email" id="email"> </td>
                        </tr>

                        <tr>
                            <td colspan="2"  style="text-align: center">
                                <input type="submit" value="Add Card" id="btn_sub">
                            </td>
                        </tr>

                    </table>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
