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
<title>爱健康————————葡萄糖酸钙口服液</title>
</head>
<body>
<h2>药品详情</h2>
<img src="images1/putao.png" alt="Smiley face" width="500" height="350">
<p>名称：葡萄糖酸钙口服液 <br>价格：19.8元<br>保质期：2年<br>
	适用人群:适用于各种缺钙人群<br>	剂量:口服，一次1-2支，一日3次。
<br>	功能：用于预防和治疗钙缺乏症，如骨质疏松、手足抽搐症、骨发育不全、佝偻病以及儿童、妊娠和哺乳期妇女、绝经期妇女、老年人钙的补充。
<br>注意事项:<br>	
&nbsp;1、心肾功能不全者慎用。

&nbsp;2、对本品过敏者禁用，过敏体质者慎用。</br>
&nbsp;3、本品性状发生改变时禁止使用。</br>
&nbsp;4、请将本品放在儿童不能接触的地方。</br>
&nbsp;5、儿童必须在成人监护下使用。</br>
&nbsp;6、如正在使用其他药品，使用本品前请咨询医师或药师。</br>
&nbsp;7、肾结石患者应在医师指导下使用。</br>
&nbsp;8、.本品为过饱和溶液，遇冷时可能出现白色药物析出，可加温溶解后服用，不影响疗效。如不溶解请勿服用，可与生产企业联系。</br>

</p>
<button type="button" onclick="alert('加入成功！')"><a href="file:///C:/Users/Di/Desktop/new%201.html">加入购物车</a></button>
<form action="userinfor.jsp" method="post">
<button ><a href="userinfor.jsp">返回上一页·</a></button>
</form>
<br><br><br><br>
</body>
</html>