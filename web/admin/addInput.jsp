<%@ page import="test.usermanager.util.ValidateUtil" %><%--
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
<jsp:include page="../inc/user_manager_top.jsp"></jsp:include>
<form action="add.jsp" method="post">
    <table align="center" width="400" border="1">
        <tr>
            <td>用户名</td><td><input type="text" name="username" value="<%=request.getParameter("username")%>">
            <%=ValidateUtil.showError(request,"username")%></td>
        </tr>
        <tr>
            <td>密码</td><td><input type="password" name="password" value="<%=request.getParameter("password")%>">
            <%=ValidateUtil.showError(request,"password")%></td>
        </tr>
        <tr>
            <td>昵称</td><td><input type="text" name="nickname" value="<%=request.getParameter("nickname")%>">
            <%=ValidateUtil.showError(request,"nickname")%></td>
        </tr>
        <tr><td colspan="2" align="center"><input type="submit" value="提交"></td></tr>
    </table>
</form>
</body>
</html>
