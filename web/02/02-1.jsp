<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/1 0001
  Time: 17:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="../01/03.jsp">访问03页面的相对路径</a>
<img src="../img/ycy.jpg"/>
<br>
<a href="/WebTest_war_exploded/01/03.jsp">访问03的绝对路劲</a>
<img src = "../img/ycy.jpg"/>
<br>
<a href="<%=request.getContextPath()%>/01/03.jsp">使用request.getContextPath访问03</a>
</body>
</html>
