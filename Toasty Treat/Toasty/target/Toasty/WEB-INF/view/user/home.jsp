<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Askbootstrap">
<meta name="author" content="Askbootstrap">
<title>The Toasty Treat Order List</title>

<link
	href="<%=request.getContextPath()%>/userResources/css/datatables.min.css"
	rel="stylesheet" />


<!-- Favicon Icon -->
<link rel="icon" type="image/png"
	href="<%=request.getContextPath()%>/userResources/images/favicon.png">
<!-- Bootstrap core CSS -->
<link
	href="<%=request.getContextPath()%>/userResources/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Material Design Icons -->
<link
	href="<%=request.getContextPath()%>/userResources/css/materialdesignicons.min.css"
	media="all" rel="stylesheet" type="text/css" />
<!-- Select2 CSS -->
<link
	href="<%=request.getContextPath()%>/userResources/css/select2-bootstrap.css" />
<link
	href="<%=request.getContextPath()%>/userResources/css/select2.min.css"
	rel="stylesheet" />
<!-- Custom styles for this template -->
<link
	href="<%=request.getContextPath()%>/userResources/css/osahan.min.css"
	rel="stylesheet">
<!-- Owl Carousel -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/owl.carousel.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/owl.theme.css">
</head>
<body>

	<!-- HEADER -->

	<jsp:include page="header.jsp"></jsp:include>



	<section class="account-page section-padding">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 mx-auto">
					<div class="row no-gutters">
						<!-- MENU -->

						<jsp:include page="menu.jsp"></jsp:include>
						<div class="col-md-8">
							<div class="card card-body cart-table">
								<div class="widget">
									<div class="section-header">
										<h5 class="heading-design-h5">Category Name</h5>
									</div>
									<div class="row no-gutters">

										<c:forEach items="${ subCategoryList}" var="i" varStatus="j">

											<div class="col-md-6">
												<div class="product">
													<a href="#">
														<div class="product-header">

															<img
																src="<%=request.getContextPath()%>/userResources/images/${i.fileName}"
																class="img-fluid"> <span
																class="veg text-success mdi mdi-circle"></span>
														</div>
														<div class="product-body">
															<h5>${i.subcategoryName}</h5>
														</div> <br> <br>
														<div class="product-footer">
															<a class="btn btn-secondary"
																href="loadItemInCart?id=${i.id}"> <i
																class="mdi mdi-cart-outline"></i> <span style=""white">Add
																	To Cart</span></a>
															<p class="offer-price mb-0">
																${i.price} <i class="mdi mdi-tag-outline"></i>
															</p>
														</div>
													</a>
												</div>
											</div>

										</c:forEach>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
	</section>
	</section>
	<!-- Bootstrap core JavaScript -->
	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/bootstrap.bundle.min.js"></script>
	<!-- select2 Js -->
	<script
		src="<%=request.getContextPath()%>/userResources/js/select2.min.js"></script>
	<!-- Owl Carousel -->
	<script
		src="<%=request.getContextPath()%>/userResources/js/owl.carousel.js"></script>
	<!-- Data Tables -->

	<script
		src="<%=request.getContextPath()%>/userResources/js/datatables.min.js"></script>
	<script>
		$(document).ready(function() {
			$('.datatabel').DataTable();
		});
	</script>
	<!-- Custom -->
	<script
		src="<%=request.getContextPath()%>/userResources/js/custom.min.js"></script>
	<script async
		src="https://www.googletagmanager.com/gtag/js?id=UA-120909275-1"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag() {
			dataLayer.push(arguments);
		}
		gtag('js', new Date());

		gtag('config', 'UA-120909275-1');
	</script>

</body>
</html>

