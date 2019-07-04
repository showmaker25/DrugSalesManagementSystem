<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
  <%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注销操作</title>
</head>
<body>
    <center>
<h1>请再次确认您的身份证号，注销之后必须重新注册！ <h1/>
	</center>
	<form action="UserdeletServlet" method="post">
	<table border="1" align="center">
		<tr>
			<td>身份证号</td><td><input type="text" name="id" value=""><input type="submit" value="提交"/></td>
		</tr>
		

	</table>
	</form>
	<form action="userinfor.jsp" method="post">
	<center> 
	<br>  <input type="submit" value="返回"/> </br>
 </center>
 </form>
</body>
</html>