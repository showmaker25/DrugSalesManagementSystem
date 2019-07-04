<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
  <%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<link type ="text/css" href="style4.css" rel="stylesheet"  />
<title>爱健康————————速效救心丸</title>
</head>
<body>
<h2>药品详情</h2>
<img src="images1/suxiao.png" alt="Smiley face" width="500" height="350">
<p>名称：速效救心丸 40mg*60丸*2瓶<br>价格：32.00元<br>保质期：2年<br>
	适用人群:适宜老年人<br>	剂量:	含服，一次4-6丸，一日3次；急性发作时，一次10-15丸
<br>	功能：行气活血，祛瘀止痛，增加冠脉血流量，缓解心绞痛。用于气滞血瘀型冠心病，心绞痛。
<br>注意事项:<br>	
&nbsp;
1、孕妇禁用。<br>
&nbsp;
2、寒凝血瘀、阴虚血瘀胸痹心痛不宜单用。<br>
&nbsp;
3、有过敏史者慎用、伴有中重度心力衰竭的心肌缺血者慎用。<br>
&nbsp;
4、在治疗期间，心绞痛持续发作，宜加用硝酸酯类药。</p>
<button type="button" onclick="alert('加入成功！')"><a href="file:///C:/Users/Di/Desktop/new%201.html">加入购物车</a></button>
<form action="userinfor.jsp" method="post">
<button ><a href="userinfor.jsp">返回上一页·</a></button>
</form>
</body>
</html>
