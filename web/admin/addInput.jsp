<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/2 0002
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加用户</title>
</head>
<body>
<form action="add.jsp" method="post">
    <table align="center" width="300" border="1">
        <tr>
            <td>用户名</td><td><input type="text" name="username"></td>
        </tr>
        <tr>
            <td>密码</td><td><input type="password" name="password"></td>
        </tr>
        <tr>
            <td>昵称</td><td><input type="text" name="nickname"></td>
        </tr>
        <tr><td colspan="2" align="center"><input type="submit" value="提交"></td></tr>
    </table>
</form>
</body>
</html>
