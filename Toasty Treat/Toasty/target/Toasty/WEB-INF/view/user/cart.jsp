<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="f"%>

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
							<!-- 1 <div class="card card-body cart-table"> -->
							<div class="table-responsive">
								<table class="table cart_summary">
									<thead>
										<tr>
											<th class="cart_product">Product</th>
											<th>Product Name</th>
											<th>Availability</th>
											<th>Unit price</th>
											<th>Qty</th>
											<th>Total</th>
											<th class="action"><i class="mdi mdi-delete-forever"></i></th>
										</tr>
									</thead>
									<form>
										<tbody>
											<%
												int num = 1;
											%>
											<c:forEach items="${cartList }" var="i" varStatus="j">

												<%
													String min = num + "minus";
														String price = num + "price";
														String plus = num + "plus";
														String qnty = num + "qnty";
														String total = num + "total";
												%>
												<tr>
													<td class="cart_product"><a href="#"><img
															class="img-fluid"
															src="userResources/images/${i.subcategoryVO.fileName }"
															alt=""></a></td>
													<td class="cart_description">
														<h5 class="product-name">
															<a href="#">${i.subcategoryVO.subcategoryName } </a>
														</h5>

													</td>
													<td class="availability in-stock"><span
														class="badge badge-success">In stock</span></td>
													<td class="price"><span id=<%=price%>>${i.subcategoryVO.price }</span></td>
													<td class="qty">
														<div class="input-group">
															<span class="input-group-btn">

																<button class="btn btn-theme-round btn-number"
																	id="<%= min %>"
																	onclick="calculateBill(${f:length(cartList)},this.id)"
																	type="button">-</button>
															</span> <input type="text" max="10" min="1" value="1"
																name="<%="name" + num%>" id="<%=qnty%>"
																class="form-control border-form-control form-control-sm input-number"
																name="quant[1]"> <span class="input-group-btn">
																<button class="btn btn-theme-round btn-number"
																	id="<%= plus %>"
																	onclick="calculateBill(${f:length(cartList)},this.id)"
																	type="button">+</button>
															</span>
														</div>

													</td>
													<td class="price"><span id="<%=total%>">${i.subcategoryVO.price }</span></td>
													<td class="action"><a class="btn btn-sm btn-danger"
														data-original-title="Remove"
														href="removeItemFromCart?id=${i.id }" title=""
														data-placement="top" data-toggle="tooltip"><i
															class="mdi mdi-close-circle-outline"></i></a></td>
												</tr>
												<%
													num++;
												%>
											</c:forEach>
										</tbody>
									<tfoot>
										<tr>
											<td class="text-right" colspan="5"><strong>Total</strong></td>
											<td class="text-danger" colspan="2"><strong
												id="finalBill">0</strong></td>
										</tr>
									</tfoot>

								</table>
							</div>
							<a href="placeOrder?cartData=${cartList }">
								<button class="btn btn-secondary btn-lg btn-block text-left"
									type="submit">
									<span class="float-left"><i class="mdi mdi-cart-outline"></i>
										Proceed to Checkout </span> <span class="float-right"><strong
										id="finalBillCheckOut">$1200.69</strong> <span
										class="mdi mdi-chevron-right"></span></span>
								</button>
							</a>
							</form>
						</div>

					</div>
				</div>
			</div>
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

	<!-- FOR GENERATING BILL -->

	<script src="<%=request.getContextPath()%>/userResources/js/bill.js"></script>





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

