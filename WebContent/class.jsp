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
<link href="css/class.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="images/favicon.png" />
<title>SMS!</title>
</head>
<body>
	<jsp:include page="/header-example.jsp" flush="true" />

	<div class="container main-container">

		<div class="col-xs-9">
			<div role="tabpanel">

				<!-- Nav tabs -->
				<ul class="nav nav-tabs" role="tablist">
					<li role="presentation" class="active"><a href="#panel-1"
						aria-controls="panel-1" role="tab" data-toggle="tab">通知</a></li>
					<li role="presentation"><a href="#panel-2"
						aria-controls="panel-2" role="tab" data-toggle="tab">课程表</a></li>
					<li role="presentation"><a href="#panel-3"
						aria-controls="panel-3" role="tab" data-toggle="tab">讨论区</a></li>
					<li role="presentation"><a href="#panel-4"
						aria-controls="panel-4" role="tab" data-toggle="tab">照片墙</a></li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content">

					<div role="tabpanel" class="tab-pane active" id="panel-1">
						<div class="row masonry-container">

							<div class="col-md-4 col-sm-6 item">
								<div class="thumbnail">
									<img src="http://lorempixel.com/200/200/abstract" alt="">
									<div class="caption">
										<h3>Thumbnail label</h3>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit.</p>
										<p>
											<a href="#" class="btn btn-primary" role="button">Button</a>
											<a href="#" class="btn btn-default" role="button">Button</a>
										</p>
									</div>
								</div>
							</div>
							<!--/.item  -->

							<div class="col-md-4 col-sm-6 item">
								<div class="thumbnail">
									<div class="caption">
										<h3>Thumbnail label</h3>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit. Corrupti, illum voluptates consectetur consequatur
											ducimus. Necessitatibus, nobis consequatur hic eaque laborum
											laudantium. Adipisci, explicabo, asperiores molestias
											deleniti unde dolore enim quas.</p>
										<p>
											<a href="#" class="btn btn-primary" role="button">Button</a>
											<a href="#" class="btn btn-default" role="button">Button</a>
										</p>
									</div>
								</div>
							</div>
							<!--/.item  -->

							<div class="col-md-4 col-sm-6 item">
								<div class="thumbnail">
									<img src="http://lorempixel.com/200/200/abstract" alt="">
									<div class="caption">
										<h3>Thumbnail label</h3>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit. Corrupti, illum voluptates consectetur consequatur
											ducimus. Necessitatibus, nobis consequatur hic eaque laborum
											laudantium. Adipisci, explicabo, asperiores molestias
											deleniti unde dolore enim quas.</p>
										<p>
											<a href="#" class="btn btn-primary" role="button">Button</a>
											<a href="#" class="btn btn-default" role="button">Button</a>
										</p>
									</div>
								</div>
							</div>
							<!--/.item  -->

							<div class="col-md-4 col-sm-6 item">
								<div class="thumbnail">
									<img src="http://lorempixel.com/200/200/abstract" alt="">
									<div class="caption">
										<h3>Thumbnail label</h3>
										<p>
											<a href="#" class="btn btn-primary" role="button">Button</a>
											<a href="#" class="btn btn-default" role="button">Button</a>
										</p>
									</div>
								</div>
							</div>
							<!--/.item  -->

							<div class="col-md-4 col-sm-6 item">
								<div class="thumbnail">
									<img src="http://lorempixel.com/200/200/abstract" alt="">
									<div class="caption">
										<h3>Thumbnail label</h3>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit. Corrupti, illum voluptates consectetur consequatur
											ducimus. Necessitatibus, nobis consequatur hic eaque laborum
											laudantium. Adipisci, explicabo, asperiores molestias
											deleniti unde dolore enim quas.</p>
										<p>
											<a href="#" class="btn btn-primary" role="button">Button</a>
											<a href="#" class="btn btn-default" role="button">Button</a>
										</p>
									</div>
								</div>
							</div>
							<!--/.item  -->

							<div class="col-md-4 col-sm-6 item">
								<div class="thumbnail">
									<img src="http://lorempixel.com/200/200/abstract" alt="">
									<div class="caption">
										<h3>Thumbnail label</h3>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit. Corrupti, illum voluptates consectetur consequatur
											ducimus. Necessitatibus, nobis consequatur hic eaque laborum
											laudantium. Adipisci, explicabo, asperiores molestias
											deleniti unde dolore enim quas.</p>
										<p>
											<a href="#" class="btn btn-primary" role="button">Button</a>
											<a href="#" class="btn btn-default" role="button">Button</a>
										</p>
									</div>
								</div>
							</div>

						</div>
						<!--/.masonry-container  -->
					</div>
					<!--/.tab-panel -->

					<div role="tabpanel" class="tab-pane" id="panel-2">

						<div class="row masonry-container">

							<table class="table table-hover text-center">
								<thead>
									<tr>
										<th>时间</th>
										<th>周一</th>
										<th>周二</th>
										<th>周三</th>
										<th>周四</th>
										<th>周五</th>
										<th>周六</th>
										<th>周日</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1-2</td>
										<td><div class="span3">
												<p>软件质量与测试基础</p>
												<p>黄素珍</p>
												<p>南5-A303</p>
											</div></td>
										<td><div class="span3">
												<p>桌面应用程序开发技术</p>
												<p>王明</p>
												<p>南1-A419</p>
											</div></td>
										<td><div class="span3">
												<p>软件质量与测试基础</p>
												<p>黄素珍</p>
												<p>南5-A303</p>
											</div></td>
										<td><div class="span3">
												<p>软件质量与测试基础</p>
												<p>黄素珍</p>
												<p>南5-A303</p>
											</div></td>
										<td><div class="span3">
												<p>软件质量与测试基础</p>
												<p>黄素珍</p>
												<p>南5-A303</p>
											</div></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td>3-4</td>
										<td><div class="span3">
												<p>软件质量与测试基础</p>
												<p>黄素珍</p>
												<p>南5-A303</p>
											</div></td>
										<td><div class="span3">
												<p>软件质量与测试基础</p>
												<p>黄素珍</p>
												<p>南5-A303</p>
											</div></td>
										<td><div class="span3">
												<p>软件质量与测试基础</p>
												<p>黄素珍</p>
												<p>南5-A303</p>
											</div></td>
										<td><div class="span3">
												<p>软件质量与测试基础</p>
												<p>黄素珍</p>
												<p>南5-A303</p>
											</div></td>
										<td><div class="span3">
												<p>软件质量与测试基础</p>
												<p>黄素珍</p>
												<p>南5-A303</p>
											</div></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td>5-6</td>
										<td><div class="span3">
												<p>软件质量与测试基础</p>
												<p>黄素珍</p>
												<p>南5-A303</p>
											</div></td>
										<td><div class="span3">
												<p>软件质量与测试基础</p>
												<p>黄素珍</p>
												<p>南5-A303</p>
											</div></td>
										<td><div class="span3">
												<p>软件质量与测试基础</p>
												<p>黄素珍</p>
												<p>南5-A303</p>
											</div></td>
										<td><div class="span3">
												<p>软件质量与测试基础</p>
												<p>黄素珍</p>
												<p>南5-A303</p>
											</div></td>
										<td><div class="span3">
												<p>软件质量与测试基础</p>
												<p>黄素珍</p>
												<p>南5-A303</p>
											</div></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td>7-8</td>
										<td><div class="span3">
												<p>软件质量与测试基础</p>
												<p>黄素珍</p>
												<p>南5-A303</p>
											</div></td>
										<td><div class="span3">
												<p>软件质量与测试基础</p>
												<p>黄素珍</p>
												<p>南5-A303</p>
											</div></td>
										<td><div class="span3">
												<p>软件质量与测试基础</p>
												<p>黄素珍</p>
												<p>南5-A303</p>
											</div></td>
										<td><div class="span3">
												<p>软件质量与测试基础</p>
												<p>黄素珍</p>
												<p>南5-A303</p>
											</div></td>
										<td><div class="span3">
												<p>软件质量与测试基础</p>
												<p>黄素珍</p>
												<p>南5-A303</p>
											</div></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td>9-10</td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
								</tbody>
							</table>


						</div>
						<!--/.masonry-container  -->

					</div>
					<!--/.tab-panel -->

					<div role="tabpanel" class="tab-pane" id="panel-3">
						<div class="row masonry-container">

							<div class="col-md-4 col-sm-6 item">
								<div class="thumbnail">
									<img src="http://lorempixel.com/200/200/nature" alt="">
									<div class="caption">
										<h3>Thumbnail label</h3>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit.</p>
										<p>
											<a href="#" class="btn btn-primary" role="button">Button</a>
											<a href="#" class="btn btn-default" role="button">Button</a>
										</p>
									</div>
								</div>
							</div>
							<!--/.item  -->

							<div class="col-md-4 col-sm-6 item">
								<div class="thumbnail">
									<div class="caption">
										<h3>Thumbnail label</h3>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit. Corrupti, illum voluptates consectetur consequatur
											ducimus. Necessitatibus, nobis consequatur hic eaque laborum
											laudantium. Adipisci, explicabo, asperiores molestias
											deleniti unde dolore enim quas.</p>
										<p>
											<a href="#" class="btn btn-primary" role="button">Button</a>
											<a href="#" class="btn btn-default" role="button">Button</a>
										</p>
									</div>
								</div>
							</div>
							<!--/.item  -->

							<div class="col-md-4 col-sm-6 item">
								<div class="thumbnail">
									<img src="http://lorempixel.com/200/200/nature" alt="">
									<div class="caption">
										<h3>Thumbnail label</h3>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit. Corrupti, illum voluptates consectetur consequatur
											ducimus. Necessitatibus, nobis consequatur hic eaque laborum
											laudantium. Adipisci, explicabo, asperiores molestias
											deleniti unde dolore enim quas.</p>
										<p>
											<a href="#" class="btn btn-primary" role="button">Button</a>
											<a href="#" class="btn btn-default" role="button">Button</a>
										</p>
									</div>
								</div>
							</div>
							<!--/.item  -->

							<div class="col-md-4 col-sm-6 item">
								<div class="thumbnail">
									<img src="http://lorempixel.com/200/200/nature" alt="">
									<div class="caption">
										<h3>Thumbnail label</h3>
										<p>
											<a href="#" class="btn btn-primary" role="button">Button</a>
											<a href="#" class="btn btn-default" role="button">Button</a>
										</p>
									</div>
								</div>
							</div>
							<!--/.item  -->

							<div class="col-md-4 col-sm-6 item">
								<div class="thumbnail">
									<img src="http://lorempixel.com/200/200/nature" alt="">
									<div class="caption">
										<h3>Thumbnail label</h3>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit. Corrupti, illum voluptates consectetur consequatur
											ducimus. Necessitatibus, nobis consequatur hic eaque laborum
											laudantium. Adipisci, explicabo, asperiores molestias
											deleniti unde dolore enim quas.</p>
										<p>
											<a href="#" class="btn btn-primary" role="button">Button</a>
											<a href="#" class="btn btn-default" role="button">Button</a>
										</p>
									</div>
								</div>
							</div>
							<!--/.item  -->

							<div class="col-md-4 col-sm-6 item">
								<div class="thumbnail">
									<img src="http://lorempixel.com/200/200/nature" alt="">
									<div class="caption">
										<h3>Thumbnail label</h3>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit. Corrupti, illum voluptates consectetur consequatur
											ducimus. Necessitatibus, nobis consequatur hic eaque laborum
											laudantium. Adipisci, explicabo, asperiores molestias
											deleniti unde dolore enim quas.</p>
										<p>
											<a href="#" class="btn btn-primary" role="button">Button</a>
											<a href="#" class="btn btn-default" role="button">Button</a>
										</p>
									</div>
								</div>
							</div>

						</div>
						<!--/.masonry-container  -->
					</div>
					<!--/.tab-panel -->

					<div role="tabpanel" class="tab-pane" id="panel-4">
						<div class="row masonry-container">

							<div class="col-md-4 col-sm-6 item">
								<div class="thumbnail">
									<img src="http://lorempixel.com/200/200/cats" alt="">
									<div class="caption">
										<h3>Thumbnail label</h3>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit.</p>
										<p>
											<a href="#" class="btn btn-primary" role="button">Button</a>
											<a href="#" class="btn btn-default" role="button">Button</a>
										</p>
									</div>
								</div>
							</div>
							<!--/.item  -->

							<div class="col-md-4 col-sm-6 item">
								<div class="thumbnail">
									<div class="caption">
										<h3>Thumbnail label</h3>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit. Corrupti, illum voluptates consectetur consequatur
											ducimus. Necessitatibus, nobis consequatur hic eaque laborum
											laudantium. Adipisci, explicabo, asperiores molestias
											deleniti unde dolore enim quas.</p>
										<p>
											<a href="#" class="btn btn-primary" role="button">Button</a>
											<a href="#" class="btn btn-default" role="button">Button</a>
										</p>
									</div>
								</div>
							</div>
							<!--/.item  -->

							<div class="col-md-4 col-sm-6 item">
								<div class="thumbnail">
									<img src="http://lorempixel.com/200/200/cats" alt="">
									<div class="caption">
										<h3>Thumbnail label</h3>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit. Corrupti, illum voluptates consectetur consequatur
											ducimus. Necessitatibus, nobis consequatur hic eaque laborum
											laudantium. Adipisci, explicabo, asperiores molestias
											deleniti unde dolore enim quas.</p>
										<p>
											<a href="#" class="btn btn-primary" role="button">Button</a>
											<a href="#" class="btn btn-default" role="button">Button</a>
										</p>
									</div>
								</div>
							</div>
							<!--/.item  -->

							<div class="col-md-4 col-sm-6 item">
								<div class="thumbnail">
									<img src="http://lorempixel.com/200/200/cats" alt="">
									<div class="caption">
										<h3>Thumbnail label</h3>
										<p>
											<a href="#" class="btn btn-primary" role="button">Button</a>
											<a href="#" class="btn btn-default" role="button">Button</a>
										</p>
									</div>
								</div>
							</div>
							<!--/.item  -->

							<div class="col-md-4 col-sm-6 item">
								<div class="thumbnail">
									<img src="http://lorempixel.com/200/200/cats" alt="">
									<div class="caption">
										<h3>Thumbnail label</h3>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit. Corrupti, illum voluptates consectetur consequatur
											ducimus. Necessitatibus, nobis consequatur hic eaque laborum
											laudantium. Adipisci, explicabo, asperiores molestias
											deleniti unde dolore enim quas.</p>
										<p>
											<a href="#" class="btn btn-primary" role="button">Button</a>
											<a href="#" class="btn btn-default" role="button">Button</a>
										</p>
									</div>
								</div>
							</div>
							<!--/.item  -->

							<div class="col-md-4 col-sm-6 item">
								<div class="thumbnail">
									<img src="http://lorempixel.com/200/200/cats" alt="">
									<div class="caption">
										<h3>Thumbnail label</h3>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit. Corrupti, illum voluptates consectetur consequatur
											ducimus. Necessitatibus, nobis consequatur hic eaque laborum
											laudantium. Adipisci, explicabo, asperiores molestias
											deleniti unde dolore enim quas.</p>
										<p>
											<a href="#" class="btn btn-primary" role="button">Button</a>
											<a href="#" class="btn btn-default" role="button">Button</a>
										</p>
									</div>
								</div>
							</div>

						</div>
						<!--/.masonry-container  -->
					</div>
					<!--/.tab-panel -->

				</div>
				<!--/.tab-content -->

			</div>
			<!--/.tab-panel  -->
		</div>
		<div class="col-xs-3 ">
			<div>
				<h3>13计算机专升本</h3>
				<p>班级公告，请同学们好好学习！
			</div>
			<h3>成员列表</h3>
			<div class="span3">
				<h4>管理员</h4>
				<a href="#" class="list-group-item" role="button"><span
					class="glyphicon glyphicon-user" aria-hidden="true"></span> 沈君政</a> <a
					href="#" class="list-group-item" role="button"><span
					class="glyphicon glyphicon-user" aria-hidden="true"></span> 班主任</a>
			</div>
			<div class="span3">
				<h4>成员</h4>
				<a href="#" class="list-group-item" role="button"><span
					class="glyphicon glyphicon-user" aria-hidden="true"></span> 戴敏 </a> <a
					href="#" class="list-group-item" role="button"><span
					class="glyphicon glyphicon-user" aria-hidden="true"></span> 金源琪 </a> <a
					href="#" class="list-group-item" role="button"><span
					class="glyphicon glyphicon-user" aria-hidden="true"></span> 李晓丽 </a> <a
					href="#" class="list-group-item" role="button"><span
					class="glyphicon glyphicon-user" aria-hidden="true"></span> 林施 </a> <a
					href="#" class="list-group-item" role="button"><span
					class="glyphicon glyphicon-user" aria-hidden="true"></span> 林霞 </a> <a
					href="#" class="list-group-item" role="button"><span
					class="glyphicon glyphicon-user" aria-hidden="true"></span> 裘柯斌 </a> <a
					href="#" class="list-group-item" role="button"><span
					class="glyphicon glyphicon-user" aria-hidden="true"></span> 王倩 </a> <a
					href="#" class="list-group-item" role="button"><span
					class="glyphicon glyphicon-user" aria-hidden="true"></span> 谢贝露 </a> <a
					href="#" class="list-group-item" role="button"><span
					class="glyphicon glyphicon-user" aria-hidden="true"></span> 张田璐 </a>
			</div>
		</div>
	</div>
	<!-- /.container -->

	<script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>