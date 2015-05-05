<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common/Session_Check.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap-theme.min.css" rel="stylesheet"
	type="text/css" />
<link href="css/header.css" rel="stylesheet" type="text/css" />
<link href="css/board.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="images/favicon.png" />
<title>SMS！</title>
</head>
<body>

	<div class="modal fade" id="classmanagement" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">管理班级</h4>
				</div>
				<div class="modal-body">
					<table class="table table-hover">
						<caption>管理的班級</caption>
						<thead>
							<tr>
								<th>班級名稱</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>13计算机</td>
								<td><a href="#" class="btn btn-primary" role="button">进入班级</a>
									<a href="#" class="btn btn-danger" role="button">退出班级</a></td>
							</tr>
							<tr>
								<td>Sachin</td>
								<td>Mumbai</td>
							</tr>
							<tr>
								<td>Uma</td>
								<td>Pune</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>

	<div class="modal fade" id="createclass" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">创建班级</h4>
				</div>
				<div class="modal-body">
					<table class="table table-hover">
						<caption>管理的班級</caption>
						<thead>
							<tr>
								<th>班級名稱</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>13计算机</td>
								<td><a href="#" class="btn btn-primary" role="button">进入班级</a>
									<a href="#" class="btn btn-danger" role="button">退出班级</a></td>
							</tr>
							<tr>
								<td>Sachin</td>
								<td>Mumbai</td>
							</tr>
							<tr>
								<td>Uma</td>
								<td>Pune</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>

	<div class="modal fade" id="joinclass" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">加入班级</h4>
				</div>
				<div class="modal-body">
					<table class="table table-hover">
						<caption>管理的班級</caption>
						<thead>
							<tr>
								<th>班級名稱</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>13计算机</td>
								<td><a href="#" class="btn btn-primary" role="button">进入班级</a>
									<a href="#" class="btn btn-danger" role="button">退出班级</a></td>
							</tr>
							<tr>
								<td>Sachin</td>
								<td>Mumbai</td>
							</tr>
							<tr>
								<td>Uma</td>
								<td>Pune</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>

	<div class="modal fade" id="userset" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">用户设置</h4>
				</div>
				<div class="modal-body">
					<h4>信息修改</h4>
					<div style="width: 200px; margin-left: auto; margin-right: auto;">
						<c:if test="${msg != null && msgtype == 'error'}">
							<div class="alert alert-danger" role="alert">
								<a href="#" class="close" data-dismiss="alert">&times;</a> <span
									class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
								<c:out value="${msg}"></c:out>
							</div>
						</c:if>
						<form action="<%=request.getContextPath()%>/RegisterServlet"
							method="post" name="LoginForm">
							<input type="email" name="inputuseremail" class="form-control"
								placeholder="用户邮箱" required autofocus>
							<div class="line-large"></div>
							<input type="text" name="inputusername" class="form-control"
								placeholder="真实姓名" required autofocus>
							<div class="line-large"></div>
							<input type="password" name="inputuserpassword"
								class="form-control" placeholder="密码" required>
							<div class="line-large"></div>
							<input type="password" name="inputreuserpassword"
								class="form-control" placeholder="确认密码" required>
							<div class="line-large"></div>
							<button class="btn btn-primary" type="submit" name="submit"
								onclick="return check(this);">确认提交</button>
							<button class="btn btn-default" type="reset" name="reset">重置</button>
						</form>
					</div>
					<h4>密码修改</h4>
					<div style="width: 200px; margin-left: auto; margin-right: auto;">
						<c:if test="${msg != null && msgtype == 'error'}">
							<div class="alert alert-danger" role="alert">
								<a href="#" class="close" data-dismiss="alert">&times;</a> <span
									class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
								<c:out value="${msg}"></c:out>
							</div>
						</c:if>

						<form action="<%=request.getContextPath()%>/RegisterServlet"
							method="post" name="LoginForm">
							<input type="password" name="inputuserpassword"
								class="form-control" placeholder="旧密码" required>
							<div class="line-large"></div>
							<input type="password" name="inputuserpassword"
								class="form-control" placeholder="新密码" required>
							<div class="line-large"></div>
							<input type="password" name="inputreuserpassword"
								class="form-control" placeholder="确认新密码" required>
							<div class="line-large"></div>
							<button class="btn btn-primary" type="submit" name="submit"
								onclick="return check(this);">确认提交</button>
							<button class="btn btn-default" type="reset" name="reset">重置</button>
						</form>
					</div>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>

	<div class="modal fade" id="systemset" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">管理班级</h4>
				</div>
				<div class="modal-body">
					<table class="table table-hover">
						<caption>管理的班級</caption>
						<thead>
							<tr>
								<th>班級名稱</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>13计算机</td>
								<td><a href="#" class="btn btn-primary" role="button">进入班级</a>
									<a href="#" class="btn btn-danger" role="button">退出班级</a></td>
							</tr>
							<tr>
								<td>Sachin</td>
								<td>Mumbai</td>
							</tr>
							<tr>
								<td>Uma</td>
								<td>Pune</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>

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
						<li><a href="#">10计算机科学与技术 <span class="badge alert-info">3</span></a></li>
						<li><a href="#">14计算机系统结构 <span class="badge alert-info">17</span></a></li>
						<li><a href="#">OPENGL兴趣班 <span class="badge alert-info">1</span></a></li>
						<li class="divider"></li>
						<li><a href="#" data-toggle="modal"
							data-target="#classmanagement">管理班级</a></li>
						<li><a href="#" data-toggle="modal"
							data-target="#createclass">创建班级</a></li>
						<li><a href="#" data-toggle="modal" data-target="#joinclass">加入班级</a></li>
					</ul></li>
			</ul>
			<form class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search">
				</div>
			</form>

			<a class="header-logo" href="<%=request.getContextPath()%>/board.jsp"
				title="返回主页"><img alt="logo" src="images/logo100.png"> </a>

			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">+</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false"><img
						alt="user" src="images/user.png" height="20" width="20"> 沈君政
						<span class="caret"></span> </a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#" data-toggle="modal" data-target="#userset">用户管理</a></li>
						<li><a href="#" data-toggle="modal" data-target="#systemset">系统设置</a></li>
						<li class="divider"></li>
						<li><a href="<%=request.getContextPath()%>/logout.jsp">退出系统</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
	</nav>






	<div class="container">

		<div class="col-sm-12">
			<h3>管理的班级</h3>

			<div class="col-sm-5 col-md-3">
				<div class="thumbnail">
					<div class="caption">
						<span class="badge alert-info pull-right">17</span>
						<h4>10计算机科学与技术</h4>
						<p>
							<a href="#" class="btn btn-primary  btn-block" role="button">进入班级</a>
							<a href="#" class="btn btn-default  btn-block" role="button">管理班级</a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-sm-5 col-md-3">
				<div class="thumbnail">
					<div class="caption">
						<span class="badge alert-info pull-right">17</span>
						<h4>14计算机系统结构</h4>
						<p>
							<a href="#" class="btn btn-primary btn-block" role="button">进入班级</a>
							<a href="#" class="btn btn-default btn-block" role="button">管理班级</a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-sm-5 col-md-3">
				<div class="thumbnail">
					<div class="caption">
						<span class="badge alert-info pull-right">17</span>
						<h4>10计算机科学与技术</h4>
						<p>
							<a href="#" class="btn btn-primary  btn-block" role="button">进入班级</a>
							<a href="#" class="btn btn-default  btn-block" role="button">管理班级</a>
						</p>
					</div>
				</div>
			</div>
			<!-- 				<div class="col-sm-3 col-md-2">
					<div class="thumbnail">
					<div class="caption">
					<h4>更多班级</h4>
							<p>
								<a href="#" class="btn btn-primary" role="button">创建班级</a>
							</p></div>
					</div>
				</div> -->

		</div>


		<div class="col-sm-12">
			<h3>加入的班级</h3>


			<div class="col-sm-5 col-md-3">
				<div class="thumbnail">
					<div class="caption">
						<span class="badge alert-info pull-right">1</span>
						<h4>OPENGL兴趣班</h4>
						<p>
							<a href="#" class="btn btn-primary  btn-block" role="button">进入班级</a>
						</p>
					</div>
				</div>
			</div>

		</div>

	</div>



	<script src="js/jquery-2.1.3.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>