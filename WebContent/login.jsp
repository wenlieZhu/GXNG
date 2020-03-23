<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>登录页</title>
<style>
			body{
				margin: 0px;
			}
			input{
				border: 1px solid rgb(180, 180, 180);
				border-radius: 8px;
				font-size: 16px;
				height: 26px;
			}
			button{
				width: 270px; /* 宽度 */
				height: 40px; /* 高度 */
				border-width: 0px; /* 边框宽度 */
				border-radius: 3px; /* 边框半径 */
				background: #1E90FF; /* 背景颜色 */
				cursor: pointer; /* 鼠标移入按钮范围时出现手势 */
				outline: none; /* 不显示轮廓线 */
				font-family: Microsoft YaHei; /* 设置字体 */
				color: white; /* 字体颜色 */
				font-size: 17px; /* 字体大小 */
			}
			a{
				text-decoration:none;
			}
			.loginbg{
				width: 375px;
				height: 667px;
				background-image: url(img/loginbg.jpg);
				background-repeat: no-repeat;
			}
			.topziti{
				width: 335px;
				padding-top: 60px;
				padding-left: 40px;
				
			}
			.logintable{
				width: 315px;
				padding-top: 60px;
				padding-left: 60px;
				font-size: 20px;
				color: blueviolet;
			}
			.joinus{
				width: 315px;
				padding-top: 30px;
				padding-left: 60px;
			}
			#lgin{
				width: 70px; /* 宽度 */
				height: 40px; /* 高度 */
				border-width: 0px; /* 边框宽度 */
				border-radius: 3px; /* 边框半径 */
				background: #1E90FF; /* 背景颜色 */
				cursor: pointer; /* 鼠标移入按钮范围时出现手势 */
				outline: none; /* 不显示轮廓线 */
				font-family: Microsoft YaHei; /* 设置字体 */
				color: white; /* 字体颜色 */
				font-size: 17px; /* 字体大小 */
			}
		</style>
</head>
<body>
	<div class="loginbg">
			<div class="topziti"><img src="img/gxngl.png" width="300px"/></div>
			<div class="logintable">
				<form action="userServlet?opr=login" method="post">
					学号&nbsp;&nbsp;<input name="unumber" type="text" /><br /><br />
					密码&nbsp;&nbsp;<input type="password" name="upassword" /><br /><br />
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="submit" id="lgin" value="登录" />
					&nbsp;&nbsp;
					<a href="#">忘记密码</a>
				</form>
			</div>
			<div class="joinus">
				<a href="register.jsp"><button>还没注册？点此注册</button></a>
			</div>
			
			<div class="joinus">
				<a href="index.jsp"><button>返回主页</button></a>
			</div>
		</div>
</body>
</html>