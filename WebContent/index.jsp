<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>首页-共享南国</title>
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
<script type="text/javascript" src="js/jquery-1.11.0.js" charset="utf-8"></script>
<script type="text/javascript" src="js/bootstrap.min.js" charset="utf-8"></script>
<style>
			body{
				margin: 0px;
			}
			iframe {
				position: fixed;
				bottom: 0;
            	border: 0;
        	}
        	span{
				font-size: 28px;
				
				font-family:楷体;
				font-weight:bold;
				
			}
			a{
				text-decoration:none;
				color: inherit;
			}
        	.zhuyao{
        		width: 375px;
        		height: 1000px;
        	}
        	.dingbu{
        		width: 375px;
        		height: 50px;
        		text-align: center;
        		color: white;
        		padding-top: 5px;
        		font-size: 30px;
        		font-family: "微软雅黑";
        		background-color: gray;
        		position: fixed;
				top: 0;
        		/*font-weight:bold;*/
        	}
        	.lunbotu{
        		width: 375px;
        		height: 280px;
        		padding-top: 50px;
        		/*background-color: bisque;*/
        		margin-left: -20px;
        		
        	}
        	.dingcan{
        		width: 187px;
        		height: 80px;
        		float: left;
        		padding-left:20px;
        		padding-top: 10px;
        		padding-right: 10px;
        		background-color: darkseagreen;
        	}
        	.meirinanguo{
        		width: 187px;
        		height: 80px;
        		float: left;
        		padding-left:20px;
        		padding-top: 10px;
        		padding-right: 10px;
        		background-color: beige;
        	}
        	.jiangchenzhidu{
        		width: 187px;
        		height: 80px;
        		padding-left:20px;
        		padding-top: 10px;
        		padding-right: 10px;
        		float: left;
        		background-color: darkkhaki;
        	}
        	.nanguoshetuan{
        		width: 187px;
        		height: 80px;
        		padding-left:20px;
        		padding-top: 10px;
        		padding-right: 10px;
        		float: left;
        		background-color: #DCDCDC;
        	}
        	#ptm{
        		height: 60px;
        		width: 30px;
        		/*padding-left:20px;
        		/*padding-top: 10px;
        		/*padding-right: 10px;*/
        	}
        	.fenge{
        		width: 375px;
        		height: 10px;
        		background-color: gray;
        		float: left;
        	}
        	.jieshao{
        		width: 375px;
        		height: 1000px;
        		float: left;
        		padding-top: 30px;
        		background-color: #E6E6E6;
        	}
        	.baijiange{
        		width: 375px;
        		height: 10px;
        		float: left;
        	}
        	.msg{
        		width: 375px;
        		height: 240px;
				/*background-color: #255625;  */      		
        	}
        	.msg_1{
        		width: 355px;
        		height: 30px;
				/*background-color: #8A2BE2;*/
				margin-left: 10px;
				margin-right: 10px;
        	}
        	.msg_2{
        		width: 355px;
        		height: 160px;
				/*background-image: url(img/gslwf.jpg);*/
				margin-left: 10px;
				margin-right: 10px;
        	}
        	.msg_3{
        		width: 355px;
        		height: 60px;
				background-color: white;
				margin-left: 10px;
				margin-right: 10px;
				padding-top: 5px;
				font-size: 18px;
        	}
        	.msg_time{
        		width: 160px;
        		height: 20px;
        		background-color: #808080;
        		margin-left: 100px;
        		color: white;
        	}
        	.fengexian{
        		width: 375px;
        		height: 40px;
        	}
        	#biaoti{
        		font-size: 20px;
        	}
        	#zhaiyao{
        		font-size: 14px;
        		color: #666666;
        	}
			
		</style>
</head>
<body>
	<div class="zhuyao">
			<div id="header" class="dingbu">共 享 南 国</div>
			<div class="lunbotu">
				
				<div class="col-xs-12">
					<div class="carousel slide index-carousel" id="myCarousel" data-ride="carousel" data-interval="2000" style="width: 380px;">
						<!-- 三个小圆点 -->
						<ul class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
						</ul>
						<!-- 三张图片 -->
						<div class="carousel-inner">
							<div class="item active">
								<img src="img/fant1.jpg" alt="img1"  />
							</div>
							<div class="item">
								<img src="img/fant2.jpg" alt="img2"  />
							</div>
							<div class="item">
								<img src="img/fant3.jpg" alt="img3"  />
							</div>
						</div>
						<a href="#myCarousel" data-slide="prev" class="carousel-control left"><</a>
					<a href="#myCarousel" data-slide="next" class="carousel-control right">></a>
					</div>
				</div>
				
			</div>
			<div class="fenge"></div>
			<div class="dingcan" onclick="location='userServlet?opr=switchlogin'">
				<img src="img/dingcan.png" id="ptm" align="absmiddle" /><span>美食订餐</span>
			</div>
			<div class="meirinanguo" onclick="location='disclose.jsp'">
				<img src="img/meiri.png" id="ptm" align="absmiddle" /><span>每日南国</span>
			</div>
			<div class="jiangchenzhidu" onclick="location='disclose.jsp'">
				<img src="img/jiangchen.png" id="ptm" align="absmiddle" /><span>奖惩制度</span>
			</div>
			<div class="nanguoshetuan" onclick="location='disclose.jsp'">
				<img src="img/shetuan.png" id="ptm" align="absmiddle" /><span>南国社团</span>
			</div>
			<div class="fenge"></div>
			
			<div class="jieshao">
				<div class="msg">
				<div class="msg_1">
					<div class="msg_time">&nbsp;&nbsp;11月12日&nbsp;&nbsp;&nbsp;20：00</div>
				</div>
				<div class="msg_2"><a href="passage.jsp"><img src="img/gslwf.jpg" /></a></div>
				<div class="msg_3">
					<span id="biaoti">&nbsp;&nbsp;从一品中餐厅试营业啦，快来品尝！</span><br />
					<span id="zhaiyao">&nbsp;&nbsp;&nbsp;带给你不一样的体验</span>
				</div>
			</div>
			<div class="fengexian"></div>
			<div class="msg">
				<div class="msg_1">
					<div class="msg_time">&nbsp;&nbsp;11月12日&nbsp;&nbsp;&nbsp;21：00</div>
				</div>
				<div class="msg_2"><a href="passage.jsp"><img src="img/dghjf.jpg" /></a></div>
				<div class="msg_3">
					<span id="biaoti">&nbsp;&nbsp;二楼咕噜肉饭新品上市，全场八折！</span><br />
					<span id="zhaiyao">&nbsp;&nbsp;&nbsp;活动期间免收打包费</span>
				</div>
			</div>
			<div class="fengexian"></div>
			<div class="msg">
				<div class="msg_1">
					<div class="msg_time">&nbsp;&nbsp;11月12日&nbsp;&nbsp;&nbsp;22：00</div>
				</div>
				<div class="msg_2"><a href="passage.jsp"><img src="img/lbnnf.jpg" /></a></div>
				<div class="msg_3">
					<span id="biaoti">&nbsp;&nbsp;明炉烧鸭，重磅回归</span><br />
					<span id="zhaiyao">&nbsp;&nbsp;&nbsp;香甜可口，快到碗里来</span>
				</div>
			</div>
				
				<iframe src="footer.jsp" width="100%" height="180px"></iframe>
			</div>
			
		</div>
</body>
</html>