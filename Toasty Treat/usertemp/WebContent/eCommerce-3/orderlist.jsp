<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta name="description" content="Askbootstrap">
      <meta name="author" content="Askbootstrap">
      <title>The Toasty Treat Order List</title>
      <!-- Favicon Icon -->
      <link rel="icon" type="image/png" href="userResources\images\favicon.png">
      <!-- Bootstrap core CSS -->
      <link href="userResources\css\bootstrap.min.css" rel="stylesheet">
      <!-- Material Design Icons -->
      <link href="userResources\css\materialdesignicons.min.css" media="all" rel="stylesheet" type="text/css" />
      <!-- Select2 CSS -->
      <link href="userResources\css\select2-bootstrap.css" />
      <link href="userResources\css\select2.min.css" rel="stylesheet" />
      <!-- Custom styles for this template -->
      <link href="userResources\css\osahan.min.css" rel="stylesheet">
      <!-- Owl Carousel -->
      <link rel="stylesheet" href="userResources\css\owl.carousel.css">
      <link rel="stylesheet" href="userResources\css\owl.theme.css">
   </head>
   <body>
      <nav class="navbar navbar-light navbar-expand-lg bg-dark bg-faded osahan-menu">
         <div class="container-fluid">
            <a class="navbar-brand" href="index.html"> <img src="userResources\images\logo.png" alt="logo"> </a>
			<!-- <a class="location-top" href="#"><i class="mdi mdi-map-marker-circle" aria-hidden="true"></i> New York</a> -->
            <button class="navbar-toggler navbar-toggler-white" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="navbar-collapse" id="navbarNavDropdown">
               <div class="navbar-nav mr-auto mt-2 mt-lg-0 margin-auto top-categories-search-main">
                  <div class="top-categories-search">
           <!--           <div class="input-group">
                        <span class="input-group-btn categories-dropdown">
                           <select class="form-control-select">
                              <option selected="selected">Your City</option>
                              <option value="0">New Delhi</option>
                              <option value="2">Bengaluru</option>
                              <option value="3">Hyderabad</option>
                              <option value="4">Kolkata</option>
                           </select>
                        </span>
                        <input class="form-control" placeholder="Search products in Your City" aria-label="Search products in Your City" type="text">
                        <span class="input-group-btn">
                        <button class="btn btn-secondary" type="button"><i class="mdi mdi-file-find"></i> Search</button>
                        </span>
                     </div>
 -->                  </div>
               </div>
               <div class="my-2 my-lg-0">
                  <ul class="list-inline main-nav-right">
                     <li class="list-inline-item dropdown osahan-top-dropdown">
                        <a class="btn btn-theme-round dropdown-toggle dropdown-toggle-top-user" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <img alt="logo" src="userResources\images\u1.jpg"><strong>Hi</strong> Osahan
                        </a>
                        <div class="dropdown-menu dropdown-menu-right dropdown-list-design">
                           <a href="my-profile.html" class="dropdown-item"><i aria-hidden="true" class="mdi mdi-account-outline"></i>  My Profile</a>
                           <a href="my-address.html" class="dropdown-item"><i aria-hidden="true" class="mdi mdi-map-marker-circle"></i>  My Address</a>
                           <a href="wishlist.html" class="dropdown-item"><i aria-hidden="true" class="mdi mdi-heart-outline"></i>  Wish List </a>
                           <a href="orderlist.html" class="dropdown-item"><i aria-hidden="true" class="mdi mdi-format-list-bulleted"></i>  Order List</a>
                           <div class="dropdown-divider"></div>
                           <a class="dropdown-item" href="#"><i class="mdi mdi-lock"></i> Logout</a>	
                        </div>
                     </li>
                     <li class="list-inline-item cart-btn">
                        <a href="#" data-toggle="offcanvas" class="btn btn-link border-none"><i class="mdi mdi-cart"></i> My Cart <small class="cart-value">5</small></a>
                     </li>
                  </ul>
               </div>
            </div>
         </div>
      </nav>
        <section class="account-page section-padding">
         <div class="container">
            <div class="row">
               <div class="col-lg-12 mx-auto">
                  <div class="row no-gutters">
                     <div class="col-md-4">
                        <div class="card account-left">
                           <div class="user-profile-header">
                              <img alt="logo" src="userResources\images\u1.jpg">
                              <h5 class="mb-1 text-secondary"><strong>Hi </strong> OSAHAN</h5>
                              <p> +91 8568079956</p>
                           </div>
                           <div class="list-group">
                              <a href="my-profile.html" class="list-group-item list-group-item-action"><i aria-hidden="true" class="mdi mdi-account-outline"></i>  My Profile</a>
                              <a href="my-address.html" class="list-group-item list-group-item-action"><i aria-hidden="true" class="mdi mdi-map-marker-circle"></i>  My Address</a>
                              <a href="wishlist.html" class="list-group-item list-group-item-action"><i aria-hidden="true" class="mdi mdi-heart-outline"></i>  Wish List </a>
                              <a href="orderlist.html" class="list-group-item list-group-item-action active"><i aria-hidden="true" class="mdi mdi-format-list-bulleted"></i>  Order List</a> 
                              <a href="#" class="list-group-item list-group-item-action"><i aria-hidden="true" class="mdi mdi-lock"></i>  Logout</a> 
                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                                       <div class="card card-body cart-table">
                     <div class="table-responsive">
                        <table class="table cart_summary">
                           <thead>
                              <tr>
                                 <th class="cart_product">Product</th>
                                 <th>Description</th>
                                 <th>Avail.</th>
                                 <th>Unit price</th>
                                 <th>Qty</th>
                                 <th>Total</th>
                                 <th class="action"><i class="mdi mdi-delete-forever"></i></th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <td class="cart_product"><a href="#"><img class="img-fluid" src="userResources\images\11.jpg" alt=""></a></td>
                                 <td class="cart_description">
                                    <h5 class="product-name"><a href="#">Ipsums Dolors Untra </a></h5>
                                    <h6><strong><span class="mdi mdi-approval"></span> Available in</strong> - 500 gm</h6>
                                 </td>
                                 <td class="availability in-stock"><span class="badge badge-success">In stock</span></td>
                                 <td class="price"><span>$49.88</span></td>
                                 <td class="qty">
                                    <div class="input-group">
                                       <span class="input-group-btn"><button disabled="disabled" class="btn btn-theme-round btn-number" type="button">-</button></span>
                                       <input type="text" max="10" min="1" value="1" class="form-control border-form-control form-control-sm input-number" name="quant[1]">
                                       <span class="input-group-btn"><button class="btn btn-theme-round btn-number" type="button">+</button>
                                       </span>
                                    </div>
                                 </td>
                                 <td class="price"><span>$49.88</span></td>
                                 <td class="action">
                                    <a class="btn btn-sm btn-danger" data-original-title="Remove" href="#" title="" data-placement="top" data-toggle="tooltip"><i class="mdi mdi-close-circle-outline"></i></a>
                                 </td>
                              </tr>
                              <tr>
                                 <td class="cart_product"><a href="#"><img alt="Product" src="userResources\images\10.jpg" class="img-fluid"></a></td>
                                 <td class="cart_description">
                                    <h5 class="product-name"><a href="#">Ipsums Dolors Untra </a></h5>
                                    <h6><strong><span class="mdi mdi-approval"></span> Available in</strong> - 500 gm</h6>
                                 </td>
                                 <td class="availability out-of-stock"><span class="badge badge-primary">No stock</span></td>
                                 <td class="price"><span>$00.00</span></td>
                                 <td class="qty">
                                    <div class="input-group">
                                       <span class="input-group-btn"><button disabled="disabled" class="btn btn-theme-round btn-number" type="button">-</button></span>
                                       <input type="text" max="10" min="1" value="1" class="form-control border-form-control form-control-sm input-number" name="quant[1]">
                                       <span class="input-group-btn"><button class="btn btn-theme-round btn-number" type="button">+</button>
                                       </span>
                                    </div>
                                 </td>
                                 <td class="price"><span>00.00</span></td>
                                 <td class="action">
                                    <a class="btn btn-sm btn-danger" data-original-title="Remove" href="#" title="" data-placement="top" data-toggle="tooltip"><i class="mdi mdi-close-circle-outline"></i></a>
                                 </td>
                              </tr>
                              <tr>
                                 <td class="cart_product"><a href="#"><img alt="Product" src="userResources\images\9.jpg" class="img-fluid"></a></td>
                                 <td class="cart_description">
                                    <h5 class="product-name"><a href="#">Ipsums Dolors Untra </a></h5>
                                    <h6><strong><span class="mdi mdi-approval"></span> Available in</strong> - 500 gm</h6>
                                 </td>
                                 <td class="availability in-stock"><span class="badge badge-warning">In stock</span></td>
                                 <td class="price"><span>$99.00</span></td>
                                 <td class="qty">
                                    <div class="input-group">
                                       <span class="input-group-btn"><button disabled="disabled" class="btn btn-theme-round btn-number" type="button">-</button></span>
                                       <input type="text" max="10" min="1" value="1" class="form-control border-form-control form-control-sm input-number" name="quant[1]">
                                       <span class="input-group-btn"><button class="btn btn-theme-round btn-number" type="button">+</button>
                                       </span>
                                    </div>
                                 </td>
                                 <td class="price"><span>$188.00</span></td>
                                 <td class="action">
                                    <a class="btn btn-sm btn-danger" data-original-title="Remove" href="#" title="" data-placement="top" data-toggle="tooltip"><i class="mdi mdi-close-circle-outline"></i></a>
                                 </td>
                              </tr>
                           </tbody>
                           <tfoot>
                              <tr>
                                 <td colspan="1"></td>
                                 <td colspan="4">
                                    <form class="form-inline float-right">
                                       <div class="form-group">
                                          <input type="text" placeholder="Enter discount code" class="form-control border-form-control form-control-sm">
                                       </div>
                                       &nbsp;
                                       <button class="btn btn-success float-left btn-sm" type="submit">Apply</button>
                                    </form>
                                 </td>
                                 <td colspan="2">Discount : $237.88 </td>
                              </tr>
                              <tr>
                                 <td colspan="2"></td>
                                 <td class="text-right"  colspan="3">Total products (tax incl.)</td>
                                 <td colspan="2">$437.88 </td>
                              </tr>
                              <tr>
                                 <td class="text-right" colspan="5"><strong>Total</strong></td>
                                 <td class="text-danger" colspan="2"><strong>$337.88 </strong></td>
                              </tr>
                           </tfoot>
                        </table>
                     </div>
                     <a href="checkout.html"><button class="btn btn-secondary btn-lg btn-block text-left" type="button"><span class="float-left"><i class="mdi mdi-cart-outline"></i> Proceed to Checkout </span><span class="float-right"><strong>$1200.69</strong> <span class="mdi mdi-chevron-right"></span></span></button></a>
                  </div>
                     
                      </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <section class="section-padding bg-white border-top">
         <div class="container">
            <div class="row">
               <div class="col-lg-4 col-sm-6">
                  <div class="feature-box">
                     <i class="mdi mdi-truck-fast"></i>
                     <h6>Free & Next Day Delivery</h6>
                     <p>Lorem ipsum dolor sit amet, cons...</p>
                  </div>
               </div>
               <div class="col-lg-4 col-sm-6">
                  <div class="feature-box">
                     <i class="mdi mdi-basket"></i>
                     <h6>100% Satisfaction Guarantee</h6>
                     <p>Rorem Ipsum Dolor sit amet, cons...</p>
                  </div>
               </div>
               <div class="col-lg-4 col-sm-6">
                  <div class="feature-box">
                     <i class="mdi mdi-tag-heart"></i>
                     <h6>Great Daily Deals Discount</h6>
                     <p>Sorem Ipsum Dolor sit amet, Cons...</p>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- Footer -->
      <section class="section-padding footer bg-white border-top">
         <div class="container">
            <div class="row">
               <div class="col-lg-3 col-md-3">
                  <h4 class="mb-5 mt-0"><a class="logo" href="index.html"><img src="userResources\images\logo-footer.png" alt="Groci"></a></h4>
                  <p class="mb-0"><a class="text-dark" href="#"><i class="mdi mdi-phone"></i> +61 525 240 310</a></p>
                  <p class="mb-0"><a class="text-dark" href="#"><i class="mdi mdi-cellphone-iphone"></i> 12345 67890, 56847-98562</a></p>
                  <p class="mb-0"><a class="text-success" href="#"><i class="mdi mdi-email"></i> iamosahan@gmail.com</a></p>
                  <p class="mb-0"><a class="text-primary" href="#"><i class="mdi mdi-web"></i> www.askbootstrap.com</a></p>
               </div>
               <div class="col-lg-2 col-md-2">
                  <h6 class="mb-4">TOP CITIES </h6>
                  <ul>
                  <li><a href="#">New Delhi</a></li>
                  <li><a href="#">Bengaluru</a></li>
                  <li><a href="#">Hyderabad</a></li>
                  <li><a href="#">Kolkata</a></li>
                  <li><a href="#">Gurugram</a></li>
                  <ul>
               </div>
               <div class="col-lg-2 col-md-2">
                  <h6 class="mb-4">CATEGORIES</h6>
                  <ul>
                  <li><a href="#">Vegetables</a></li>
                  <li><a href="#">Grocery & Staples</a></li>
                  <li><a href="#">Breakfast & Dairy</a></li>
                  <li><a href="#">Soft Drinks</a></li>
                  <li><a href="#">Biscuits & Cookies</a></li>
                  <ul>
               </div>
               <div class="col-lg-2 col-md-2">
                  <h6 class="mb-4">ABOUT US</h6>
                  <ul>
                  <li><a href="#">Company Information</a></li>
                  <li><a href="#">Careers</a></li>
                  <li><a href="#">Store Location</a></li>
                  <li><a href="#">Affillate Program</a></li>
                  <li><a href="#">Copyright</a></li>
                  <ul>
               </div>
               <div class="col-lg-3 col-md-3">
                  <h6 class="mb-4">Download App</h6>
                  <div class="app">
                     <a href="#"><img src="userResources\images\google.png" alt=""></a>
                     <a href="#"><img src="userResources\images\apple.png" alt=""></a>
                  </div>
                  <h6 class="mb-3 mt-4">GET IN TOUCH</h6>
                  <div class="footer-social">
                     <a class="btn-facebook" href="#"><i class="mdi mdi-facebook"></i></a>
                     <a class="btn-twitter" href="#"><i class="mdi mdi-twitter"></i></a>
                     <a class="btn-instagram" href="#"><i class="mdi mdi-instagram"></i></a>
                     <a class="btn-whatsapp" href="#"><i class="mdi mdi-whatsapp"></i></a>
                     <a class="btn-messenger" href="#"><i class="mdi mdi-facebook-messenger"></i></a>
                     <a class="btn-google" href="#"><i class="mdi mdi-google"></i></a>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- End Footer -->
      <!-- Copyright -->
      <section class="pt-4 pb-4 footer-bottom">
         <div class="container">
            <div class="row no-gutters">
               <div class="col-lg-6 col-sm-6">
                  <p class="mt-1 mb-0">&copy; Copyright 2018 <strong class="text-dark">Groci</strong>. All Rights Reserved<br>
				  <small class="mt-0 mb-0">Made with <i class="mdi mdi-heart text-danger"></i> by <a href="https://askbootstrap.com/" target="_blank" class="text-primary">Ask Bootstrap</a>
                  </small>
				  </p>
               </div>
               <div class="col-lg-6 col-sm-6 text-right">
                  <img alt="osahan logo" src="userResources\images\payment_methods.png">
               </div>
            </div>
         </div>
      </section>
      <!-- End Copyright -->
      <div class="cart-sidebar">
         <div class="cart-sidebar-header">
            <h5>
               My Cart <span class="text-success">(5 item)</span> <a data-toggle="offcanvas" class="float-right" href="#"><i class="mdi mdi-close"></i>
               </a>
            </h5>
         </div>
         <div class="cart-sidebar-body">
            <div class="cart-list-product">
               <a class="float-right remove-cart" href="#"><i class="mdi mdi-close"></i></a>
               <img class="img-fluid" src="userResources\images\11.jpg" alt="">
               <span class="badge badge-success">50% OFF</span>
               <h5><a href="#">Product Title Here</a></h5>
               <h6><strong><span class="mdi mdi-approval"></span> Available in</strong> - 500 gm</h6>
               <p class="offer-price mb-0">$450.99 <i class="mdi mdi-tag-outline"></i> <span class="regular-price">$800.99</span></p>
            </div>
            <div class="cart-list-product">
               <a class="float-right remove-cart" href="#"><i class="mdi mdi-close"></i></a>
               <img class="img-fluid" src="userResources\images\7.jpg" alt="">
               <span class="badge badge-success">50% OFF</span>
               <h5><a href="#">Product Title Here</a></h5>
               <h6><strong><span class="mdi mdi-approval"></span> Available in</strong> - 500 gm</h6>
               <p class="offer-price mb-0">$450.99 <i class="mdi mdi-tag-outline"></i> <span class="regular-price">$800.99</span></p>
            </div>
            <div class="cart-list-product">
               <a class="float-right remove-cart" href="#"><i class="mdi mdi-close"></i></a>
               <img class="img-fluid" src="userResources\images\9.jpg" alt="">
               <span class="badge badge-success">50% OFF</span>
               <h5><a href="#">Product Title Here</a></h5>
               <h6><strong><span class="mdi mdi-approval"></span> Available in</strong> - 500 gm</h6>
               <p class="offer-price mb-0">$450.99 <i class="mdi mdi-tag-outline"></i> <span class="regular-price">$800.99</span></p>
            </div>
            <div class="cart-list-product">
               <a class="float-right remove-cart" href="#"><i class="mdi mdi-close"></i></a>
               <img class="img-fluid" src="userResources\images\1.jpg" alt="">
               <span class="badge badge-success">50% OFF</span>
               <h5><a href="#">Product Title Here</a></h5>
               <h6><strong><span class="mdi mdi-approval"></span> Available in</strong> - 500 gm</h6>
               <p class="offer-price mb-0">$450.99 <i class="mdi mdi-tag-outline"></i> <span class="regular-price">$800.99</span></p>
            </div>
            <div class="cart-list-product">
               <a class="float-right remove-cart" href="#"><i class="mdi mdi-close"></i></a>
               <img class="img-fluid" src="userResources\images\2.jpg" alt="">
               <span class="badge badge-success">50% OFF</span>
               <h5><a href="#">Product Title Here</a></h5>
               <h6><strong><span class="mdi mdi-approval"></span> Available in</strong> - 500 gm</h6>
               <p class="offer-price mb-0">$450.99 <i class="mdi mdi-tag-outline"></i> <span class="regular-price">$800.99</span></p>
            </div>
         </div>
         <div class="cart-sidebar-footer">
            <div class="cart-store-details">
               <p>Sub Total <strong class="float-right">$900.69</strong></p>
               <p>Delivery Charges <strong class="float-right text-danger">+ $29.69</strong></p>
               <h6>Your total savings <strong class="float-right text-danger">$55 (42.31%)</strong></h6>
            </div>
            <a href="checkout.html"><button class="btn btn-secondary btn-lg btn-block text-left" type="button"><span class="float-left"><i class="mdi mdi-cart-outline"></i> Proceed to Checkout </span><span class="float-right"><strong>$1200.69</strong> <span class="mdi mdi-chevron-right"></span></span></button></a>
         </div>
      </div>
      <!-- Bootstrap core JavaScript -->
      <script src="userResources\js\jquery.min.js"></script>
      <script src="userResources\js\bootstrap.bundle.min.js"></script>
      <!-- select2 Js -->
      <script src="userResources\js\select2.min.js"></script>
      <!-- Owl Carousel -->
      <script src="userResources\js\owl.carousel.js"></script>
      <!-- Data Tables -->
      <link href="userResources\css\datatables.min.css" rel="stylesheet" />
      <script src="userResources\js\datatables.min.js"></script>
      <script>
         $(document).ready(function() {
             $('.datatabel').DataTable();
         } );
      </script>
      <!-- Custom -->
      <script src="userResources\js\custom.min.js"></script>
	  <script async src="https://www.googletagmanager.com/gtag/js?id=UA-120909275-1"></script>
	  <script>
		  window.dataLayer = window.dataLayer || [];
		  function gtag(){dataLayer.push(arguments);}
		  gtag('js', new Date());

		  gtag('config', 'UA-120909275-1');
	  </script>
   </body>
</html>

