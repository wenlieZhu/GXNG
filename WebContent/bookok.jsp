<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>点餐成功页</title>
<link type="text/css" rel="stylesheet" href="css/table.css" />
		<style>
			body{
				width: 375px;
				margin: 0;
				background-color: bisque;
			}
			.hh1{
				text-align:center;
        		margin:0 auto;
        		color: red;
        		margin-top: 30px;
			}
		</style>
</head>
<body>
	<h1 class="hh1">点餐成功</h1>
		<div class="hh1">
			<input class="btn btn-green padding5" style="height: 30px;width: 160px;" name="querenyuding" type="button" value="查看我的订单" onclick="location='bookServlet'">
		</div>
		<div class="hh1">
			<input class="btn btn-warning padding5" style="height: 30px;width: 160px;" name="querenyuding" type="button" value="返回主页" onclick="location='index.jsp'">
		</div>
</body>
</html>