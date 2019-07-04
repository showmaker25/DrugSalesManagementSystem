<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
  <%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link type ="text/css" href="style2.css" rel="stylesheet"  />
<title>药品采购表</title>
</head>
<body>
    <center>
	<br>
	<br>
	<br>
	<br><br><br><h1>药品采购</h1>
	
	</center>
	<form action="Adminindex.jsp" method="post">
	<table border="50" bgcolor="white" align="center">
		<tr>
			<td>妇科千金片</td><td><input id="myMed" list="med" />
						<datalist id="med">
					  <option value="0">
					  <option value="100">
 				 	  <option value="500">
				 	  <option value="1000">
						 </datalist>
			</td>

			<td>感冒灵颗粒</td><td><input id="myMed" list="med" />
						<datalist id="med">
					  <option value="0">
					  <option value="100">
 				 	  <option value="500">
				 	  <option value="1000">
						 </datalist>
			</td>
		</tr>
		<tr>
			<td>健胃消食片</td><td><input id="myMed" list="med" />
						<datalist id="med">
					  <option value="0">
					  <option value="100">
 				 	  <option value="500">
				 	  <option value="1000">
						 </datalist>
			</td>

			<td>排毒养颜胶囊</td><td><input id="myMed" list="med" />
						<datalist id="med">
					  <option value="0">
					  <option value="100">
 				 	  <option value="500">
				 	  <option value="1000">
						 </datalist>
			</td>
		<tr>
			<td>板蓝根颗粒</td><td><input id="myMed" list="med" />
						<datalist id="med">
					  <option value="0">
					  <option value="100">
 				 	  <option value="500">
				 	  <option value="1000">
						 </datalist>
			</td>

			<td>阿莫西林胶囊</td><td><input id="myMed" list="med" />
						<datalist id="med">
					  <option value="0">
					  <option value="100">
 				 	  <option value="500">
				 	  <option value="1000">
						 </datalist>
			</td>
			</tr>
<tr>
			<td>小儿止咳糖浆</td><td><input id="myMed" list="med" />
						<datalist id="med">
					  <option value="0">
					  <option value="100">
 				 	  <option value="500">
				 	  <option value="1000">
						 </datalist>
			</td>

			<td>云南白药</td><td><input id="myMed" list="med" />
						<datalist id="med">
					  <option value="0">	
					  <option value="100">
 				 	  <option value="500">
				 	  <option value="1000">
						 </datalist>
			</td>
			</tr>
<tr>
			<td>葡萄糖酸锌</td><td><input id="myMed" list="med" />
						<datalist id="med">
					  <option value="0">
					  <option value="100">
 				 	  <option value="500">
				 	  <option value="1000">
						 </datalist>
			</td>

			<td>大山楂丸</td><td><input id="myMed" list="med" />
						<datalist id="med">
					  <option value="0">
					  <option value="100">
 				 	  <option value="500">
				 	  <option value="1000">
						 </datalist>
			</td>
			</tr>
				<tr>
			<td>速效救心丸</td><td><input id="myMed" list="med" />
						<datalist id="med">
					  <option value="0">
					  <option value="100">
 				 	  <option value="500">
				 	  <option value="1000">
						 </datalist>
			</td>

			<td>血脂康胶囊</td><td><input id="myMed" list="med" />
						<datalist id="med">
					  <option value="0">
					  <option value="100">
 				 	  <option value="500">
				 	  <option value="1000">
						 </datalist>	<tr>
			<td>阿胶神口服液</td><td><input id="myMed" list="med" />
						<datalist id="med">
					  <option value="0">
					  <option value="100">
 				 	  <option value="500">
				 	  <option value="1000">
						 </datalist>
			</td>

			<td>牛黄解毒丸</td><td><input id="myMed" list="med" />
						<datalist id="med">
					  <option value="0">
					  <option value="100">
 				 	  <option value="500">
				 	  <option value="1000">
						 </datalist>
			<tr>
			<td colspan="2">
			<script  src="tiptip.js" language="javascript"  type="text/javascript"></script>
				<input type="reset" value="重选"/></td>
 				<td colspan="2">
				<input type="submit"  onclick="display();" value="提交" />
					
				</td>
			</tr>
			</td>
			</tr>
	</table>
	</form>
</body>
</html>
