
<div class="col-md-4">
	<div class="card account-left">
		<div class="user-profile-header">
			<img alt="logo"
				src="<%=request.getContextPath()%>/userResources/images/logo.jpg">
			<h5 class="mb-1 text-secondary">The Toasty Treat</h5>
			<p>+91 9870097491</p>
		</div>

		<div class="list-group">
			<c:forEach items="${categoryList}" var="i" varStatus="j">

				<a href="loadProduct?id=${i.id}"
					class="list-group-item list-group-item-action"><i
					class="mdi mdi-food"></i> ${i.categoryName}</a>

			</c:forEach>
			<a href="loadCartDetails"
				class="list-group-item list-group-item-action "><i
				aria-hidden="true" class="mdi  mdi-cart-outline"></i> Your Cart</a> <a
				href="loadUserPage" class="list-group-item list-group-item-action "><i
				aria-hidden="true" class="mdi mdi-account-outline"></i> User Profile</a>
			<a href="#" class="list-group-item list-group-item-action"><i
				aria-hidden="true" class="mdi mdi-lock"></i> Completed</a>
		</div>
	</div>
</div>
