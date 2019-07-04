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
<title>爱健康————————血脂康胶囊</title>
</head>
<body>
<h2>药品详情</h2>
<img src="images1/xuezhikang.png" alt="Smiley face" width="500" height="350">
<p>名称：血脂康胶囊 0.3g*24粒<br>价格：31.50元<br>保质期：2年<br>
	适用人群:中老年人<br>	剂量:口服，一次2粒，一日2次，早晚饭后用服；轻、中度患者一日2粒，晚饭后服用或遵医嘱。
<br>	功能：除湿祛痰，活血化瘀，健脾消食。用于脾虚痰瘀阻滞症的气短、乏力、头晕、头痛、胸闷、腹胀、食少纳呆等；也可用于由高脂血症及动脉粥样硬化引起的心脑血管疾病的辅助治疗。
<br>注意事项:<br>	
&nbsp;
1、用药期间应定期检查血脂、血清氨基转移酶和肌酸磷酸激酶；有肝病史者服用本品尤其要注意肝功能的监测。<br>
&nbsp;
2、在本品治疗过程中，如发生血清氨基转移酶增高达正常高限3倍，或血清肌酸磷酸激酶显著增高时，应停用本品。<br>
&nbsp;
3、不推荐孕妇及乳母使用。<br>
&nbsp;
4、儿童用药的安全性和有效性尚未确定。</p>
<button type="button" onclick="alert('加入成功！')"><a href="file:///C:/Users/Di/Desktop/new%201.html">加入购物车</a></button>
<form action="userinfor.jsp" method="post">
<button ><a href="userinfor.jsp">返回上一页·</a></button>
</form>

</body>
</html>


