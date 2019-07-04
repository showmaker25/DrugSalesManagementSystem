<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
  <%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>我们的药店</title>
</head>

<body bgcolor="CCFFCC">
	<form action="userinfor.jsp" method="post">
 <center> 

<h1>爱健康药店地址</h1>
<div stytle="color:red">兰州理工大学西校区计算机与通信学院软件工程二班</div>
 <br>  <input type="submit" value="è¿å"  style="background='CCFFCC';"/> </br>
 </center>
 </form>
</body>
</html>