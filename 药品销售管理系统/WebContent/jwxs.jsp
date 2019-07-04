<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
  <%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html"  charset="UTF-8">
<link type ="text/css" href="style4.css" rel="stylesheet"  />
<title>爱健康————————健胃消食片</title>
</head>
<body>
<h2>药品详情</h2>
<img src="images1/jianwei.png" alt="Smiley face" width="500" height="350">
<p>名称：健胃消食片 <br>价格：9.8元<br>保质期：2年<br>
	适用人群:适用于各种人群<br>	剂量:口服，可以嚼服。成人一次3片，一日3次，小儿酌减。
<br>	功能：健胃消食。用于脾胃虚弱所致的食积，症见不思饮食，嗳腐酸臭、脘腹胀满，消化不良见上述症候者。
<br>注意事项:<br>	
&nbsp;
</p>

<button type="button" onclick="alert('加入成功！')"><a href="file:///C:/Users/Di/Desktop/new%201.html">加入购物车</a></button>
<form action="userinfor.jsp" method="post">
<button ><a href="userinfor.jsp">返回上一页·</a></button>
</form>
</body>
</html>


