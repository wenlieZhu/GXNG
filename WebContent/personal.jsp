<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>个人主页</title>
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
        	.mainper{
        		width: 375px;
        		height: 800px;
        		background-color: #E6E6E6;
        	}
        	.fengexian{
        		width: 375px;
        		height: 40px;
        	}
        	.card{
        		width: 345px;
        		height: 40px;
        		padding-left: 30px;
        		background-color: white;
        	}
        	.card_one{
        		width: 345px;
        		height: 80px;
        		padding-left: 30px;
        		background-color: white;
        	}
		</style>
</head>
<body>
	<div id="header" class="dingbu">共 享 南 国</div>
		<div class="mainper">
			<div class="fengexian"></div>
			<div class="fengexian"></div>
			<div class="card">当前用户：${user.uname}</div>
			<div class="card_one" onclick="location='userServlet?opr=loadDataByUpdate&uid=${user.uid}'">个人资料</div>
			<div class="fengexian"></div>
			<div class="card" onclick="location='bookServlet'">我的订单</div>
			<div class="fengexian"></div>
			<!--<div class="card">设置</div>
			<div class="fengexian"></div>-->
			<div class="card" onclick="location='about.jsp'">关于我们</div>
			<div class="fengexian"></div>
			<div class="card" onclick="location='http://www.gwng.edu.cn'">学校主页</div>
			<div class="fengexian"></div>
			<div class="card" onclick="location='http://jwxt.gwng.edu.cn/'">教务管理</div>
			<div class="fengexian"></div>
			<div class="card" onclick="location='https://720yun.com/t/6b5jvgtavn0?scene_id=20274435'">校园全景</div>
			<!--<div class="card" onclick="location='register_1.html'">注册</div>
			<div class="fengexian"></div>
			<div class="card" onclick="location='login.html'">登录</div>-->
		</div>
		<iframe src="footer.jsp" width="100%" height="70px"></iframe>
</body>
</html>