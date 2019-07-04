<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
  <%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  %>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<link type ="text/css" href="style4.css" rel="stylesheet"  />
<title>爱健康————————板蓝根颗粒</title>
</head>
<body>
<h2>药品详情</h2>
<img src="images1/banlan.png" alt="Smiley face" width="500" height="350">
<p>名称：板蓝根颗粒 0.25g*20粒<br>价格：12.8元<br>保质期：2年<br>
	适用人群:适用于各种人群<br>	剂量:开水冲服。一次半～1袋（5～10克），一日3～4次。
<br>	功能：清热解毒，凉血利咽。用于肺胃热盛所致的咽喉肿痛：口咽干燥；急性扁桃体炎见上述证候者。
<br>注意事项:&nbsp;</br>1：不宜在服药期间同时服用滋补性中药。</br>
&nbsp;2：糖尿病患者及有高血压：心脏病：肝病：肾病等慢性病严重者应在医师指导下服用。</br>
&nbsp;3：儿童：孕妇：哺乳期妇女：年老体弱：脾虚便溏者应在医师指导下服用。</br>
&nbsp;4：扁桃体有化脓或发热体温超过38.5℃的患者应去医院就诊。</br>
&nbsp;5：服药3天症状无缓解，应去医院就诊。</br>
&nbsp;6：对本品过敏者禁用，过敏体质者慎用。</br>
&nbsp;7：本品性状发生改变时禁止使用。</br>
&nbsp;8：儿童必须在成人监护下使用。</br>
&nbsp;9：请将本品放在儿童不能接触的地方。</br>
&nbsp;10：如正在使用其他药品，使用本品前请咨询医师或药师。</br>	
</p>
<button type="button" onclick="alert('加入成功！')"><a href="file:///C:/Users/Di/Desktop/new%201.html">加入购物车</a></button>
<form action="userinfor.jsp" method="post">
<button ><a href="userinfor.jsp">返回上一页·</a></button>
</form>
</body>
</html>


