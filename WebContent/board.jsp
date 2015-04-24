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
<title>SMS！</title>
</head>
<body>
	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false">班级列表
						<span class="caret"></span>
				</a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">10计算机科学与技术</a></li>
						<li><a href="#">14计算机系统结构</a></li>
						<li><a href="#">OPENGL兴趣班</a></li>
						<li class="divider"></li>
						<li><a href="#">管理班级</a></li>
						<li><a href="#">加入班级</a></li>
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
					data-toggle="dropdown" role="button" aria-expanded="false"><img
						alt="s" src="/img"> 沈君政 <span class="caret"></span> </a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">用户管理</a></li>
						<li><a href="#">系统设置</a></li>
						<li class="divider"></li>
						<li><a href="#">退出系统</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
	</nav>
	<div class="container">

		<div class="jumbotron">
			<h3>管理的班级</h3>
			<div class="row">
				<div class="col-sm-6 col-md-4">
					<div class="thumbnail">
						<div class="caption">
							<h3>10计算机科学与技术</h3>
							<p>
								<a href="#" class="btn btn-primary" role="button">进入班级</a> <a
									href="#" class="btn btn-default" role="button">管理班级</a>
							</p>
						</div>
					</div>
				</div>
								<div class="col-sm-6 col-md-4">
					<div class="thumbnail">
						<div class="caption">
							<h3>14计算机系统结构</h3>
							<p>
								<a href="#" class="btn btn-primary" role="button">进入班级</a> <a
									href="#" class="btn btn-default" role="button">管理班级</a>
							</p>
						</div>
					</div>
				</div>
								<div class="col-sm-6 col-md-4">
					<div class="thumbnail">
						<div class="caption">
							<h3>OPENGL兴趣班</h3>
							<p>
								<a href="#" class="btn btn-primary" role="button">进入班级</a> <a
									href="#" class="btn btn-default" role="button">管理班级</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>


		<div class="jumbotron">
			<h3>加入的班级</h3>

		</div>

	</div>

	<script src="js/jquery-2.1.3.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>