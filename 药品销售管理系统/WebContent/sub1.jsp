<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
  <%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; "charset="UTF-8" />
<title>基础信息</title>
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
.n_div{ height:59px; padding-left:65px; margin-bottom:10px;}
.n_div p { line-height:60px; }
.p1{ font-size:14px; font-weight:bold; color:#3666a1; padding:15px 0 5px 12px;}
.p2{ font-size:12px; color:#4b4b4b; padding-left:12px; line-height:60px;}

#content a{font-size:12px; color:#4b4b4b; }
#content a:hover{color:#ff6400;}
#content{ padding-top:15px; padding-left:60px;}

.n1{ background:url(img/p1.jpg) no-repeat;}
.n2{ background:url(img/p2.jpg) no-repeat;}
.n3{ background:url(img/p3.jpg) no-repeat;}
.n4{ background:url(img/p4.jpg) no-repeat;}
.n5{ background:url(img/p5.jpg) no-repeat;}
.red{color:#ff0000;}
#line{width:1px; border-left:1px #e8e7f7 dotted; position:absolute; right:224px; top:0px; height:100%; z-index:-10}
*+jsp #line{ right:223px;}
</style>
</head>
<body>
<div id="main">
	<div style="height:70px;"></div>
	<div id="top">
		<table cellpadding="0" cellspacing="0" style="width:100%;">
			<tr>
				<td><div id="t_left"><span class="sp1 sp2">基础信息</span></div></td>
			</tr>
		</table>
	</div>

	<table cellpadding="0" cellspacing="0" style="width:100%;" >
			<tr>
			  <td valign="top">
                  <script  src="contorl.js" language="javascript"  type="text/javascript"></script>
	<div id="content">
						<div class="n_div n1">
							<p class="p2">
							[ <a onclick="display1();">紧急找回</a> ]
							<p>
						</div>
						
						
						<div class="n_div n4">
							<p class="p2">
							[ <a onclick="display2();">仓库</a> ]
							<p>
						</div>	
						
						<div class="n_div n5">
							<p class="p2">
						
							[ <a onclick="display3();">收付方式</a> ]
              [ <a onclick="display4();">公司信息</a> ]
							<p>
						</div>																														
					</div>				
        </td>
			 
			</tr>
	</table>
</div>
</body>
</html>

<script language="javascript" type="text/javascript">
document.oncontextmenu=new Function("event.returnValue=false;");
//document.onselectstart=new Function("event.returnValue=false;");
</script>