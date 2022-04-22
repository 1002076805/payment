<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>REGISTER</title>
  <link rel="stylesheet" href="static/style/register.css">
</head>
<body>
<div class="rg_layout">
  <div class="rg_left">
    <p>USER REGISTER</p>
  </div>
  <div class="rg_center">
    <div class="rg_form">
      <form action="controller?command=registerMain" method="post">
        <table>
          <tr><!--label 标签的作用是当点击文字也会跳到文本输出框-->
            <!--for属性与ID属性对应规定 label 绑定到哪个表单元素。-->
            <td class="td_left"><label for="username">username</label> </td>
            <td class="td_right"><input type="text" name="username" id="username"> </td>
          </tr>
          <tr>
            <td class="td_left"><label for="account">account</label> </td>
            <td class="td_right"><input type="text" name="account" id="account"> </td>
          </tr>
          <tr>
            <td class="td_left"><label for="password">password</label> </td>
            <td class="td_right"><input type="password" name="password" id="password"> </td>
          </tr>
          <tr>
            <td class="td_left"><label for="idNumber">idNumber</label> </td>
            <td class="td_right"><input type="text" name="idNumber" id="idNumber"> </td>
          </tr>
          <tr>
            <td class="td_left">gender</td>
            <td class="td_right">
              <input type="radio" name="gender" value="male">male
              <input type="radio" name="gender" value="female">female
            </td>
          </tr>
          <tr>
            <td class="td_left"><label for="tel">tel</label> </td>
            <td class="td_right"><input type="text" name="tel" id="tel"> </td>
          </tr>
          <tr>
            <td class="td_left"><label for="address">text</label> </td>
            <td class="td_right"><input type="text" name="address" id="address"> </td>
          </tr>

            <tr>
              <td colspan="2"  style="text-align: center">
                <input type="submit" value="register" id="btn_sub">
              </td>
            </tr>



        </table>
      </form>
    </div>
  </div>
  <div class="rg_right">
    <p>Have account?<a href="controller?command=login">Login</a></p>
  </div>
</div>
</body>
</html>
