<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>管理员界面</title>
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/templatemo-style.css" rel="stylesheet">
</head>

<body>
	<!-- Left column -->
	<div class="templatemo-flex-row">
		<div class="templatemo-sidebar">
			<header class="templatemo-site-header">
			<div class="square"></div>
			<h1>员工管理系统</h1>
			</header>
			<div class="profile-photo-container">
				<img src="img/profile-photo.jpg" alt="Profile Photo"
					class="img-responsive">
				<div class="profile-photo-overlay"></div>
			</div>
			<!-- Search box-->
			<form class="templatemo-search-form" role="search">
				<div class="input-group">
					<button type="submit" class="fa fa-search"></button>
					<input type="text" class="form-control" placeholder="搜索"
						name="srch-term" id="srch-term">
				</div>
			</form>
			<div class="mobile-menu-icon">
				<i class="fa fa-bars"></i>
			</div>
			<nav class="templatemo-left-nav">
			<ul>
				<li><a href="#" class="active" target="_blank"><i
						class="fa fa-home fa-fw"></i>首页</a></li>
				<li><a href="add_e.jsp" target="_blank"><i
						class="fa fa-bar-chart fa-fw"></i>添加员工</a></li>
				<li><a href="query_eo.jsp" target="_blank"><i
						class="fa fa-database fa-fw"></i>查看在职员工信息</a></li>
				<li><a href="modify_eo.jsp" target="_blank"><i
						class="fa fa-map-marker fa-fw"></i>修改员工信息</a></li>
				<li><a href="query_ea.jsp" target="_blank"><i
						class="fa fa-users fa-fw"></i>查看应聘员工信息</a></li>
				<li><a href="index.jsp" target="_blank"><i
						class="fa fa-sliders fa-fw"></i>注销登录</a></li>
			</ul>
			</nav>
		</div>
		<!-- Main content -->
		<div class="templatemo-content col-1 light-gray-bg">
			<div class="templatemo-top-nav-container">
				<div class="row">
					<nav class="templatemo-top-nav col-lg-12 col-md-12">
					<ul class="text-uppercase">
						<li><a href="" class="active">Tranquillity</a></li>
						<li><a href="">Serendipity</a></li>
						<li><a href="">Sophisticated</a></li>
						<li><a href="">Cosmopolitan</a></li>
					</ul>
					</nav>
				</div>
			</div>
		</div>
			<div class="templatemo-flex-row flex-content-row templatemo-overflow-hidden">
				
			</div>
	</div>

	<!-- JS -->
	<script src="js/jquery-1.11.2.min.js"></script>
	<!-- jQuery -->
	<script src="js/jquery-migrate-1.2.1.min.js"></script>
	<!--  jQuery Migrate Plugin -->
	<script type="text/javascript" src="js/templatemo-script.js"></script>
	<!-- Templatemo Script -->
</body>
</html>