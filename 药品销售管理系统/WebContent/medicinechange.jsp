<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
  <%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type ="text/css" href="style5.css" rel="stylesheet"  />
<title>付款单</title>

<script type="text/javascript" src="js3/jquery.min.js"></script>

<style>
.cfs { width: 30%; }
.cfs a { cursor: pointer; }
#cxsdd{text-align:center;}
#cxsdd td{ height:35px;}
#xianss{ height:40px; line-height:40px;}
#in_num, #sp_num{ color:red; font-weight:bold;font-size:20px; padding:0 5px;}
.lskdo{ width:40px; text-align:center; }
</style>
</head>

<body>

<div style="width:800px;margin:0 auto;">


	<table id="cxsdd" width="100%" border="1" cellpadding="0" cellspacing="0">
		<tr>
			<td>序号</td>
			<td>药品</td>
			<td><input id="allc" type="checkbox"  />
			全选</td>
			<td class="cfs">数量</td>
		</tr>
		<tr>
			<td>1.</td>
			<td>妇科千金片</td>
			<td><input class="choo" type="checkbox" value="choose"  />
			选择</td>
			<td class="cfs"><a class="jian">-</a>
			<input class="lskdo" disabled="disabled" type="text" value="100" />
			<a class="jia">+</a></td>
		</tr>
		<tr>
			<td>2.</td>
			<td>感冒灵颗粒</td>
			<td><input class="choo" type="checkbox" value="choose"  />
			选择</td>
			<td class="cfs"><a class="jian">-</a>
			<input class="lskdo" disabled="disabled" type="text" value="100" />
			<a class="jia">+</a></td>
		</tr>
		<tr>
			<td>3.</td>
			<td>健胃消食片</td>
			<td><input class="choo" type="checkbox" value="choose"  />
			选择</td>
			<td class="cfs"><a class="jian">-</a>
			<input class="lskdo" disabled="disabled" type="text" value="100" />
			<a class="jia">+</a></td>
		</tr>
		<tr>
			<td>4.</td>
			<td>排毒养颜胶囊</td>
			<td><input class="choo" type="checkbox" value="choose"  />
			选择</td>
			<td class="cfs"><a class="jian">-</a>
			<input class="lskdo" disabled="disabled" type="text" value="100" />
			<a class="jia">+</a></td>
		</tr>
		<tr>
			<td>5.</td>
			<td>板蓝根颗粒</td>
			<td><input class="choo" type="checkbox" value="choose"  />
			选择</td>
			<td class="cfs"><a class="jian">-</a>
			<input class="lskdo" disabled="disabled" type="text" value="100" />
			<a class="jia">+</a></td>
		</tr>
		
		<tr>
			<td>6.</td>
			<td>阿莫西林胶囊</td>
			<td><input class="choo" type="checkbox" value="choose"  />
			选择</td>
			<td class="cfs"><a class="jian">-</a>
			<input class="lskdo" disabled="disabled" type="text" value="50" />
			<a class="jia">+</a></td>
		</tr></tr>
		<tr>
			<td>7.</td>
			<td>小儿止咳糖浆</td>
			<td><input class="choo" type="checkbox" value="choose"  />
			选择</td>
			<td class="cfs"><a class="jian">-</a>
			<input class="lskdo" disabled="disabled" type="text" value="50" />
			<a class="jia">+</a></td>
		</tr></tr>
		<tr>
			<td>8.</td>
			<td>云南白药</td>
			<td><input class="choo" type="checkbox" value="choose"  />
			选择</td>
			<td class="cfs"><a class="jian">-</a>
			<input class="lskdo" disabled="disabled" type="text" value="45" />
			<a class="jia">+</a></td>
		</tr></tr>
		<tr>
			<td>9.</td>
			<td>葡萄糖酸锌</td>
			<td><input class="choo" type="checkbox" value="choose"  />
			选择</td>
			<td class="cfs"><a class="jian">-</a>
			<input class="lskdo" disabled="disabled" type="text" value="29" />
			<a class="jia">+</a></td>
		</tr></tr>
		<tr>
			<td>10.</td>
			<td>大山楂丸</td>
			<td><input class="choo" type="checkbox" value="choose"  />
			选择</td>
			<td class="cfs"><a class="jian">-</a>
			<input class="lskdo" disabled="disabled" type="text" value="156" />
			<a class="jia">+</a></td>
		</tr>
		<tr>
			<td>11.</td>
			<td>速效救心丸</td>
			<td><input class="choo" type="checkbox" value="choose"  />
			选择</td>
			<td class="cfs"><a class="jian">-</a>
			<input class="lskdo" disabled="disabled" type="text" value="278" />
			<a class="jia">+</a></td>
		</tr>
		<tr>
			<td>12.</td>
			<td>血脂康胶囊</td>
			<td><input class="choo" type="checkbox" value="choose"  />
			选择</td>
			<td class="cfs"><a class="jian">-</a>
			<input class="lskdo" disabled="disabled" type="text" value="120"/>
			<a class="jia">+</a></td>
		</tr>
		<tr>
			<td>13.</td>
			<td>阿胶神口服液</td>
			<td><input class="choo" type="checkbox" value="choose"  />
			选择</td>
			<td class="cfs"><a class="jian">-</a>
			<input class="lskdo" disabled="disabled" type="text" value="200" />
			<a class="jia">+</a></td>
		</tr>
		<tr>
			<td>14.</td>
			<td>牛黄解毒丸</td>
			<td><input class="choo" type="checkbox" value="choose"  />
			选择</td>
			<td class="cfs"><a class="jian">-</a>
			<input class="lskdo" disabled="disabled" type="text" value="146" />
			<a class="jia">+</a></td>
		</tr>
	</table>
	
</div>
<form id="form1" action="MedicineaddServlet" method="post">
	<input type="text" name="id" width="0"  placeholder="序号"></input>
	<input type="text" name="name"  placeholder="药品名"></input>
	<input type="text" name="number" placeholder="数量"></input>
	<input type="submit" value="添加"/>
	</form>
	<form  id="form2" action="MedicinedeleServlet" method="post">
	<input type="text" name="id" width="0"  placeholder="要删除的序号"></input>
	<input type="submit" value="删除"/>
	</form>
<script type="text/javascript">
$("#allc").change(function(){
	var innum=$(".choo").length;
	if($(this).prop("checked")){
		$(".choo").prop("checked",true);
		$("#in_num").text(innum);
		$(".lskdo").val(100);
		$("#sp_num").text(innum);
		$(".lskdo").prop("disabled",false);
	}
	else{
		$(".choo").prop("checked",false);
		$("#in_num").text(0);
		$(".lskdo").val(0);
		$("#sp_num").text(0);
		$(".lskdo").prop("disabled",true);
		}
	})
$(".choo").change(function(){
	var lskd=$(".choo:checked").length;
	$("#in_num").text(lskd);
	var lsoe=$(this).parent().parent().find(".lskdo");
	if($(this).prop("checked")){
		lsoe.prop("disabled",false);
		lsoe.val(1);
		$("#sp_num").text(parseInt($("#sp_num").text())+parseInt(lsoe.val()));
		//alert();
		}else{
			lsoe.prop("disabled",true);
			$("#sp_num").text(parseInt($("#sp_num").text())-parseInt(lsoe.val()));
			lsoe.val(0);
			}
	})

//$(".jian").each(function(){
    $(".jian").click(function(){
		var lskdpd=$(this).parent().parent().find(".choo");
		var lsoek=$(this).parent().find(".lskdo");
		//alert(lsoek.val()>1);
		if(lskdpd.prop("checked")&&lsoek.val()>1){
			//alert("ccc");
			var lskoe=parseInt(lsoek.val());
			var eiow=parseInt($("#sp_num").text());
			//alert(eiow);
			lsoek.val(lskoe-1);
			$("#sp_num").text(eiow-1);
			}else{}
		})
//	})
//$(".jia").each(function(){
    $(".jia").click(function(iiii){
		var lskdpd=$(this).parent().parent().find(".choo");
		var lsoek=$(this).parent().find(".lskdo");
		//alert(lsoek.val()>1);
		if(lskdpd.prop("checked")){
			//alert("ccc");
			var lskoe=parseInt(lsoek.val());
			var eiow=parseInt($("#sp_num").text());
			lsoek.val(lskoe+5);
			$("#sp_num").text(eiow+5);
			//return $("#sp_num").text();
			}else{}
		})
//	})
$(".lskdo").on('input propertychange',function(){
	          var deox=$(this).val();
			  if(isNaN(deox)){
				  alert("您好,请输入您想购买的数量!");
				  $(this).val(1);
				  }
	          var loel=0;
			  for(i=0;i<$(".lskdo").length;i++){
			  //alert($(".lskdo").eq(i).val());
			  loel=parseInt(loel)+parseInt($(".lskdo").eq(i).val());
			  }
			  //alert(loel);
			  $("#sp_num").text(loel);
			})
</script>

<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
</div>
</body>
</html>