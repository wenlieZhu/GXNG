<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>点餐确认页</title>
<script src="js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
		<link type="text/css" rel="stylesheet" href="css/table.css" />
		<style>
			body{
				width: 375px;
				margin: 0;
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
        	.shangping{
        		text-align:center;
        		margin:0 auto;
        		/*border:1px solid #000;*/
        		width:200px;
        		height:200px;
        		margin-top: 80px;
        	}
        	.jiage{
        		text-align:center;
        		margin:0 auto;
        		margin-top: 20px;
        	}
        	.number{
        		text-align:center;
        		margin:0 auto;
        		margin-top: 20px;
        	}
        	.qurrem{
        		text-align:center;
        		margin:0 auto;
        		margin-top: 20px;
        		margin-bottom: 30px;
        	}
        	
		</style>
		<script>
			$(document).ready(function(){
//获得文本框对象
var t = $("#text_box");
//初始化数量为1,并失效减
$('#min').attr('disabled',true);
 //数量增加操作
 $("#add").click(function(){ 
  // 给获取的val加上绝对值，避免出现负数
  t.val(Math.abs(parseInt(t.val()))+1);
  if (parseInt(t.val())!=1){
  $('#min').attr('disabled',false);
  };
 }) 
 //数量减少操作
 $("#min").click(function(){
 t.val(Math.abs(parseInt(t.val()))-1);
 if (parseInt(t.val())==1){
 $('#min').attr('disabled',true);
 };
 })
});
		</script>
</head>
<body>
	<div id="header" class="dingbu">确 认 点 餐</div>
		<div class="shangping"><img src="img/qcb.jpg" width="200px" height="200px" /></div>
		<div class="jiage">菜名：${good.gname }</div>
		<div class="jiage">单价：￥${good.gprice }</div>
		<form action="bookServlet?opr=add" method="post">
			<input type="hidden" name="uid" value="${user.uid }" />
			<input type="hidden" name="gid" value="${good.gid }" />
		<div class="number">选择数量
	 		<input class="btn btn-white padding5" style="height: 30px;width: 30px;" id="min" name="" type="button" value="-" /> 
			<input id="text_box" name="bnumber" type="text" value="1" style="height: 30px;width:30px;text-align: center"/> 
			<input class="btn btn-white padding5" style="height: 30px;width: 30px;" id="add" name="" type="button" value="+" /> 
		</div>
		<div class="qurrem">
			
				<input class="btn btn-danger padding5" style="height: 30px;width: 160px;" name="querenyuding" type="submit" value="确认预订" />
			
		</div>
		</form>
		<div class="qurrem">
			<input class="btn btn-green padding5" style="height: 30px;width: 160px;" name="querenyuding" type="button" value="重新选择" onclick="location='shopServlet'" />
		</div>
</body>
</html>