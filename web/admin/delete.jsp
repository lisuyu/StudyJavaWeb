<%@ page import="test.usermanager.dao.IUserDao" %>
<%@ page import="test.usermanager.dao.DAOFactory" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/3 0003
  Time: 17:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    IUserDao userDao = DAOFactory.getUserDao();
    System.out.println(id);
    userDao.delete(id);
    response.sendRedirect("list.jsp");
%>