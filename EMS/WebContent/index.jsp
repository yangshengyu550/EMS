<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>员工管理系统</title>
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/gsdk-bootstrap-wizard.css" rel="stylesheet" />
</head>
<body>
	<div class="image-container set-full-height"
		style="background-image: url('img/wizard.jpg')">
		<div class="container">
			<div class="row">
				<div class="col-sm-8 col-sm-offset-2">
					<div class="wizard-container">
						<div class="card wizard-card" data-color="green"
							id="wizardProfile">
							<form action="form" method="get">
								<div class="wizard-header">
									<h3>登录您的账户</h3>
									<br>
								</div>
								<div class="wizard-navigation">
									<ul>
										<li><a href="#login" data-toggle="tab">Welcome your
												visit</a></li>
									</ul>
								</div>
								<div class="tab-content">
									<div class="tab-pane" id="login">
										<div class="row">
											<div class="col-sm-4 col-sm-offset-1">
												<div class="picture-container">
													<div class="picture">
														<img src="img/default-avatar.png"
															class="picture-src" id="wizardPicturePreview" title="" />
													</div>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
													<label>用户名 </label> <input name="username" type="text"
														class="form-control" placeholder="用户名">
												</div>
												<div class="form-group">
													<label>密码 </label> <input name="password" type="password"
														class="form-control" placeholder="密码">
												</div>
												<div class="form-group">
													<label>验证码 </label> <input name="checkcode" type="text"
														class="form-control" placeholder="请输入以下四位验证码"> <br>
													<img border="0" src="Checkcode" /> <input type="submit"
														value="换一张" onclick="form.action='Changecheckcode'"
														class='btn btn-fill btn-primary btn-xs'>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="wizard-footer height-wizard">
									<div class="col-md-offset-5 col-md-6">
										<input type='submit'
											class='btn btn-finish btn-fill btn-success btn-wd btn-block'
											name='login' value='登录' onclick="form.action='Logcheck'" />
									</div>
									<div class="clearfix"></div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="js/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/jquery.bootstrap.wizard.js"
	type="text/javascript"></script>
<script src="js/gsdk-bootstrap-wizard.js"></script>
<script src="js/jquery.validate.min.js"></script>
</html>