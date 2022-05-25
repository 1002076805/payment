<%@ page import="by.bsu.web.entity.Card" %>
<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>updateCards</title>
    <link rel="stylesheet" href="static/style/register.css">
</head>
<body>

    <div class="rg_layout">

        <div class="rg_left">
            <p>Update Card</p>
        </div>

        <div class="rg_center">
            <div class="rg_form">
                <form action="controller?command=updateCardMain" method="post">
                    <table>
                        <tr>
                            <td class="td_left"><label>cardnumber</label> </td>
                            <td class="td_right"><input type="text" value="${card.cardnumber}" name="cardnumber"/> </td>
                        </tr>
                        <tr>
                            <td class="td_left"><label >password</label> </td>
                            <td class="td_right"><input type="text" value="${card.password}" name="password"/> </td>
                        </tr>
                        <tr>
                            <td class="td_left"><label >name</label> </td>
                            <td class="td_right"><input type="text" value="${card.name}" name="name"/> </td>
                        </tr>
                        <tr>
                            <td class="td_left"><label >tel</label> </td>
                            <td class="td_right"><input type="text" value="${card.tel}" name="tel"/> </td>
                        </tr>
                        <tr>
                            <td class="td_left"><label>email</label> </td>
                            <td class="td_right"><input type="text" value="${card.email}" name="email"/> </td>
                        </tr>
                        <div style="display: none">
                            <input type="text" value="${card.id}" name="id"/>
                        </div>
                        <tr>
                            <td colspan="2"  style="text-align: center">
                                <input type="submit" value="Update Card" id="btn_sub">
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>

    </div>
</body>
</html>
