<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
  <%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户信息界面</title>
</head>
<body >
    <center>
	<h1>用户信息界面</h1>
	<form action="userinfor.jsp" method="post">
		<tr>
			<h3>身份证号：<input type="text" name="id" value="${us.id}"></h3>
		</tr>
		<br></br>
		<tr>
			<h3>用 户 名：<input type="text" name="username" value="${us.username}"/></h3>
		</tr>
		<br></br>
		<tr>
			 <h3>用户姓名：<input type="text" name="name" value="${us.name}"/></h3>
		</tr>
		<br></br>
		<tr>
			 <h3>用户性别：<input type="text" name="sex" value="${us.sex}"/></h3>
		</tr>
		<br></br>
		<tr>
			<h3>出生日期：<input type="text" name="birth" value="${us.birth}"/></h3>
		</tr>
		<br></br>
		<tr>
			<h3>联系方式：<input type="text" name="tele" value="${us.tele}"/></h3>
		</tr>
		<br></br>	
		<tr>
				<input type="submit" value="返回"/>			
		</tr>
	</form>
	</center>
</body>
</html>