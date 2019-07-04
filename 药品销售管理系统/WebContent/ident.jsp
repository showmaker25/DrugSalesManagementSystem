<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
  <%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;" charset="UTF-8">
<title>修改界面</title>
</head>
<body>
    <center>
	<h1>再次确认您的密码</h1>
	</center>
	<form action="UserinformationServlet" method="post">
	<td>密码：</td>
			<td>
	<input type="password" name="password" value=""/>
			</td>
	<tr><input type="submit" value="提交"/></tr>
	</form>
</body>
</html>

