<%@ page import="test.usermanager.model.User" %>
<%@ page import="test.usermanager.dao.IUserDao" %>
<%@ page import="test.usermanager.dao.DAOFactory" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/2 0002
  Time: 17:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    User user = new User();
    user.setUsername(request.getParameter("username"));
    user.setPassword(request.getParameter("password"));
    user.setNickname(request.getParameter("nickname"));
    IUserDao userDao = DAOFactory.getUserDao();
    try {
        userDao.add(user);
    } catch (Exception e) {
%>
<h2 style="color:red">
    <%=e.getMessage()%>
</h2>
<%
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
