<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="scbc.bean.User"%>
<%@page import="scbc.dao.UserDao"%>
<%@page import="scbc.dao.impl.UserDaoImpl"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>个人资料</title>
<style>
			body{
				width: 375px;
				margin: 0;
				background-color: bisque;
			}
			input{
				border: 1px solid rgb(180, 180, 180);
				border-radius: 8px;
				font-size: 16px;
				height: 26px;
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
        	.rgtable{
				width: 335px;
				padding-left: 40px;
				padding-top: 70px;
				font-size: 20px;
			}
			.card{
        		width: 345px;
        		height: 40px;
        		padding-left: 30px;
        		background-color: white;
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
		</style>
</head>
<body>
	<div id="header" class="dingbu">个 人 资 料</div>
		<div class="rgtable">
				<form action="userServlet?opr=update" method="post" enctype="multipart/form-data">
					<table>
						<th colspan="2">个人资料修改</th>
						<tbody>
							<input type="hidden" name="uid" value="${user.uid }" />
							<tr>
								<td>学号</td>
								<td><input type="text" name="unumber" value="${user.unumber }" /></td>
							</tr>
							<tr></tr>
							<tr></tr>
							<tr>
								<td>登录密码</td>
								<td><input type="password" name="upassword" value="${user.upassword }" /></td>
							</tr>
							<tr>
								<td>姓名</td>
								<td><input type="text" name="uname" value="${user.uname }" /></td>
							</tr>
							<tr></tr>
							<tr></tr>
							<tr>
								<td>性别</td>
								<td>
									<input type="radio" name="urex" value="男" ${user.urex == "男"? 'checked':'' } />男
									<input type="radio" name="urex" value="女" ${user.urex == "女"? 'checked':'' } />女
								</td>
							</tr>
							<tr></tr>
							<tr></tr>
							<tr>
								<td>职业</td>
								<td>
									<input type="radio" name="ujob" value="学生" ${user.ujob == "学生"? 'checked':'' }  />学生
									<input type="radio" name="ujob" value="教职工" ${user.ujob == "教职工"? 'checked':'' }  />教职工
								</td>
							</tr>
							<tr></tr>
							<tr></tr>
							<tr>
								<td>宿舍号</td>
								<td>
									<input type="text" name="ulive" value="${user.ulive }" />
								</td>
							</tr>
							<tr></tr>
							<tr></tr>
							<tr>
								<td>班级</td>
								<td>
									<input type="text" name="uclass" value="${user.uclass }" />
								</td>
							</tr>
							<tr>
								<td>手机号码</td>
								<td>
									<input type="text" name="uphone" value="${user.uphone }" />
								</td>
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="2">
									<br /><br />
									
										<input type="submit" id="next" value="保存修改" />
									
								</td>
							</tr>
						</tfoot>
					</table>
				</form>
			</div>
</body>
</html>