<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
  <%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>我们的药店</title>
</head>
<body>
<h1>查询用户界面 </h1>
<body bgcolor="FFCCCC">
<form action="MangesearchServlet" method="post">
<h>请输入用户id进行密码查询</h>
<input type="text"name="id" value="">

<button>确认</button>
</form>
<h>查询到用户密码</h>
<input type="text"name="password" value="${User.password}">
<a href="Adminindex.jsp">返回</a>


</body>
<ml>
