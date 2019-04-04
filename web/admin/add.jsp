<%@ page import="test.usermanager.dao.DAOFactory" %>
<%@ page import="test.usermanager.dao.IUserDao" %>
<%@ page import="test.usermanager.model.User" %>
<%@ page import="test.usermanager.util.ValidateUtil" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
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
    boolean validate = true;
    validate = ValidateUtil.validateNull(request,new String[]{"username","password","nickname"});
    System.out.println("@@@"+validate);
    if (!validate){
%>
        <jsp:forward page="addInput.jsp"></jsp:forward>
<%
    }
    IUserDao userDao = DAOFactory.getUserDao();
    try {
        userDao.add(user);
        response.sendRedirect("list.jsp");//客户端跳转，避免重复提交，添加
        return;
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
