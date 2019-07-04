<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
  <%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  %>
<!doctype html>
<html lang="en" class="no-js">
<head lang="en">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>爱健康  购买中心</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="http://libs.useso.com/js/font-awesome/4.2.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/style1.css">
 <style type="text/css">
            * {
                margin: 0px;
                padding: 0px;
            }
            #nav {
                width: 500px;
                background-color: #737373;
                height: 40px;
                /*border-radius: 10px;*/
                position: relative;
                margin: 0px auto;
                top: 0px;
            }
            
            .nav-container {
                width: 100%;
                height: 40px;
                position: absolute;
            }
            
            .banner {
                float: left;
                text-align: center;
                height: 40px;
                width: 20%;
                line-height: 40px;
            }
            
            .banner:hover {
                background-color: #00BFFF;
                cursor: pointer;
            }
            
            div ul {
                list-style: none;
                /*display: none;*/
                background-color: blue;
                overflow: hidden;
                /*模拟height:auto时候的情况*/                
                max-height: 0px;
                transition: max-height 0.3s;
                /*多浏览器支持*/
                -moz-transition: height 1s;
                -webkit-transition: height 1s;
                -o-transition: height 1s;
            }
            
            .banner:hover ul {
                /*display: block;*/
                width: 100%;
                max-height: 160px;
            }
            
            div ul li {
                overflow: hidden;
            }
            
            div ul li:hover {
                background-color: red;
            }
			#box{        width: 380px;        margin: 30px auto;        font-family: 'Microsoft YaHei';        font-size: 14px;    }    input{        width: 260px;        border: 1px solid #e2e2e2;        height: 30px;        float: left;        background-image: url(images/search.jpg);        background-repeat: no-repeat;        background-size: 25px;        background-position:5px center;        padding:0 0 0 40px;    }    #search{        width: 78px;        height: 32px;        float: right;        background: black;        color: white;        text-align: center;        line-height: 32px;        cursor: pointer;    }
        </style>
</head>
<body>
        <div class="nav-container">
            <div id="nav">
                <script  src="operate.js" language="javascript"  type="text/javascript"></script>
                <div id="nav-button-1" class="banner">处方药
                    <ul>
                        <li onclick="ptt();">葡萄糖酸锌胶囊   </li>
                        <li  onclick="sxjx();">速效救心丸</li>
                        <li onclick="xzk();">血脂康胶囊</li>
                     
                    </ul>
                </div>
                <div id="nav-button-2" class="banner">非处方药
                    <ul>
                        <li onclick="jwxs();">健胃消食片</li>
                        <li onclick="blg();">板蓝根颗粒</li>
                        <li onclick="amxl();">阿莫西林胶囊</li>
                    </ul>
                </div>
                <div id="nav-button-3" class="banner">公司详情
                    <ul>
                        <li onclick="intorduce();">公司咨询</li>
                        <li onclick="infor();" >公司地址</li>
                    </ul>
                </div>
                <div id="nav-button-4" class="banner">请求帮助
                    <ul>
                        <li onclick="kefu();">联系客服</li>
                        <li onclick="tele();">拨打电话</li>
                    </ul>
                </div>
                <div id="nav-button-5" class="banner">账号操作
                    <ul> 
                        <li onclick="update();">修改密码</li>
                        <li  onclick="dosubmit();">注销账户</li>
                        <li  onclick="tc();">退出登录</li>
                    </ul>
                </div>
            </div>
			 <div id="box">
			 <form  action="MedicinesearchServlet" method="post">
			  <input type="text" name="name" placeholder="请输入药品全名">
			   <div id="search">
			   <input type="submit" name="搜索" >
			   </div>   
			  </form>
			      </div>
        </div>
	<h2 >爱健康</h2>
<div class="ct-pageWrapper">
  <main>
	<div class="container">
	  <div class="row">
		<div class="col-md-3">
		  <div class="widget">
			<h2 class="widget-header">购物车</h2><br>
				<div class="ct-cart"></div>
			<br>
			<br>
			<br>
			<br>
			<br>  <input onclick="calcumax();display();"  type="submit" value="提交"/> </br>
				<script  src="yanzheng.js" language="javascript"  type="text/javascript"></script> 
<a onclick="ident();"><h2 class="widget-header">个人信息</h2></a>	
		  </div>
		</div>
	<script  src="calcu.js" language="javascript"  type="text/javascript"></script>  
		<div class="col-md-9">
		  <div class="row">
			<div class="col-sm-4">
			  <div class="ct-product">
				<div  class="image"><img src="images/product-01.png" alt=""></div>
				<div  onclick="calcu1();" class="inner"  ><a   href="#" class="btn btn-motive ct-product-button"><i class="fa fa-shopping-cart"></i></a>
				  <h2   class="ct-product-title">速效救心丸</h2>
				  <p class="ct-product-description" >合理用药，早日康复</p><span class="ct-product-price">$19.99</span>
				</div>
			  </div>
			</div>
			<div class="col-sm-4">
			  <div class="ct-product">
				<div class="image"><img src="images/product-02.png" alt=""></div>
				<div class="inner" onclick="calcu2();"><a href="#" class="btn btn-motive ct-product-button"><i class="fa fa-shopping-cart"></i></a>
				  <h2 class="ct-product-title">感冒灵胶囊</h2>
				  <p class="ct-product-description">合理用药，早日康复</p><span class="ct-product-price">$34.99</span>
				</div>
			  </div>
			</div>
			<div class="col-sm-4">
			  <div class="ct-product">
				<div class="image"><img src="images/product-03.png" alt=""></div>
				<div class="inner" onclick="calcu3();"><a href="#" class="btn btn-motive ct-product-button"><i class="fa fa-shopping-cart"></i></a>
				  <h2 class="ct-product-title">健胃消食片</h2>
				  <p class="ct-product-description">合理用药，早日康复</p><span class="ct-product-price">$59.99</span>
				</div>
			  </div>
			</div>
			<div class="col-sm-4">
			  <div class="ct-product">
				<div class="image"><img src="images/product-04.png" alt=""></div>
				<div class="inner" onclick="calcu4();"><a href="#" class="btn btn-motive ct-product-button  onclick='calcumax();" ><i class="fa fa-shopping-cart"></i></a>
				  <h2 class="ct-product-title">排毒养颜胶囊</h2>
				  <p class="ct-product-description">合理用药，早日康复</p><span class="ct-product-price">$9.99</span>
				</div>
			  </div>
			</div>
			<div class="col-sm-4">
			  <div class="ct-product">
				<div class="image"><img src="images/product-05.png" alt=""></div>
				<div class="inner" onclick="calcu5();"><a href="111.html" class="btn btn-motive ct-product-button"><i class="fa fa-shopping-cart"></i></a>
				  <h2 class="ct-product-title">妇科千金片</h2>
				  <p class="ct-product-description">合理用药，早日康复</p><span class="ct-product-price">$3.99</span>
				</div>
			  </div>
			</div>
			<div class="col-sm-4">
			  <div class="ct-product">
				<div class="image"><img src="images/product-06.png" alt=""></div>
				<div class="inner" onclick="calcu6();"><a href="#" class="btn btn-motive ct-product-button"><i class="fa fa-shopping-cart"></i></a>
				  <h2 class="ct-product-title">阿莫西林胶囊</h2>
				  <p class="ct-product-description">合理用药，早日康复</p><span class="ct-product-price">$13.99</span>
				</div>
			  </div>
			</div>
		  </div>
		</div>
	  </div>
	</div>
  </main>
<script src="js/jquery-1.11.3.min.js"></script>
<script src="js/shop.min.js"></script>
<script>
$('body').ctshop({
  currency: '$',
  paypal: {
	currency_code: 'EUR'
  }
});
</script>
</div>
</body>
</html>