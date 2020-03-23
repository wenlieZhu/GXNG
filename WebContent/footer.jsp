<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>底部按钮</title>
<base target="_parent">
		<style>
			body{
				margin: 0px;
				
			}
			div{
				text-align: center;
				
				border-color: #FF0000;
			}
			img{
				width: 30px;
				height: 30px;
				margin-top: 10px;
			}
			span{
				font-size: 16px;
			}
			a{ 
				text-decoration:none; 
				color:#333; 
			}
			.bottom-bg{
				background-color: gainsboro;
				width: 375px;
				height: 180px;
			}
			.bottom-left{
				width: 125px;
				height: 70px;
				
				float: left;
				
				/*background-color: antiquewhite;*/
			}
			.bottom-middle{
				width: 125px;
				height: 70px;
				
				float: left;
				/*background-color: aqua;*/
			}
			.bottom-right{
				width: 125px;
				height: 70px;
				
				float: right;
				/*background-color: burlywood;*/
			}
		</style>
		<script>
			
			function left_on(){
				var a=document.getElementById("pleft").src="img/shouye-a.png";
				var b=document.getElementById("tleft").style.color="green";
			}
			function middle_on(){
				document.getElementById("pmiddle").src="img/geren-a.png";
				document.getElementById("tmiddle").style.color="green";
			}
			function right_on(){
				document.getElementById("pright").src="img/tucao-a.png";
				document.getElementById("tright").style.color="green";
			}
			function mouse_on(){
				
			}
		</script>
</head>
<body>
	<div class="bottom-bg">
			<a href="index.jsp"><div class="bottom-left" onclick="left_on()">
				<img id="pleft" src="img/shouye.png" /><br>
				<span id="tleft">首页</span>
			</div></a>
			<a href="userServlet?opr=switchloginper"><div class="bottom-middle" onclick="middle_on()">
				<img id="pmiddle" src="img/geren.png" /><br>
				<span id="tmiddle">个人主页</span>
			</div></a>
			<a href="disclose.jsp"><div class="bottom-right" onclick="right_on()">
				<img id="pright" src="img/tucao.png" /><br>
				<span id="tright">吐槽大会</span>
			</div></a>
			<br><br>
			<p><a href="http://www.miitbeian.gov.cn">粤ICP备19019785号</a></p>
					 	<div style="width:300px;margin:0 auto; padding:20px 0;">
		 		<a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=44011102002493" style="display:inline-block;text-decoration:none;height:20px;line-height:20px;"><p style="float:left;height:20px;line-height:20px;margin: 0px 0px 0px 5px; color:#939393;">粤公网安备 44011102002493号</p></a>
		 	</div>
		 
		</div>
		
		
</body>
</html>