
<div class="main-sidebar sidebar-style-2">
	<aside id="sidebar-wrapper">
		<div class="sidebar-brand">
			<a href="index.html"> <img alt="image"
				src="<%=request.getContextPath() %>>adminResources/image/logo.png" class="header-logo" /> <span
				class="logo-name">Toasty Treat</span>
			</a>
		</div>
		<ul class="sidebar-menu">

			<li class="dropdown"><a href="index.html"
				class="nav-link"><i class="fas fa-home"></i><span>Home</span></a>
			</li>

			<li class="dropdown"><a href="#"
				class="menu-toggle nav-link has-dropdown"><i
					class="fas fa-list-ul"></i><span>Category</span></a>
				<ul class="dropdown-menu">
					<li><a class="nav-link" href="loadCategory">Add Category</a></li>
					<li><a class="nav-link" href="viewCategory">View Category</a></li>
				</ul></li>
			<li class="dropdown"><a href="#"
				class="menu-toggle nav-link has-dropdown"><i
					class="fas fa-utensils"></i><span>Product</span></a>
				<ul class="dropdown-menu">
					<li><a class="nav-link" href="loadSubCategory">Add Product</a></li>
					<li><a class="nav-link" href="viewSubCategory">View
							Product</a></li>
				</ul>
			</li>
			<li class="dropdown"><a href="#"
				class="menu-toggle nav-link has-dropdown"><i
					class="fas fa-utensils"></i><span>Orders</span></a>
				<ul class="dropdown-menu">
					<li><a class="nav-link" href="showOrders">View Orders</a></li>
				</ul>
			</li>
			<li class="dropdown"><a href="/logout"
				class="nav-link"><i class="fas fa-sign-out-alt"></i><span>Logout</span></a>
			</li>
		</ul>
	</aside>
</div>
