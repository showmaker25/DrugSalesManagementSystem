<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
  <%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;" charset="UTF-8" />
<title>库存管理</title>
<style type="text/css">
*{ padding:0; margin:0;font-family:Verdana;}
ul li{list-style:none;}
body{ height:100%; background:url(img/sub_bg.jpg) left bottom repeat-x; padding-left:191px; }
#top{ background:url(img/sub_top_bg.jpg) repeat-x; height:31px; }
#t_left{ background:url(img/sub_top_left.jpg) left top no-repeat; height:31px;}
.sp1{ font-size:12px; font-weight:bold; color:#2958b4;}
.sp2{ line-height:31px; padding-left:15px;}
.tb1{ margin-left:10px; margin-top:15px;}

#news a{ font-size:12px; color:#000;}
#news a:hover{color:#ff6400;}
#news a:link{text-decoration: none;}
#news li{ background:url(img/icon.png) no-repeat 4px center; padding-left:25px; line-height:150%;}

#content a{font-size:12px; color:#000; text-decoration:none; display:block; width:63px; padding-top:60px; padding-bottom:1px;}
#content a:hover{color:#ff6400; text-decoration:underline;}
#content{ padding-top:20px; margin-left:auto; margin-right:auto;}

#tb2{ margin: 0 auto;}
#tb2 td{ text-align:center;}

.red{color:#ff0000;}
#line{width:1px; border-left:1px #e8e7f7 dotted; position:absolute; right:224px; top:0px; height:100%; z-index:-10}
*+html #line{ right:223px;}
</style>
</head>
<body>
<div id="main">
	<div style="height:70px;"></div>
	<div id="top">
		<table cellpadding="0" cellspacing="0" style="width:100%;">
			<tr>
				<td><div id="t_left"><span class="sp1 sp2">库存管理</span></div></td>
				
			</tr>
		</table>
	</div>
	
	<table cellpadding="0" cellspacing="0" style="width:100%;">
			<tr>
				<td valign="top" style="text-align:center;">

				
		<div id="content">
<table width="570" border="0" cellspacing="0" cellpadding="0" id="tb2">
  
    <script  src="contorl.js" language="javascript"  type="text/javascript"></script>
  <tr>
    <td height="88" style="background:url(img/bill.jpg) no-repeat"><a onclick="display2();">库存盘点</a></td>
    <td width="180" height="88"></td>
  
    </tr>
</table>
<div id="line"></div>
</body>
</html>
<script language="JavaScript">
document.oncontextmenu=new Function("event.returnValue=false;");
document.onselectstart=new Function("event.returnValue=false;");
</script>