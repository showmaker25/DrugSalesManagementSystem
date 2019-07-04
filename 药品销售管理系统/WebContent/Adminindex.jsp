<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
  <%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; "charset="UTF-8" />
<title>欢迎来到爱健康购药平台</title>
<style type="text/css">
*{ padding:0; margin:0;}
ul li{ list-style:none;}
#top{ height:70px; background:url(img/top_bg.jpg) repeat-x;}
#logo{ float:left; width:353px; height:70px; background:url(img/logo_standardd.jpg) no-repeat;}

#nav{
	float:right;
	width:400px;
	height:70px;
}
#nav ul{
	padding-top:42px;
	margin: 0px;
}
#nav li{
	display:inline;
	height: 28px;
	width: 74px;
	text-align: center;
	margin-right: 2px;
}
#nav a{
	color:#fff;
	text-decoration:none;
	font-size:12px;
	font-weight: bold;
	background-image: url(img/navbg_on.jpg);
	background-repeat: no-repeat;
	display: block;
	height: 28px;
	width: 74px;
	padding-top:9px;
}
#nav a:hover{
	background-image: url(img/navbg_over.jpg);
	background-repeat: no-repeat;
	height: 28px;
	width: 74px;
	color: #036;
}
#left{ width:191px; background:url(img/left_bg.jpg) repeat-y; height:100%; position:absolute; left:0; top:0; z-index:-999;}
#title{
	width:191px;
	height:34px;
	background-color: #4A7AB8;
	background-image: url(img/left_title.jpg);
	background-repeat: no-repeat;
}
#itme a{ display:block; width:167px; height:40px; color:#fff; font-weight:bold; font-size:14px; text-decoration:none; cursor: pointer;}
#itme ul{ margin-left:11px; margin-top:10px;}
#itme li{ padding-bottom:6px;}
#itme{ width:200px; position:absolute;}
.li1{ background:url(img/item1.jpg) no-repeat;}
.li2{ background:url(img/item2.jpg) no-repeat;}
.li3{ background:url(img/item3.jpg) no-repeat;}
.li4{ background:url(img/item4.jpg) no-repeat;}
.li5{ background:url(img/item5.jpg) no-repeat;}
.li6{ background:url(img/item6.jpg) no-repeat;}
.li7{ background:url(img/item7.jpg) no-repeat;}
.li1_{ background:url(img/item1_1.jpg) no-repeat;}
.li2_{ background:url(img/item2_2.jpg) no-repeat;}
.li3_{ background:url(img/item3_3.jpg) no-repeat;}
.li4_{ background:url(img/item4_4.jpg) no-repeat;}
.li6_{ background:url(img/item6_6.jpg) no-repeat;}
.li7_{ background:url(img/item7_7.jpg) no-repeat;}
#itme span{ padding-left:75px; line-height:40px;}
#right{ position:absolute; left:0px; top:0px; height:100%; width:100%; z-index:-1000;}
</style>
</head>
<body scroll=yes>
<div id="top">
	<div id="logo"></div>
    <div id="top_right"></div>
</div>
<div id="left"></div>
<div id="itme">
	<div id="title"></div>
	<ul>
		<li id="li2" class="li2_" $menu2$><a onClick="ob('2');"><span>进货管理</span></a></li>
		<li id="li3" class="li3" $menu3$><a onClick="ob('3');"><span>销售管理</span></a></li>
		<li id="li4" class="li4" $menu4$><a onClick="ob('4');"><span>库存管理</span></a></li>
		<li id="li1" class="li1" $menu1$><a onClick="ob('1');"><span>基础信息</span></a></li>
	</ul>
</div>
<div id="right">
	<iframe id="subiframe" name="subiframe" scrolling="no" frameborder="0" src="sub2.jsp" width="100%" height="100%"></iframe> 
</div>
</body>
<script language="javascript" type="text/javascript">
function ob(id)
{for(var a=1;a<=4;a++)
{var obj=document.getElementById("li"+a);if(a==id){obj.className="li"+a+"_";}
else{obj.className="li"+a;}}document.getElementById("subiframe").src="sub"+id+".jsp";}
document.oncontextmenu=new Function("event.returnValue=false;");
document.onselectstart=new Function("event.returnValue=false;");
</script>