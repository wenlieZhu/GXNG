<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0"> 
<title>吐槽大会</title>
<style>
			body{
				margin: 0px;
			}
			a{
				text-decoration:none;
				color: inherit;
			}
			iframe {
				position: fixed;
				bottom: 0;
            	border: 0;
        	}
			.message{
				width: 375px;
				height: 1000px;
				background-color: #E6E6E6;
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
        	}
        	.msgtop{
        		width: 375px;
        		height: 70px;
        		/*padding-top: 30px;*/
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
	<div id="header" class="dingbu">共 享 南 国</div>
		<div class="message">
			<div class="msgtop"></div>
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
		</div>
		
		
		<iframe src="footer.jsp" width="100%" height="70px"></iframe>
</body>
</html>