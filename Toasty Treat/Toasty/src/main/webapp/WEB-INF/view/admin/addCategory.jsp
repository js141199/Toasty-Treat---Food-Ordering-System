<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>The Toasty Treat Add Category</title>
<!-- General CSS Files -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/app.min.css">
<!-- Template CSS -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/components.css">
<!-- Custom style CSS -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/custom.css">
<link rel='shortcut icon' type='image/x-icon'
	href='<%=request.getContextPath()%>/adminResources/image/favicon.ico' />
</head>

<body>
	<div class="loader"></div>
	<div id="app">
		<div class="main-wrapper main-wrapper-1">
			<div class="navbar-bg"></div>

			<!-- HEADER -->

			<jsp:include page="header.jsp"></jsp:include>

			<!-- MENU -->

			<jsp:include page="menu.jsp"></jsp:include>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>

			<!-- Main Content -->
			<div class="main-content">
				<section class="section">
					<div class="section-body">
						<div class="row">
							<div class="col-12 col-md-12 col-lg-12">
								<div class="card">
									<f:form class="needs-validation" method="post" action="insertCategory" modelAttribute="categoryVO">
										<div class="card-header">
											<h4>Add Category</h4>
											<f:hidden path="id"/>
										</div>
										<div class="card-body">
											<div class="form-group">
												<label>Category Name</label>
												<f:input path="categoryName" class="form-control" required="required"/>
												 <!-- <input type="text"
													class="form-control" required=""> -->
												<!-- <div class="invalid-feedback">What's your name?</div> -->
											</div>
											<div class="card-footer text-right">
												<button type="submit" class="btn btn-info">SUBMIT</button>
											</div>
									</f:form>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
			<!-- FOOTER -->
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
	<!-- General JS Scripts -->
	<script src="<%=request.getContextPath()%>/adminResources/js/app.min.js"></script>
	<!-- JS Libraies -->
	<!-- Page Specific JS File -->
	<!-- Template JS File -->
	<script src="<%=request.getContextPath()%>/adminResources/js/scripts.js"></script>
	<!-- Custom JS File -->
	<script src="<%=request.getContextPath()%>/adminResources/js/custom.js"></script>
</body>

</html>