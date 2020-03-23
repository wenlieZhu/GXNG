<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>历史订单页</title>
<style>
			body{
				margin: 0;
			}
			a{
				text-decoration:none;
				color: inherit;
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
        	.rgtable{
				width: 375px;
				padding-top: 80px;
				font-size: 11px;
				
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
			}
			table{
				text-align:center;
        		margin:0 auto;
			}
			tbody {
				border:1px solid #cee3e9;
				background:#f1f7f9
			}
		</style>
</head>
<body>
	<div id="header" class="dingbu">我 的 订 单</div>
  			<div class="rgtable">
				<form>
					<table>
						<th colspan="5">用户${user.uname }所有订单 </th>
						<tbody>
							<tr>
								<td>商品名</td>
								<td>单价</td>
								<td>数量</td>
								<td>总价</td>
								<td>交易时间</td>
							</tr>
								
		    					<c:forEach items="${blist }" var="book" varStatus="s">
		    					<c:forEach items="${goodprice }" var="gp" varStatus="s">
		    					<c:if test="${blist!=null && blist.size()>0 && book.uid==user.uid && book.gid==gp.gid}">
									<tr>
										<td>${gp.gname }</td>
										<td>${gp.gprice }</td>
										<td>${book.bnumber }</td>
										<td>${book.bnumber*gp.gprice }</td>
										<td>${book.bdate }</td>
									</tr>
								
							 </c:if>
							 </c:forEach>
							 </c:forEach>
							
							
						</tbody>
						<tfoot>
							<tr>
								<td colspan="5">
									<br /><br />
									<a href="userServlet?opr=switchloginper">
										<input type="button" id="next" value="返回" />
									</a>
								</td>
							</tr>
						</tfoot>
					</table>
				</form>
			</div>
</body>
</html>