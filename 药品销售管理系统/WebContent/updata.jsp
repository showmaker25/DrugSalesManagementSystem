<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
  <%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改界面</title>
</head>
<body>
<center>
    <center>
	<h1>修改密码</h1>
	</center>
	<form action="UserupdateServlet" method="post">
	<td>用户名：</td>
			<td>
	<input type="text" name="username" value=""/>
			</td>
	<td>密码：</td>
			<td>
	<input type="password" name="password" value=""/>
			</td>
	<tr><input type="submit" value="确认修改"/> </tr>
	<br></br>
         <br> <input type="submit" value="返回"/> </br>
	
	</center>
	</form>
</body>
</html>
                                         