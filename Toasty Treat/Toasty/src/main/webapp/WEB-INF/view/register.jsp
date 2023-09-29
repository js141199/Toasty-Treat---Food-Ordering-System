<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>Otika - Admin Dashboard Template</title>
<!-- General CSS Files -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/app.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/selectric.css">
<!-- Template CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/components.css">
<!-- Custom style CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/custom.css">
<link rel='shortcut icon' type='image/x-icon'
	href='<%=request.getContextPath()%>/adminResources/image/favicon.ico' />
</head>

<body>

	<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
	<div class="loader"></div>
	<div id="app">
		<section class="section">
			<div class="container mt-5">
				<div class="row">
					<div
						class="col-12 col-sm-10 offset-sm-1 col-md-8 offset-md-2 col-lg-8 offset-lg-2 col-xl-8 offset-xl-2">
						<div class="card card-primary">
							<div class="card-header">
								<h4>Register</h4>
							</div>
							<div class="card-body">
								<form method="POST">
									<div class="row">
										<div class="form-group col-6">
											<label for="frist_name">First Name</label>
											<f:input path="firstName" class="form-control"
												required="required" />
											<!--  <input id="frist_name" type="text" class="form-control" name="frist_name" autofocus> -->
										</div>
										<div class="form-group col-6">
											<label for="last_name">Last Name</label>
											<f:input path="lastName" class="form-control"
												required="required" />
											<!--  <input id="last_name" type="text" class="form-control" name="last_name"> -->
										</div>
									</div>
									<div class="form-group">
										<label for="email">Email</label>
										<f:input path="loginVO.username" class="form-control"
											required="required" />
										<!-- <input id="email" type="email" class="form-control" name="email"> -->
										<div class="invalid-feedback"></div>
									</div>
									<div class="form-group col-6">
										<label for="address">MobileNumber</label>
										<!-- <input id="last_name" type="text" class="form-control" name="last_name"> -->
										<f:input path="mobileNumber" class="form-control"
											required="required" />
									</div>
									<div class="form-group col-6">
										<label for="address">Address</label>
										<!-- <input id="last_name" type="text" class="form-control" name="last_name"> -->
										<f:input path="address" class="form-control"
											required="required" />
									</div>
									<!-- <div class="form-group">
										<div class="custom-control custom-checkbox">
											<input type="checkbox" name="agree"
												class="custom-control-input" id="agree"> <label
												class="custom-control-label" for="agree">I agree
												with the terms and conditions</label>
										</div>
									</div> -->
									<div class="form-group">
									<a class="btn btn-primary btn-lg btn-block" href="/register">Register</a>
									<!-- 	<button type="submit" class="btn btn-primary btn-lg btn-block" > -->
									
									</div>
								</form>
							</div>
							<div class="mb-4 text-muted text-center">
								Already Registered? <a href="/login">Login</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<!-- General JS Scripts -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/app.min.js"></script>
	<!-- JS Libraies -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery.pwstrength.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery.selectric.min.js"></script>
	<!-- Page Specific JS File -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/auth-register.js"></script>
	<!-- Template JS File -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/scripts.js"></script>
	<!-- Custom JS File -->
	<script src="<%=request.getContextPath()%>/adminResources/js/custom.js"></script>
</body>

</html>