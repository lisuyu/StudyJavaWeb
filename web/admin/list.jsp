<%@ page import="test.usermanager.dao.DAOFactory" %>
<%@ page import="test.usermanager.dao.IUserDao" %>
<%@ page import="test.usermanager.model.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/2 0002
  Time: 17:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户列表</title>
</head>
<body>
<%
    IUserDao userDao = DAOFactory.getUserDao();
    List<User> list = new ArrayList<User>();
    list = userDao.list();
%>
<jsp:include page="../inc/user_manager_top.jsp"></jsp:include>
<table align="center" border="1">
    <tr><td>编号</td><td>用户名</td><td>密码</td><td>昵称</td><td>操作</td></tr>
    <%
        for (User user:list){
    %>
    <tr>
        <td><%=user.getId()%></td>
        <td><%=user.getUsername()%></td>
        <td><%=user.getPassword()%></td>
        <td><%=user.getNickname()%></td>
        <td><a href="">删除</a>&nbsp;<a href="">更新</a></td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
