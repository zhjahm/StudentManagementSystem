<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" 
   aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" 
               data-dismiss="modal" aria-hidden="true">
                  &times;
            </button>
            <h4 class="modal-title" id="myModalLabel">
管理班级
            </h4>
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
         <td>
<a href="#" class="btn btn-primary" role="button">进入班级</a> 
<a href="#" class="btn btn-danger" role="button">退出班级</a>
</td>
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
      </div><!-- /.modal-content -->
</div><!-- /.modal -->
</div>

<div class="modal fade" id="userset" tabindex="-1" role="dialog" 
   aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" 
               data-dismiss="modal" aria-hidden="true">
                  &times;
            </button>
            <h4 class="modal-title" id="myModalLabel">
用户设置
            </h4>
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
      </div><!-- /.modal-content -->
</div><!-- /.modal -->
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
   data-target="#myModal">管理班级</a></li>
						<li><a href="#">加入班级</a></li>
					</ul></li>
			</ul>
			<form class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search">
				</div>
			</form>

			<a class="header-logo" href="<%=request.getContextPath()%>/board.jsp" title="返回主页"><img alt="logo"
				src="images/logo100.png"> </a>

			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">+</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false"><img
						alt="user" src="images/user.png" height="20" width="20"> 沈君政
						<span class="caret"></span> </a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#" data-toggle="modal" 
   data-target="#userset">用户管理</a></li>
						<li><a href="#">系统设置</a></li>
						<li class="divider"></li>
						<li><a href="<%=request.getContextPath()%>/logout.jsp">退出系统</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
	</nav>