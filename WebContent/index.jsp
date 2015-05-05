<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common/Session_CheckLogin.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap-theme.min.css" rel="stylesheet"
	type="text/css" />
<link href="css/Index_back.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="images/favicon.png" />
<title>SMS!——班务管理系统</title>
</head>
<body>
	<div class="container">
		<center>
			<h1>
				<img src="images/logo.png" />
			</h1>
			<div style="width: 200px; margin-left: auto; margin-right: auto;">

				<c:if test="${msg != null && msgtype == 'error'}">
					<div class="alert alert-danger" role="alert">
						<a href="#" class="close" data-dismiss="alert">&times;</a> <span
							class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
						<c:out value="${msg}"></c:out>
					</div>
				</c:if>
				<c:if test="${msg != null && msgtype == 'success'}">
					<div class="alert alert-success" role="alert">
						<a href="#" class="close" data-dismiss="alert">&times;</a> <span
							class="glyphicon glyphicon-ok" aria-hidden="true"></span>
						<c:out value="${msg}"></c:out>
					</div>
				</c:if>

				<form action="<%=request.getContextPath()%>/CheckServlet"
					method="post" name="LoginForm">
					<input type="email" name="inputuseremail" class="form-control"
						placeholder="用户邮箱" required autofocus>
					<div class="line-large"></div>
					<input type="password" name="inputuserpassword"
						class="form-control" placeholder="密码" required>
					<div class="checkbox">
						<label> <input type="checkbox" value="remember-me"
							style="color: white"> 在这台电脑上记住我
						</label>
					</div>
					<div class="line-large"></div>
					<button class="btn btn-primary" type="submit" name="submit"
						onclick="return check(this);">登录</button>
					<button class="btn btn-success" type="button" name="register"
						onclick="location.href='register.jsp'">注册</button>
					<button class="btn btn-default" type="reset" name="reset">重置</button>
				</form>
			</div>
		</center>
	</div>
	<script src="js/jquery-2.1.3.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>