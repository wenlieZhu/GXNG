<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>注册页</title>
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
			.rigisterbg{
				width: 375px;
				height: 1000px;
				background-image:url(img/registerbg.jpg);
				background-repeat: no-repeat;
			}
			.topziti{
				width: 335px;
				padding-top: 120px;
				padding-left: 40px;
			}
			.rgtable{
				width: 335px;
				padding-left: 40px;
				padding-top: 30px;
				font-size: 20px;
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
	<div class="rigisterbg">
			<div class="topziti"><img src="img/gxngl.png" width="300px"/></div>
			<div class="rgtable">
				<form action="userServlet?opr=add" method="post">
					<table>
						<th colspan="2">请填写注册信息</th>
						<tbody>
							<tr>
								<td>学号</td>
								<td><input type="text" name="unumber" /></td>
							</tr>
							<tr></tr>
							<tr></tr>
							<tr>
								<td>登录密码</td>
								<td><input type="password"  /></td>
							</tr>
							<tr></tr>
							<tr></tr>
							<tr>
								<td>确认密码</td>
								<td><input type="password"  name="upassword"  /></td>
							</tr>
							<tr>
								<td>姓名</td>
								<td><input type="text"  name="uname"  /></td>
							</tr>
							<tr></tr>
							<tr></tr>
							<tr>
								<td>性别</td>
								<td>
									<input type="radio" name="urex" value="男" />男
									<input type="radio" name="urex" value="女" />女
								</td>
							</tr>
							<tr></tr>
							<tr></tr>
							<tr>
								<td>职业</td>
								<td>
									<input type="radio" name="ujob" value="学生" />学生
									<input type="radio" name="ujob" value="教职工" />教职工
								</td>
							</tr>
							<tr></tr>
							<tr></tr>
							<tr>
								<td>宿舍号</td>
								<td>
									<input type="text"   name="ulive" />
								</td>
							</tr>
							<tr></tr>
							<tr></tr>
							<tr>
								<td>班级</td>
								<td>
									<input type="text"  name="uclass"  />
								</td>
							</tr>
							<tr>
								<td>手机号码</td>
								<td>
									<input type="text"  name="uphone"  />
								</td>
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="2">
									<br /><br />
			
										<input type="submit" id="next" value="提交注册" />
									
								</td>
							</tr>
						</tfoot>
					</table>
				</form>
			</div>
		</div>
</body>
</html>