<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>点餐页</title>
<link type="text/css" rel="stylesheet" href="css/table.css" />
<style>
			.floor {                   //楼层
	position: absolute;
	font:1em 幼圆 bold;
	border: 0.5px solid;
	width: 400px;
	height: 100px;
}
body{
				margin: 0px;
				width: 375px;
				background-color: bisque;
				
			}

.goods {                   //菜品框
	position:absolute;
	font:1em 幼圆 bold;
	/*border: 0.5px solid;*/
	width: 200px;
	height: 400px;
	padding-left: 5px;
	background-color: #D6E9C6;
}

.money {                   //结算
	position: absolute;
	font:1em 幼圆 bold;
	border: 0.5px solid;
	width: 375px;
	height: 100px;
}

.store {               //店铺列表框
	position: absolute;
	font:1em 幼圆 bold;
	/*border:0.5px solid;*/
	width: 100px;
	height: 400px;
	float: left;
	background-color: #DFF0D8;
}

.store_1 {
	padding-top: 8px;     //"店铺列表"文本
	position: absolute;
	text-align: center;
	font:1em 幼圆 bold;
	/*border:0.5px solid;*/
	width: 100px;
	height: 30px;
	float: left;
	
}

.store_2 {               //各店铺
	position: absolute;
	font:1em 幼圆 bold;
	/*border:0.5px solid;*/
	width: 100px;
	height: 360px;
	float: left;
	/*background-color: #DFF0D8;*/
	
}

.anystore{
	padding-top: 8px;
	text-align: center;
	font:1em 幼圆 bold;
	/*border:0.5px solid;*/
	width: 100px;
	height: 30px;
	
}

.anygoods{
	/*border:0.5px solid;*/
	width: 70px;
	height: 85px;
	margin-left: 10px;
	margin-top: 10px;
	font-size: 12px;
	float: left;
	clear：left;
	/*background-color: #DFF0D8;*/
}

.qingdan {                   //清单
	position: absolute;
	font:1em 幼圆 bold;
	/*border: 0.5px solid;*/
	width: 130px;
	height: 100px;
	float: left;
	clear：left;
}

.heji {                   //合计
	position: absolute;
	font:1em 幼圆 bold;
	border: 0.5px solid;
	width: 110px;
	height: 100px;
	float: left;
	clear：left;
}

.queren {                   //确认下单
	position: absolute;
	font:1em 幼圆 bold;
	border: 0.5px solid;
	width: 100px;
	height: 100px;
	float: left;
	clear：left;
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
		</style>
		<script>
			function change_floor()
	{  //alert(floorstore.children.length);
		var tar=document.getElementById("select_floor").value;

		if(tar=="pre")
		 {
			 for(var j=0;j<4;j++)
 	    {
 		   for (var x=0;x<floorstore.children[j].children.length;x++)
 				  floorstore.children[j].children[x].style.display="block";
 		   }
			 return;
 	    }

	  	for(var j=0;j<4;j++)
	   {
		  for (var x=0;x<floorstore.children[j].children.length;x++)
				floorstore.children[j].children[x].style.display="none";
			for(var i=0;i<floorstore.children[tar].children.length;i++)
				floorstore.children[tar].children[i].style.display="block";
		  }
			if(tar=="0")
			{
				for(var j=0;j<goods.children.length;j++)
			 {
				for (var x=0;x<goods.children[j].children.length;x++)
						goods.children[j].children[x].style.display="none";
			{for (var i=0;i<goods.children[0].children.length;i++)
		 		goods.children[0].children[i].style.display="block";}
			}
		 }
			if(tar=="1")
			{for(var j=0;j<goods.children.length;j++)
		   {
			for (var x=0;x<goods.children[j].children.length;x++)
					goods.children[j].children[x].style.display="none";
				{for (var i=0;i<goods.children[17].children.length;i++)
			 	 goods.children[17].children[i].style.display="block";}
			 }
		  }
			if(tar=="2")
			{for(var j=0;j<goods.children.length;j++)
		 {
			for (var x=0;x<goods.children[j].children.length;x++)
					goods.children[j].children[x].style.display="none";
				{for (var i=0;i<goods.children[25].children.length;i++)
				 	goods.children[25].children[i].style.display="block";}
				}}
			if(tar=="3")
			{for(var j=0;j<goods.children.length;j++)
		 {
			for (var x=0;x<goods.children[j].children.length;x++)
					goods.children[j].children[x].style.display="none";
				{for (var i=0;i<goods.children[29].children.length;i++)
					goods.children[29].children[i].style.display="block";}
				}
			}
}


	function showgoods(num)
	{
			for(var j=0;j<goods.children.length;j++)
		 {
			for (var x=0;x<goods.children[j].children.length;x++)
					goods.children[j].children[x].style.display="none";
			 for(var i=0;i<goods.children[num].children.length;i++)
					goods.children[num].children[i].style.display="block";
	  	}
  }
		</script>
</head>
<body>
	<div id="header" class="dingbu">点 餐 列 表</div>
	
	<form action="" method="post" style="padding-top: 80px;padding-bottom: 30px;padding-left: 20px;">
		   <label>选择楼层:</label>
			 <select id="select_floor" style="height: 30px;width: 60px;">
				  <option value="pre">All</option>
	 			 <option value="0">一</option>
	 			 <option value="1">二</option>
	 			 <option value="2">三</option>
	 			 <option value="3">四</option>
	 		</select>
	 		<input class="btn btn-green padding5" style="height: 30px;width: 60px;" type="button" value="切换" onclick="change_floor()" >
	 		<input class="btn btn-green padding5" style="height: 30px;width: 60px;" type="button" value="返回" onclick="location.href='index.jsp';" />
			 <!--<p> 价格
			<input name="jiage_1" type="text" size="5" maxlength=5 style="height: 30px;width: 60px;">
			~
			<input name="jiage_2" type="text" size="5" maxlength=5 style="height: 30px;width: 60px;">
			<input class="btn btn-green padding5" name="chaxun" type="submit" value="查询" style="height: 30px;width: 60px;">
      </p>-->
			</form>
	</div>

	<div class=store>
		<div class=store_1>店铺列表 </div>
		<div class=store_2 id="floorstore" style="overflow:scroll; overflow-x: hidden; width:100px; height:360px">
     	<div id=floor_1>
		  	<div class="anystore" onclick="showgoods(0);"  style="display: block" > 东北大饼</div>
		 		<div class="anystore" onclick="showgoods(1)"  style="display: block">潮汕风味馆</div>
		  	<div class="anystore" onclick="showgoods(2)"  style="display: block">隆江猪脚饭</div>
		  	<div class="anystore" onclick="showgoods(3)"  style="display: block">潮汕风味</div>
	  		<div class="anystore" onclick="showgoods(4)"  style="display: block">沉香美食</div>
				<div class="anystore" onclick="showgoods(5)"  style="display: block">妈妈焖</div>
				<div class="anystore" onclick="showgoods(6)"  style="display: block">一料理</div>
				<div class="anystore" onclick="showgoods(7)"  style="display: block">风味之屋</div>
				<div class="anystore" onclick="showgoods(8)"  style="display: block">金早绿点</div>
				<div class="anystore" onclick="showgoods(9)"  style="display: block">煲仔饭</div>
				<div class="anystore" onclick="showgoods(10)" style="display: block">韩国拌饭</div>
				<div class="anystore" onclick="showgoods(11)" style="display: block">蒸品</div>
				<div class="anystore" onclick="showgoods(12)" style="display: block">订食</div>
				<div class="anystore" onclick="showgoods(13)" style="display: block">牛状元</div>
				<div class="anystore" onclick="showgoods(14)" style="display: block">魔法沙拉</div>
				<div class="anystore" onclick="showgoods(15)" style="display: block">杭州风味</div>
				<div class="anystore" onclick="showgoods(16)" style="display: block">家乐堡</div>
			</div>

			<div id=floor_2>
		  	<div class="anystore" onclick="showgoods(17)" style="display: block">大众菜品</div>
		 		<div class="anystore" onclick="showgoods(18)" style="display: block">大众餐系列-1</div>
		  	<div class="anystore" onclick="showgoods(19)" style="display: block">蒸笼饭</div>
		  	<div class="anystore" onclick="showgoods(20)" style="display: block">大众餐系列-2</div>
	  		<div class="anystore" onclick="showgoods(21)" style="display: block">粤式风味</div>
				<div class="anystore" onclick="showgoods(22)" style="display: block">桂林风味</div>
				<div class="anystore" onclick="showgoods(23)" style="display: block">兰州拉面</div>
				<div class="anystore" onclick="showgoods(24)" style="display: block">西安风味</div>
			</div>

			<div id=floor_3>
		  	<div class="anystore" onclick="showgoods(25)" style="display: block">大众餐</div>
		 		<div class="anystore" onclick="showgoods(26)" style="display: block">中式笼仔饭</div>
		  	<div class="anystore" onclick="showgoods(27)" style="display: block">桂林米粉</div>
		  	<div class="anystore" onclick="showgoods(28)" style="display: block">腊味套餐</div>
			</div>

			<div id=floor_4>
		  	<div class="anystore" onclick="showgoods(29)"  style="display: block">从一品中餐厅</div>
			</div>

		 </div>
	 </div>

	<div class=goods id="goods" style="overflow:scroll; overflow-x: hidden; width:275px; height:400px">
  <div id="dongbeidabing">
  		<c:if test="${list!=null && list.size()>0 }">
    		<c:forEach items="${list }" var="good" varStatus="s">
    			<div class="anygoods" style="display:block" onclick="location.href='shopServlet?opr=loadShopByd&gid=${good.gid }'"> <img src="img\qcb.jpg" width="70" height="50">${good.gname } <br> ${good.gprice }</div>
    		</c:forEach>
    	</c:if>
		<!--<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">现磨豆浆</div>
		<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">千层饼</div>
		<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">鸡蛋饼</div>
		<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">香酱饼</div>
		<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">猪肉饼</div>
		<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">牛肉饼</div>
		<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">鸡蛋土豆饼</div>
		<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">鸡蛋汉堡</div>
		<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">东北玉米</div>
		<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">豆沙饼</div>
		<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">韭菜盒</div>
		<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">番薯饼</div>
		<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">三丝卷</div>
		<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">手抓饼</div>
		<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">手抓饼+鸡蛋</div>
		<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">手抓饼+肉松</div>
		<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">手抓饼+芝士</div>
		<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">手抓饼+培根</div>
		<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">手抓饼+火腿</div>-->
	</div>

	<div id="chaoshanfengweiguan">
		<!--<div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">枸杞菜</div>
		<div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">苦瓜</div>
		<div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">金菇</div>
		<div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">豆腐</div>
		<div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">生菜</div>
		<div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">白菜</div>
	  <div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">手工面</div>
		<div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">油面</div>
		<div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">刀削面</div>
		<div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">大碗面</div>
		<div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">猪杂汤饭面肉卷汤饭面</div>
		<div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">猪肉丸汤饭面</div>
		<div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">鱼丸汤饭面</div>
		<div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">鱼片汤饭面</div>
		<div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">牛肉丸汤饭面</div>
		<div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">双丸汤饭面</div>
		<div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">杂酱面配肉汤</div>
		<div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">干面配肉汤</div>
		<div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">云吞面配肉汤</div>
		<div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">牛腩面</div>
		<div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">猪肉丸瘦肉汤饭面</div>
		<div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">鱼片瘦肉汤饭面</div>
		<div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">鱼丸瘦肉汤饭面</div>
		<div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">双丸瘦肉汤饭面</div>
		<div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">牛肉瘦肉汤饭面</div>
		<div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">猪肉丸猪杂汤饭面</div>
		<div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">双丸猪杂汤饭面</div>
		<div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">鱼丸猪杂汤饭面</div>
		<div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">鱼片猪杂汤饭面</div>
		<div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">牛肉丸猪杂汤饭面</div>
		<div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">白粥</div>
		<div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">白粥+小菜</div>
	  <div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">龙骨玉米汤</div>
	  <div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">排骨苦瓜汤</div>-->
	</div>

 <div id="longjiangzhujiaofan">
	 <!--<div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">炒玉米</div>
	 <div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">娃娃菜</div>
	 <div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">酸菜</div>
	 <div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">醋溜包菜</div>
	 <div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">番茄炒蛋</div>
	 <div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">蒸丝瓜</div>
	 <div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">蒜蓉蒸茄子</div>
	 <div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">酸辣土豆丝</div>
	 <div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">土豆海带烧肉</div>
	 <div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">金针菇豆腐炒肉</div>
	 <div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">回锅肉</div>
	 <div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">鸡排肉</div>
	 <div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">糖醋咕噜肉</div>
	 <div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">子姜炒鸭</div>
	 <div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">香菇鸡</div>
	 <div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">牛腩萝卜</div>
	 <div class="anygoods" style="display:none"> <img src="img\qcb.jpg" width="70" height="50">木耳蒸黄鸡</div>-->
 </div>

 <div id="chaoshanfengwei">
	 <!--<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">玉米粒</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">海带丝</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">豆腐泡</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">白豆腐</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">韭菜炒蛋</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">苦瓜炒蛋</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">西红柿炒蛋</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">茄子</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">冬瓜</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">土豆</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">南瓜</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">青菜</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">蒸蛋</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">娃娃菜</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">空心菜</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">西兰花炒肉</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">云耳炒肉</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">腐竹炒肉</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">辣椒炒肉</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">肉饼</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">墨鱼丸</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">牛肉丸</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">鸡排肉</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">小炒肉</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">叉烧肉</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">咸香鸡肉</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">白切鸡肉</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">酱油鸡肉</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">脆皮肉</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">可乐鸡中翅</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">西兰花炒肉（二素一饭）</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">云耳炒肉（二素一饭）</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">腐竹炒肉（二素一饭）</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">辣椒炒肉（二素一饭）</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">墨鱼丸（二素一饭）</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">牛肉丸（二素一饭）</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">肉饼（二素一饭）</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">小炒肉（二素一饭）</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">叉烧肉（二素一饭）</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">鸡排饭（二素一饭）</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">咸香鸡肉（二素一饭）</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">白切鸡肉（二素一饭）</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">酱油鸡肉（二素一饭）</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">脆皮鸡肉（二素一饭）</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">可乐鸡中翅（二素一饭）</div>-->
</div>

<div id="chenxiangmeishi">
	<!--<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">炒米粉</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">炒河粉</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">炒碗面</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">炒手工面</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">炒桂粉</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">蛋炒饭</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">炒薯粉</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">咖喱</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">猪肝</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">牛肉</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">瘦肉</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">牛腩</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">火腿肠</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">腊肠</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">热狗肠</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">西红柿</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">老干妈</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">叉烧</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	拌云吞	小6大8	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	拌水饺	小6大8	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	杂酱粉/面	小7大9	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	煎蛋拌粉/面 小7大9	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	瘦肉拌粉/面 小7大9	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	叉烧拌粉/面 小7大9	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	牛腩拌粉/面 小8大10	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	酸辣粉/面	小8大10	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鲜鸡肉粉/面 小8大10	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	番茄鸡蛋粉/面	小8大10	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	青瓜牛肉粉/面 小9大11	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	酸菜牛肉粉/面	小9大11	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	净云吞	小5大7</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	净水饺	小5大7	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	青菜粉/面	4	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	煎蛋粉/面	小6大8	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	云吞粉/面	小6大8	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	水饺粉/面	小6大8	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	瘦肉粉/面	小6大8	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	叉烧粉/面	小6大8	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	牛腩粉/面	小7大9	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	排骨粉/面	小7大9	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鱼丸粉/面	小7大9	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	牛丸粉/面	小7大9	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	肉丸粉/面	小7大9	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	肉丝香菇粉/面	小5大7	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	豆角肉丝粉/面	小7大9	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	猪肝香菇粉/面	小8大10	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	台湾大碗面	小8大10	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	瘦肉粥	小4.5大6	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	皮蛋粥	小4.5大6	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	青菜粥	小4.5大6	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	咸蛋粥	小5大7	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鸡蛋粥	小5大7	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	叉烧粥	小5大7	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	肉丸粥	小5大7	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	牛丸粥	小5大7	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	皮蛋瘦肉粥	小6大8	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	猪肝粥	小6大8	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	牛肉粥	小7大9	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鸡肉粥	小7大9	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	乌鸡粥	小7大9	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	咸骨粥	小7大9	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	白粥	1	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	蒸饺	5	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	牛丸砂锅粉/面	小8大10	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	肉丸砂锅粉/面	小8大10	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	叉烧砂锅粉/面	小8大10	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	三鲜砂锅粉/面	小8大10	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	猪肝砂锅粉/面	小8大10	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	瘦肉砂锅粉/面	小8大10	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	乌鸡砂锅粉/面	小9大11	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鸡肉砂锅粉/面	小9大11	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	排骨砂锅粉/面	小9大11	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	牛肉砂锅粉/面	小9大11	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	牛腩砂锅粉/面	小9大11	</div>-->
</div>
<div id="mamameng">
	<!--<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	紫苏焖鸭	5	</div>
 	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	豆豉焖鸭	5	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	薯仔焖鸭	5	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	白切鸭	5	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	酥炸秋刀鱼	5	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	萝卜干焖瘦肉	5	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	青瓜焖瘦肉	5	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	焖鸡翅尖	5	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	香辣猪耳仔	5	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	酱油鸭	5	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	三汁焖鸡	5	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	支竹焖鸡	5	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	云耳焖鸡	5	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	沙姜鸡	5	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	酱汁叉烧	7	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	胡椒猪肚	7	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	胡椒焖虾	7	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	焖花生	4	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	彩椒葱焖蛋	4	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	青菜	1	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	米饭	1	</div>-->
</div>

<div id="yiliaoli">
	<!--<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	招牌肉燥饭	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	咖喱炸鸡饭	12	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	咖喱鳕鱼饭	12	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	日式照烧鸡饭	12	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	浦烧鳗鱼饭	16	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	蟹子加州卷（8个一份）	15	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	李公主卷（8个一份）	15	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	王子卷（8个一份）	16	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	香蕉芝士卷（8个一份）	16	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	芝士海老卷（8个一份）	16	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	吞拿鱼芝士卷（8个一份）	18	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	香芒鸡柳卷（8个一份）	18	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鳗虾顿卷（8个一份）	18	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	极品肉松卷（8个一份）	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	沙拉玉米卷（8个一份）	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	味付海草卷（8个一份）	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	和风泡菜卷（8个一份）	9	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鱼子酱卷（8个一份）	9	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	蟹肉沙律卷（8个一份）	9	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	味付螺肉卷（8个一份）	9	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	味付八爪鱼卷（8个一份）	9	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	至尊蟹肉棒卷（8个一份）	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	吉利芙蓉虾卷（8个一份）	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	八爪鱼海草卷（8个一份）	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	吉利鸡排卷（8个一份）	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	吉利猪排卷（8个一份）	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	吞拿鱼沙律卷（8个一份）	11	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	芝士培根卷（8个一份）	11	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	照烧鸡卷（8个一份）	11	</div>-->
</div>

<div id="fengweizhiwu">
	<!--<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	菜脯滑蛋饭	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	蟹柳滑蛋饭	8.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	火腿滑蛋饭	8.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	腊味滑蛋饭	8.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鸡肉滑蛋饭	8.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	烧鸭滑蛋饭	8.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	猪扒滑蛋饭	8.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	叉烧滑蛋饭	9	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	牛肉滑蛋饭	9	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鱿鱼滑蛋饭	9	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	美味双拼滑蛋饭	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	叉烧拼鱿鱼滑蛋饭	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鱿鱼拼牛肉滑蛋饭	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	烧鸭拼叉烧滑蛋饭	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	牛肉拼火腿滑蛋饭	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鲜鸡汤饭	8.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	排骨汤饭	9	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鸡腿汤饭	9	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	枸杞猪杂汤饭	9	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	乳香鸡腿饭	9	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	白切鸡腿饭	9	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	玫瑰鸡腿饭	9	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	香脆鸡腿饭	9	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	奥尔良鸡腿饭	9	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	老味鸭腿饭	9	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	海天酱鸭腿饭	9	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	酸梅烧鸭腿饭	11	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	香滑猪扒饭	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	原味鸡扒饭	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	奥尔良腿扒饭	8.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	黑椒鸡扒饭	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	黑椒猪扒饭	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	奥尔良鸡腿+荷包蛋	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	烧鸡拼白切鸡饭	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	白切鸡拼猪扒饭	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	白切鸡拼鸡肾饭	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鸡肾拼鸡扒饭	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	烧鸡拼猪扒饭	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	腿扒拼豉油鸡饭	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	啤酒鸭拼鸡扒饭	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	风味双拼扒饭	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	香煎荷包蛋	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	豉油鸡饭	8.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	啤酒鸭饭	9	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	姜葱白切鸡饭	9	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	开胃甜辣鸡饭	9	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	奥尔良烤鸡饭	9	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	盐焗手撕鸡饭	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	盐焗鸡肾饭	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	蜜汁叉烧饭	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	酸梅烧鸭饭	10	</div>-->
</div>

<div id="jinzaolvdian">
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	煎包	2.5元2个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	葱花饼	2.5元2个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	玉米饼	1.5元1个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	糯米鸡	4元1个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	糯米包	2元1个	</div>
  <!--<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	萝卜糕	2.5元2个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	芋头糕	2.5元2个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	马蹄糕	2.5元2个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	玉米饺	3元4个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	香菇饺	3元4个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	白馒头	0.5元1个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	红糖馒头	1元1个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	生肉包	1元1个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	素菜包	2.5元2个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	豆沙包	1.5元2个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	奶黄包	1.5元2个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	叉烧包	2.5元2个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	流沙包	1.5元1个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	花卷	1.5元2个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	糯米卷	2.5元2个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	现炸春卷	1.5元1个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	现炸软堆	1.5元1个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	肠仔包	1.5元1个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	现炸油条	2元1个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	永和豆浆	2元1杯	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	紫菜饺	3元4个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	椰堆	1元1个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	干蒸	2.5元2个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	年糕	2.5元2个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	奶黄卷	1元1个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	豆沙卷	2.5元2个	</div>-->
 </div>
<div id="baozaifan">
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	排骨煲仔饭	2.5元2个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鸡肉煲仔饭	2.5元2个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	叉烧煲仔饭	1.5元1个	</div>
  <!--<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	腊肠煲仔饭	4元1个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	腊肉煲仔饭	2元1个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	腊鸭煲仔饭	2.5元2个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	排骨鸡煲仔饭	2.5元2个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	排骨拼叉烧	2.5元2个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	排骨拼腊肠	3元4个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鸡肉拼腊肉	3元4个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	腊肠拼腊肉	0.5元1个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	叉烧拼腊肠	1元1个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	瘦肉拼腊肠	1元1个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	腊鸭拼排骨	2.5元2个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	猪肝煲仔饭	1.5元2个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	牛腩煲仔饭	1.5元2个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	五花肉咸鱼煲仔饭	2.5元2个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	炸鸡翅+青菜+煲仔饭	1.5元1个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	牛腩焖萝卜+青菜+煲仔饭	1.5元2个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	五花肉焖支竹+青菜+煲仔饭	2.5元2个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	肉丸炒尖椒+青菜+煲仔饭	1.5元1个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	排骨焖土豆+青菜+煲仔饭	1.5元1个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鸭肉焖萝卜+青菜+煲仔饭	1.5元1个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	猪脚焖花生+青菜+煲仔饭	2元1个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	香菇焖鸡肉+青菜+煲仔饭	2元1杯	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	尖椒回锅肉+青菜+煲仔饭	3元4个	</div>-->
</div>

<div id="hanguoliaoli">
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	营养饭套餐	13	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	大酱汤套餐	11	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	海带汤套餐	11	</div>
  <!--<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	干明太鱼汤套餐	11	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	炖鸡盖饭	13	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	辣炒猪肉盖饭	13	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	煎豆腐盖饭	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	咖喱饭	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	韩国拌饭	9	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	饭堡包	12	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	冷面	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	生姜桂皮茶	5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	金枪鱼紫菜包饭	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	泡菜紫菜包饭	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	小银鱼紫菜包饭	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	蔬菜紫菜包饭	8	</div>-->
</div>
<div id="zhengpin">
  	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	咖喱鸡饭	10	</div>
   <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	肉末茄子饭	10	</div>
   <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	水蒸香鸭饭	11	</div>
   <!--<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	咸香鸡饭	11	</div>
   <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	酸菜鱼饭	11	</div>
   <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	双菇土鸭饭	11	</div>
   <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	榨菜肉丝饭	11	</div>
   <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	滑嫩鸡翅根饭	11	</div>
   <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	香菇鸡腿肉饭	11	</div>
   <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	香菇木耳肉饼饭	11	</div>
   <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	糖醋鸡饭	12	</div>
   <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	太子鸡饭	12	</div>
   <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	水煮牛肉饭	13	</div>
   <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	香汁排骨饭	13	</div>
   <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	私房牛腩饭	13	</div>
   <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	手撕猪肚鸡饭	13	</div>
   <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	套餐（优惠2元）</div>
   <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	灵芝排骨汤	7	</div>
   <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	滋补乌鸡汤	7	</div>
   <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	虫草花猪骨汤	7	</div>
   <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	仙女粥	6	</div>
   <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	黑米*豆莲子薏米粥	6	</div>
   <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	红米*红枣枸杞粥	6	</div>-->
 </div>
 <div id="dingshi">
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	肉酱意面	13	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	肉酱浇饭	13	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	咖喱土豆鸡意面	13	</div>
	 <!--<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	咖喱土豆鸡浇饭	13	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	奶油蘑菇培根意面	15	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	奶油蘑菇培根浇饭	15	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	意式香煎鸡扒饭	16	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	台湾阿嬷卤肉饭	15	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	京都温泉蛋肥牛饭	21	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	整条鳗鱼饭	25	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	火炙芝士蟹柳饭	28	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	豪华刺身火炙蟹柳饭	33	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	法式加拿大aaa低温牛排	68	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	加拿大aaa原切小牛排	148	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	肉酱意面配沙拉	16	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	肉酱浇饭配沙拉	16	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	咖喱土豆鸡意面配沙拉	16	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	咖喱土豆鸡浇饭配沙拉	16	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	奶油蘑菇培根意面配沙拉	20	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	奶油蘑菇培根浇饭配沙拉	20	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	意式香煎鸡扒饭配沙拉	19	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	吐司配沙拉	16	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	美食蜂蜜芥末粗薯小份	10	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	美食蜂蜜芥末粗薯大份	13	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	大吉大利晚上吃鸡（鸡块）	13	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	劲辣鸡米花	13	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	墨西哥玉米脆片	13	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	芝士肉酱焗饭	21	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	芝士肉酱焗意面	21	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	芝士咖喱焗饭	21	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	芝士咖喱焗意面	21	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	芝士奶油蘑菇焗饭	24	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	芝士奶油蘑菇焗意面	24	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	芝士肉酱焗饭加培根	24	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	芝士肉酱焗意面加培根	24	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	芝士咖喱焗饭加培根	24	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	芝士咖喱焗意面加培根	24	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	芝士奶油蘑菇焗饭加培根	25	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	芝士奶油蘑菇焗意面加培根	25	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	美式咖啡（冷/热）	14	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	卡布奇诺咖啡（冷/热）	15	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	拿铁咖啡（冷/热）	15	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	意式特浓咖啡（冷/热）	18	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	美式雪顶咖啡（冷/热）	18	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	茉莉花茶	3堂饮（外带6）	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	锡兰红茶	3堂饮（外带6）	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	四季春茶	3堂饮（外带6）	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	招牌柠檬茶	8	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	气泡草莓	10	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	网红薄荷柠檬	10	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	抖音百香果益力多	12	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	抖音同款泰国奶茶	12	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	泰国奶茶+黑糖珍珠	15	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	覆盆子冰（汁）	12	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	黑莓冰（汁）	12	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	黑加仑冰（汁）	12	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	菲律宾芒果冰（汁）	12	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	美国黄桃冰（汁）	12	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	蓝莓冰（汁）	15	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	澳洲蔓越莓冰（汁）	15	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	网红coco椰子冰	15	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	牛油果奶昔	18	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	草莓奶昔	15	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	小份蔬菜沙拉	8	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	大份蔬菜沙拉	10	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	水果盆栽沙拉	16	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	吞拿鱼沙拉	16	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	迷迭香煎鸡肉沙拉	19	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	蔡麦蓝莓减肥主食沙拉	22	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	巧克力华夫	23	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	草莓华夫	23	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	蓝莓华夫	25	</div>
	 <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	巧克力脆皮雪糕	15	</div>-->
 </div>

<div id="niuzhuangyuan">
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	牛杂小吃		</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	招牌萝卜牛杂	7	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	面筋牛杂	7	</div>
  <!--<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	萝卜面筋牛杂	7	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	豆泡牛杂	7	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	净萝卜	4	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	萝卜面筋	4	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	净牛杂	15	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	大满贯	15	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	状元牛肉丸	7元5粒	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	手打牛筋丸	7元5粒	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	包心贡丸	7元5粒	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	咖喱鱼蛋	6元7粒	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	拌粉		</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	香油拌粉	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	卤肉拌粉	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	招牌肉末拌粉	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	红烧牛腩拌粉	12	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鱼蛋拌粉	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	牛筋丸拌粉	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	营养牛杂粉面		</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	招牌酸菜牛杂（河、米、面）	12	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	牛腩（河、米、面）	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	牛肚（河、米、面）	12	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	牛杂粉（河、米、面）	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	丸子粉（河、米、面）	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	牛骨粉（河、米、面）	5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	牛骨汤手工饺（香菇、韭菜、葱、玉米）	8元10个	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">			</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	牛杂薯粉	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	牛杂饭	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	牛肚饭	12	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	牛腩饭	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	红烧排骨饭	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	牛状元		</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	拉肠粉	5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鸡蛋肠	5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	瘦肉肠	5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	玉米肠	5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	皮蛋肠	5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	香菇肠	5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	虾米肠	5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	蛋蒸河粉	5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	蛋蒸米粉	5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鸡蛋炒河粉	4	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鸡蛋炒猪肠粉	4	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鸡蛋炒米线	4	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	肉沫蒸米粉	5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	肉沫蒸河粉	5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	猪肝蒸米粉	5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	猪肝蒸河粉	5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	白粥	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	青菜粥	3	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	皮蛋粥	5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鸡蛋粥	5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	玉米粥	5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	瘦肉粥	5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	咸蛋粥	5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	虾米粥	5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	猪肝粥	5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	皮蛋瘦肉粥	6	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	咸蛋瘦肉粥	6	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	玉米瘦肉粥	6	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	香菇瘦肉粥	6	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	牛骨汤净云吞	8	</div>-->
</div>
<div id="mofashala">
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鸡蛋丸子饭	16	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	日式滑蛋饭	16	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	咖喱鸡饭	16	</div>
	<!--<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	姜汁烧肉饭	15	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	辣白菜烧肉饭	15	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	和风牛肉饭	18	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	日式炸鸡饭	16	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	魔法沙拉双拼饭	16	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	南蛮炸鸡饭	16	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	猪平烧饭	15	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	红鳗饭	18	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	芥末鸡胸肉饭	15	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	韩式汤豆腐沙拉锅	18	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	肥牛沙拉锅	22	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	什锦鸡汁沙拉锅	20	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	减脂纤体沙拉</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	补水综合蔬果沙拉</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	蛋蛋Vc鸡胸沙拉</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	霸王增肌沙拉</div>-->
</div>
<div id="hangzhoufengwei">
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	小笼包	4.5	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鲜肉饺子	4.5	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	玉米饺子	4.5	</div>
	<!--<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	干蒸	4.5	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	茶叶蛋	1.5	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鸡蛋肠	4.5	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	猪肠粉	4.5	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	瘦肉肠	4.5	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	玉米肠	4.5	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	蛋蒸米粉	5.5	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	蛋蒸河粉	5.5	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	肉蒸米粉	5.5	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	肉蒸河粉	5.5	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	肉蛋肠	5.5	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	双蛋肠	5.5	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	玉米加蛋	5.5	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鸡蛋蒸面	5.5	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	瘦肉蒸面	5.5	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	蛋肉蒸面	6.5	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	蛋肉蒸米粉	6.5	</div>
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	蛋肉蒸河粉	6.5	</div>-->
</div>

<div id="jialebao">
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	（A1）香脆鸡腿堡+辣翅+中可	16	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	（A2）香脆鸡腿堡+鸡腿+中可	16	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	（A3）香脆鸡腿堡+奶茶+墨西哥肉卷	18	</div>
  <!--<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	（A4）墨西哥鸡肉卷+烤翅+奶茶	17	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	（A5）鸡排大亨+板烧堡+中可	18	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	（A6）牛肉堡+烤全腿+中可	16	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	（A7）全虾堡+无骨鸡柳+奶茶	18	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	（A8）鳕鱼堡+劲爆爆米花+中可	16	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	（A9）任意全鸡（烤鸡、炸鸡）+中可	23	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	（A10）鸡肉卷+上校鸡块+中可	16	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	（A11）汉堡+薯条+中可	18	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	（F1）两个香辣鸡腿堡	14	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	（F2）两个墨西哥鸡肉卷	14	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	（F3）香辣鸡腿堡+中可	12	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	（F4）墨西哥鸡肉卷+中可	12	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	（F5）鸡排大亨+奶茶	14	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	（F6）两个脆皮鸡腿	12	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	（F7）两个滋补烤全腿	16	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	（F8）两对烤翅	14	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	（F9）2块上校+3块香芋甜心+1份薯条+2串骨肉相连	13	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	B1两人餐：墨西哥鸡肉卷2个+烤鸡1个+香芋甜心5个+2杯中可	42	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	B2朋友餐：香脆鸡腿堡2个+烤翅2对+鸡米花+薯条+2杯中可	42	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	B3炸鸡餐：香脆鸡腿堡1个+墨西哥鸡肉卷+脆皮手扒鸡+薯条+2杯中可	42	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	C1三人餐：3杯中可+1份鸡米花+3串骨肉相连+1份脆皮手扒鸡+3条墨西哥鸡肉卷	55	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	C2欢乐全家桶：4杯中可+1个炸鸡+2个汉堡+1份鸡米花+2个肉卷+4串骨肉相连+1对烤翅+1份薯条+1对辣翅	82	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50"> 	C3吉祥三宝：牛堡+虾堡+鳕鱼堡+中可	22</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	主食		</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	香辣鸡腿堡	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	新奥尔良板烧堡	9	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	全虾堡	9	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鳕鱼堡	9	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	乡村牛肉堡	7	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	泰森汉堡	7	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	墨西哥鸡肉卷	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	副食		</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	新奥尔良烤翅	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	香辣鸡翅	7	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	脆皮鸡翅	7	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	滋补烤全翅	9	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	脆皮手扒鸡	20	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	新奥尔良烤鸡	20	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	川香鸡柳（4串）	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	骨肉相连（4串）	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鸡排大亨	9	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	无骨鸡柳	6	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	爆浆鸡排	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	藤椒鸡排	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	小吃		</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	薯条	7	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	劲爆鸡米花	6	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	上校鸡块	6	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	香芋甜心	6	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	香芋派（菠萝派/红豆派）	6	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	地瓜丸	6	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	饮品		</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	可乐	中5大6	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	七喜	中5大6	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	美年达	中5大6	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	原味奶茶	5	</div>-->
</div>
<div id="dazhongcaipin">
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	豆芽	1	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	大白菜	1	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	包菜	1	</div>
  <!--<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	芥菜	1	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	蒸南瓜	1.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	清炒冬瓜	1.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	卤水蛋	1.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	凉拌海带丝	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	凉拌莲藕	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	凉拌青瓜	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	麻辣豆腐	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	清炒韭菜	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	番茄炒蛋	2.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	韭菜炒蛋	2.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	麻辣土豆丝	2.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	白萝卜炒肉	2.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	红萝卜肉丝	2.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	茄子豆角	2.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	五柳炸蛋	3	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	枸杞叶肉片汤	3	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	三米红萝卜猪骨汤	3	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	淮山排骨汤	3	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	菜花炒肉	3	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	凉瓜炒肉	3	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	豆角炒肉	3	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	土豆丝炒肉	3	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	红烧日本豆腐	3	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	香芋丝蒸培	3	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	玉米粒炒丁	3	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	红烧茄子	3	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	虎皮尖椒	3	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	煎鸡蛋	3	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	大白菜腐竹炒肉	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	淮山炒肉	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	回锅肉	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	西兰花炒肉	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	菜心炒肉	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	酿尖椒	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	酿凉瓜	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	酿茄子	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	水煮鱼	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	清蒸鱼	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	酸菜鱼	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	跂汁蒸鱼	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	土豆焖黄金鱼丸	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	红烧鱼	4	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	咖喱鸡	4	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	土豆焖鸡	4	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	宫保鸡丁	4	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	卤水鸡腿	4	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	杏银菇炒肉	4	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	冬菇炒肉	4	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	火腿炒蛋	4	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	油泡猪肚	5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	清蒸排骨	5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	冬菇蒸鸡	5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	白切鸡	5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	卤水鸡	5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	卤水鸭	5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	烤鸭	5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	红烧鸭块	5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	萝卜焖牛腩	5	</div>-->
</div>
<div id="dazhongcaipin_2">
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	凉拌猪耳饭	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	凉拌猪肚饭	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	猪肚拼猪耳	13	</div>
  <!--<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	凉拌猪耳拼其它	11	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	凉拌猪肚拼其它	11	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	白切鸡饭	7	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	烤鸭饭	7	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	奥尔良烤鸡饭	7	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	奥尔良鸡扒饭	7	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	卤水鸭饭	7	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	卤水鸡饭	7	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	蜜汁叉烧饭	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	烧肉饭	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	卤肉饭	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	双拼饭	9	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鸡腿拼其它	11	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	另加米饭	0.5	</div>-->
</div>
<div id="zhenglongfan">
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	跂汁排骨饭	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	腊肉饭	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	腊肠饭	8	</div>
  <!--<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	腊鸭饭	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	瘦肉饭	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	冬菇滑鸡饭	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	云耳蒸鸡饭	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	土豆花肉饭	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	萝卜牛腩饭	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	青椒牛腩饭	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	烧鸭饭	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	双拼	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	配送例汤一份		</div>-->
</div>
<div id="dazhongcaipin_3">
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鸡蛋炒粉（面）	2（小碗）	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	蒸陈村粉	3	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鸡蛋炒粉（面）	4（大碗）	</div>
  <!--<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	素面汤粉（面）	4	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鸡蛋拉肠粉	4	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	瘦肉拉肠粉	4	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	瘦肉鸡蛋拉肠粉	5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	云吞	5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	瘦肉汤粉（面）	5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	冬菇瘦肉汤粉（面）	5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	北方水饺	6	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	猪手汤粉	6	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	牛杂汤粉（面）	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	牛腩汤粉（面）	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	炸酱面	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	白粥	1	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	皮蛋瘦肉粥	2（小碗）	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	皮蛋瘦肉粥	4（大碗）	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	烧骨菜干粥	2（小碗）	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	烧骨菜干粥	4（大碗）	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	白果腐皮粥	2（小碗）	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	白果腐皮粥	4（大碗）	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	豆浆	1	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	煎蛋	1	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鸡蛋	1	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	茶叶蛋	1.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	云耳蒸鸡饭（送例汤）	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	土豆花肉饭（送例汤）	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	瘦肉饭（送例汤）	8.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	腊肉饭（送例汤）	8.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	腊鸭饭（送例汤）	8.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	腊肠饭（送例汤）	8.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	冬菇鸡饭（送例汤）	8.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	排骨饭（送例汤）	9	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	烧鸭饭（送例汤）	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	萝卜牛肉饭（送例汤）	12	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	青椒牛肉饭（送例汤）	12	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	土豆牛肉饭（送例汤）	12	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	双拼（送例汤）	12	</div>-->
</div>

<div id="yueshifengwei">
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	广式腊味饭	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	萝卜牛腩饭	12	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	排骨煲仔饭	12	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	冬菇滑鸡饭	10	</div>
</div>
<div id="guilinfengwei">
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	桂林米粉（猪肉）	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	桂林米粉（干肉）	12	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	桂林米粉（素）	12	</div>
  <!--<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	干捞粉（素）	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	干捞粉（猪肉）	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	干捞粉（干肉）	12	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	柳州螺蛳粉	12	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	筒骨鲜肉汤粉	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	桂林酸辣粉	10	</div>-->
</div>
<div id="lanzhoulamian">
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	麻辣粉	6	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	酸辣粉	6	</div>
  <!--<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鸡汤米线	6	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	手工凉皮	6	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	小米粥	3	</div>-->
</div>
<div id="xianfengwei">
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	牛肉面	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	精品牛肉面	18	</div>
</div>
<div id="dazhongcan">
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	梅菜蒸肉	4	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	香芋蒸排骨	4	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	糖醋排骨	4	</div>
  <!--<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	清蒸排骨	4	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	椒盐排骨	4	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鲜冬菇蒸鸡	4	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	平菇蒸鸡	4	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	红烧鸭	4	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	清蒸大鱼头	4	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	剁椒蒸鱼头	4	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	红烧猪手	4	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	豆角烧鱿鱼须	4	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	粉蒸肉	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	香芋蒸肉	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	糯米蒸排骨	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	木耳蒸排骨	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	土豆焖排骨	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	土豆红烧肉	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	香芋红烧肉	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	黄花菜蒸鸡	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	木耳蒸鸡	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	土豆焖鸡	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	冬瓜焖鸡	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	魔芋焖鸭	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	清蒸草鱼	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	香辣秋刀鱼	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	辣子鸡丁	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	黄豆烧猪手	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	花生米焖猪手	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	西兰花炒鱿鱼	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	萝卜焖牛腩	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	红焖鱼块	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	椒盐泥鳅	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	糖醋鱼块	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	咸香花肉	3.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	菜花炒肉	2.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	肉丸焖支竹	2.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鱼块焖支竹	2.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	丝瓜炒肉	2.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	面筋焖肉丸	2.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	青椒胡萝卜炒肉丝	2.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	苦瓜炒肉	2.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	酿苦瓜	2.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	椒盐藕夹	2.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	冬笋炒肉	2.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	冬笋炒腊肉	2.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鲜香菇炒肉	2.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	平菇炒肉	2.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	芦笋炒肉	2.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	沙葛炒肉	2.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	青椒芦笋炒肉丝	2.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	玉米炒火腿	2.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	玉米炒蛋	2.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	梅菜肉饼	2.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	山药炒肉	2.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	洋葱炒鸭	2.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	三色肉丝	2.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	荷兰豆炒肉	2.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	荷兰豆炒腊肠	2.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	炒鸡丁	2.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	炒肉丁	2.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	酿豆腐	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	青椒豆皮炒肉	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	红烧日本豆腐	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	脆皮日本豆腐	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	青椒炒支竹	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	木耳焖支竹	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	胡萝卜炒肉	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	莴笋炒肉	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	土豆片炒肉	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	土豆条炒火腿	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	酿茄子	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	豆角炒肉丝	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	豆角炒肉沫	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	青椒炒肉	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	酿青椒	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	青椒木耳炒肉	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	小瓜炒肉片	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	小瓜炒肉丝	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	南瓜烧肉	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	青椒小南瓜炒肉丝	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	葫芦炒肉	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	胡萝卜芹菜炒肉丝	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	白萝卜炒肉	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	藕片炒肉	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	五柳炸蛋	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	芹菜木耳炒肉丝	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	香芋炒肉丁	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	胡萝卜青豆炒火腿	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	雪里红肉沫	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	支竹炒肉沫	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	酸豆角炒肉沫	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	苦瓜炒蛋	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	木耳炒肉片	2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	芹菜炒豆干	1.8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	青椒炒豆干	1.8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	芹菜焖千张	1.8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	蒜蒸丝瓜	1.8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	粉丝蒸丝瓜	1.8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	红烧土豆	1.8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	蒜蒸茄子	1.8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	小炒茄子	1.8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	茄子烧豆角	1.8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	豆角炒蛋	1.8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	豆角煎蛋	1.8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	青椒炒蛋	1.8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	红焖葫芦	1.8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	凉瓜煎蛋	1.8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	红烧香芋	1.8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	酸菜炒肉沫	1.8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	韭菜炒鸡蛋	1.8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	肉饼菜粉丝	1.8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	酸豆角炒蛋	1.8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鸡蛋炒粉丝	1.8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	红烧豆腐	1.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	 咸鱼茄子	1.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	西红柿炒蛋	1.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	粉丝蒸蛋	1.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	空心菜炒蛋	1.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	清蒸香芋丝	1.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	蒸热狗	1.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	榨菜丝炒蛋	1.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	蒸腊肠	1.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	炒粉丝	1.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	蒸水蛋	1.2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	酸菜烧猪红	1.2	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	清炒萝卜	1	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	素炒三丝	1	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	红烧茄子	1	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	咸鸭蛋	1	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	荷包蛋	1	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	红烧冬瓜	1	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	红烧南瓜	1	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	清蒸南瓜	1	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	脆皮南瓜	1	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	酸菜魔芋	1	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	红烧米豆腐	1	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	酸菜烧米豆腐	1	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	清炒土豆丝	1	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	清炒莴笋丝	1	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	酸辣藕丁	1	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	清炒蒜泥白菜	1	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	清炒生菜	1	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	手撕包菜	1	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	炒小瓜	1	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	炒海带丝	1	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	炒萝卜丝	1	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	炒菜心	1	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	米饭（大）	0.8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	米饭（小）	0.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	例汤	0.5	</div>-->
</div>
<div id="zhongshilongzaifan">
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	腊肠笼仔饭	6.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	腊肉笼仔饭	6.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	排骨笼仔饭	6.5	</div>
  <!--<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	咸鱼笼仔饭	6.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	瘦肉笼仔饭	6.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	冬菇鸡笼仔饭	6.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	茄子肉沫笼仔饭	6.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	叉烧滑蛋笼仔饭	6.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	牛肉笼仔饭	8	</div>-->
</div>
<div id="guilinmifenhefen">
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	素粉	4	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	排骨	6	</div>
  <!--<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	瘦肉	6	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	烧鸭	6	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	叉烧	6	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	牛肉	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	牛腩	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	锅烧	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	猪手	8	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	猪杂	8	</div>-->
</div>
<div id="taocan">
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鸡腿饭	5.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	肉卷饭	7	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	白切鸡饭	7	</div>
  <!--<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	卤水鸡饭	7	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	卤水鸭饭	7	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	烧鸭饭	7	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	奥尔良烤鸡饭	7	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	奥尔良鸡扒饭	7	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	卤水肉饭	7.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	蜜汁叉烧饭	7.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	烧肉饭	7.5	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	双拼饭	9	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鸡腿与其它双拼	11	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	加饭	0.5	</div>-->
</div>
<div id="congyipinzhongcantin">
	<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	羊城鲜虾饺	32	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	黑椒牛仔骨	32	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	金蒜跂汁排骨	26	</div>
  <!--<div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	山竹牛肉球	28	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	蟹黄鲜虾下蒸	28	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	蟹粉小笼包	26	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鲜虾腐皮卷	26	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	蜜汁炸凤爪	26	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	珍珠糯米鸡	23	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	上汤木耳饺	23	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	金沙小猪包	23	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	松露蘑菇包	23	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	像生蘑菇包	23	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	像生南瓜包	18	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	窝蛋珍珠鸡	28	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	榴莲天鹅酥	28	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	咕咕牛腩猪肉肠粉	26	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	牛油肉丝炒面	26	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	金丝白玉角	23	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	蒜香炸春卷	18	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	XO酱萝卜糕	26	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	香煎萝卜糕	18	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	香煎马蹄糕	18	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	家乡咸水角	18	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鲜虾金沙肠	32	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	韭黄鲜虾肠	28	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鸳鸯牛肉肠	26	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	炭烧叉烧肠	26	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	猪润肉片肠	23	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	罗汉斋肠粉	38	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	鲍鱼鸡丝粥	32	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	生滚鱼片粥	32	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	皮蛋瘦肉粥	18	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	瑶柱白果粥	18	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	白粥	10	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	蟹黄虾水饺	26	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	白灼鲜时蔬	22	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	上汤牛腩粉（面）	18	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	炸酱淮山面	18	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	荤油姜葱面	16	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	香草鳄鱼酥	32	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	蜜汁叉烧酥	23	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	雪花奶酪包	23	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	酥皮叉烧包	18	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	罗汉芝士挞	18	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	化皮鸡蛋挞	18	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	提拉米苏	28	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	草莓慕斯蛋糕	23	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	奶香红豆糕	23	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	可乐奶层高	23	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	水晶桂花糕	18	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	桂花双皮奶	18	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	反沙腰果	28	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	陈皮脆瓜	28	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	脆香长生果	18	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	凉拌龙须菜	18	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	黑松露炖乳鸽汤（位）	48	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	石斛炖青头鸭汤（位）	28	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	花旗参炖土鸡汤	68	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	石橄榄炖龙骨汤	48	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	匠心牛肉丸汤	48	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	卤水拼盘	68	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	一品卤鸽（只）	48	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	白切走地鸡（半只）	68	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	沙茶牛肉	68	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	韭黄鱼面	58	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	咸菜猪肚	58	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	川香鸡球	58	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	翡翠鲜鱿	48	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	玉兰百合腰果	48	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	潮式炸果肉	48	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	酥脆香口肉	48	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	潮式蚝仔烙	48	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	香酥玉米烙	38	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	海鲜类（斤）	时价	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	黑椒牛仔骨	88	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	蒜香西排	68	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	煎酿青椒	48	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	碧绿鱿鱼	48	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	虾酱豆角	38	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	蒜茸丝瓜	38	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	虫草花菜心	38	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	湿炒牛河	48	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	干炒牛河	48	</div>
  <div class="anygoods" style="display:block"> <img src="img\qcb.jpg" width="70" height="50">	菜脯炒粿条	38	</div>-->
</div>



 </div>
</div>
<!--<div class=money>
<form method="post">
		<input class="btn btn-danger padding5" style="height: 30px;width: 160px;" name="querenyuding" type="button" value="确认预订" onclick="location='booking_confirm.html'">
	</form></div>-->
	<!--<div class=money>
	 <div class=qingdan>
		 <form action="" method="post">
		 <input name="yixuanze" type=button value="已选择">
	 </form>
	 </div>

	 <div class=heji>
		 合计：
	 </div>
	<div class=queren>
     <form method="post">
		<input name="querenyuding" type="button" value="确认预订" onclick="location='booking_confirm.html'">
	</form>
 </div>
	</div>-->
</body>
</html>