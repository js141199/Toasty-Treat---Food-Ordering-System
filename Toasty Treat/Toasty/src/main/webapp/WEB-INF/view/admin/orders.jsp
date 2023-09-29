<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
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
             <div class="col-12">
                <div class="card">
                  <div class="card-header">
                    <h4>Your Orders</h4>
                  </div>
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="table table-striped table-hover" id="tableExport" style="width:100%;">
                        <thead>
                          <tr>
                            <th>OrderId</th>
                            <th>Customer Name</th>
                            <th>Products</th>
                            <th>Total Bill</th>
                            <th>Order Status</th>
                            <th>Accept</th>
                            <th>Reject</th>
                          </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${orderdata }" var="i" varStatus="j"> 
	                          <tr>
	                            <td>${j.count }</td>
	                            <td>${i.name }</td>
	                            <td>
	                            	<c:forEach items="${i.cartInfo }" var="x">
	                            		<p>${x.productName } : ${x.quantity }</p>
	                            	</c:forEach>
	                            </td>
	                            <td>${i.amount }</td>
	                            <td>
	                              <div class="badge badge-success badge-shadow">Pending</div>
	                            </td>
	                            <td><a href="removeFronOrders?id=${i.id }" class="btn btn-primary">Accept</a></td>
	                            <td><a href="removeFronOrders?id=${i.id }" class="btn btn-primary">Reject</a></td>
	                          </tr>
                          </c:forEach>
                        </tbody>
                      </table>
                    </div>
                  </div>
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