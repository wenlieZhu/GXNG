<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>关于我们</title>
<style>
			body{
				width: 375px;
				margin:0 auto;
				text-align:center;
				background-color: bisque;
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
        	#next{
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
				margin-top: 30px;
				}
				.quanwen{
					font-size:18px;
					padding-top:70px
				}
			
			
		</style>
</head>
<body>
	<div id="header" class="dingbu">关 于 我 们</div>
	<div class="quanwen">
		<p>共享南国是一个领先的点餐系统</p>
		<p>共享南国是方便全校师生解决用餐问题</p>
		<p>全校所有餐馆挡位陆续加盟其中</p>
		<p>欢迎各位师生开通使用</p>
		</div>
		<p>Copyright© 2018-2019 </p>
		<p>共享南国小组</p>
		<p>All Rights Reserved.</p>	
			<button id="next" onclick="location='personal.jsp'">返回</button>
</body>
</html>