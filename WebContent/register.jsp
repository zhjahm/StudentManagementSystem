<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap-theme.min.css" rel="stylesheet"
	type="text/css" />
<link href="css/header.css" rel="stylesheet" type="text/css" />
<title>班务管理系统-注册</title>
</head>
<body>
	<nav class="navbar navbar-default">
	<div class="container-fluid">

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false">班级列表
						<span class="caret"></span>
				</a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li class="divider"></li>
						<li><a href="#">Separated link</a></li>
						<li class="divider"></li>
						<li><a href="#">One more separated link</a></li>
					</ul></li>
			</ul>
			<form class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search">
				</div>
			</form>


			<a class="header-logo" href="/" title="返回主页">123 </a>

			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">+</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false">用户 <span
						class="caret"></span>
				</a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li class="divider"></li>
						<li><a href="#">Separated link</a></li>
					</ul></li>
				<li><a href="#">通知</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>

	<div class="jumbotron">
		<div class="container">
			<div style="width: 200px; margin-left: auto; margin-right: auto;">
				<form action="<%=request.getContextPath()%>/RegisterServlet"
					method="post" name="LoginForm">
					<h2 class="form-signin-heading">用户注册</h2>
					<input type="email" name="inputuseremail" class="form-control"
						placeholder="用户邮箱" required autofocus> <input type="text"
						name="inputusername" class="form-control" placeholder="真实姓名"
						required autofocus><input type="password"
						name="inputuserpassword" class="form-control" placeholder="密码"
						required> <input type="password"
						name="inputreuserpassword" class="form-control" placeholder="确认密码"
						required>

					<div class="checkbox">
						<label> <input type="checkbox" value="remember-me">
							在这台电脑上记住我
						</label>
					</div>
					<button class="btn btn-success" type="submit" name="submit"
						onclick="return check(this);">确认注册</button>
					<button class="btn btn-primary" type="button" name="register">返回</button>
					<button class="btn btn-default" type="reset" name="reset">重置</button>

				</form>

			</div>
		</div>
	</div>



	<footer class="footer">
	<div class="container">
		<p class="text-muted">Nice to meet you.</p>
	</div>
	</footer>




	<script src="js/jquery-2.1.3.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>