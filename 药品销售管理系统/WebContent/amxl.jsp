<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
  <%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html " charset="UTF-8">
<link type ="text/css" href="style4.css" rel="stylesheet"  />
<title>爱健康————————阿莫西林胶囊</title>
</head>
<body>
<h2>药品详情</h2>
<img src="images1/amo.png" alt="Smiley face" width="500" height="350">
<p>名称：阿莫西林胶囊 0.25g*20粒<br>价格：7.00元<br>保质期：2年<br>
	适用人群:适宜各种人群<br>	剂量:口服，<br>
&nbsp;&nbsp;&nbsp;1.成年人一次0.5g，每6～8小时1次，一日剂量不超过4g。<br>
&nbsp;&nbsp;&nbsp;2.小儿一日剂量按体重20～40mg/Kg，每8小时1次；3个月以下婴儿一日剂量按体重30mg/Kg，每12小时1次。
<br>	功能：适用于敏感菌所致的感染溶血链球菌、肺炎链球菌、大肠埃希菌、奇异变形杆菌或粪肠球菌所致的泌尿生殖道感染。
<br>注意事项:<br>	
1.青霉素类口服药物偶可引起过敏性休克，尤多见于有青霉素或头孢菌素过敏史的患者。用药前必须详细询问药物过敏史并作青霉素皮肤试验。如发生过敏性休克，应就地抢救，予以保持气道畅通、吸氧及应用肾上腺素、糖皮质激素等治疗措施。<br>
2.传染性单核细胞增多症患者应用本品易发生皮疹，应避免使用。<br>
3.疗程较长患者应检查肝、肾功能和血常规。<br>
4.阿莫西林可导致采用Benedit或Fehling试剂的尿糖试验出现呈假 阳性。<br>
5.下列情况应慎用：<br>
&nbsp;
1.有哮喘、枯草热等过敏性疾病史者。<br>
&nbsp;
2.老年人和肾功能严重损害时可能须调整剂量。</p>
<button type="button" onclick="alert('加入成功！')"><a href="file:///C:/Users/Di/Desktop/new%201.html">加入购物车</a></button>
<form action="userinfor.jsp" method="post">
<button  href="userinfor.jsp"><a href="userinfor.jsp">返回上一页·</a></button>
</form>
</body>
</html>


