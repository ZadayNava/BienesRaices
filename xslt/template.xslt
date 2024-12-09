<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>

	<xsl:param name="TipoMenu" select="TipoMenu"></xsl:param>

	<xsl:template match="inmobiliaria">

		<html lang="en">
			<head>
				<title></title>
				<meta charset="utf-8"/>
				<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

				<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet"/>

				<link rel="stylesheet" href="css/open-iconic-bootstrap.min.css"/>
				<link rel="stylesheet" href="css/animate.css"/>

				<link rel="stylesheet" href="css/owl.carousel.min.css"/>
				<link rel="stylesheet" href="css/owl.theme.default.min.css"/>
				<link rel="stylesheet" href="css/magnific-popup.css"/>

				<link rel="stylesheet" href="css/aos.css"/>

				<link rel="stylesheet" href="css/ionicons.min.css"/>

				<link rel="stylesheet" href="css/bootstrap-datepicker.css"/>
				<link rel="stylesheet" href="css/jquery.timepicker.css"/>


				<link rel="stylesheet" href="css/flaticon.css"/>
				<link rel="stylesheet" href="css/icomoon.css"/>
				<link rel="stylesheet" href="css/style.css"/>


				<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

			</head>
			<body>

				<div class="top">
					<div class="container">
						<div class="row d-flex align-items-center">
							<div class="col">
								<p class="social d-flex">
									<a href="#">
										<span class="icon-facebook"></span>
									</a>
									<a href="#">
										<span class="icon-twitter"></span>
									</a>
									<a href="#">
										<span class="icon-google"></span>
									</a>
									<a href="#">
										<span class="icon-pinterest"></span>
									</a>
								</p>
							</div>
							<div class="col d-flex justify-content-end">
								<p class="num">
									<span class="icon-phone"></span> + 1700 12345 6789
								</p>
							</div>
						</div>
					</div>
				</div>

				<!-- START nav -->
				<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
					<div class="container">
						<a class="navbar-brand" href="index.html">
							BR<span>Excelentes</span>
						</a>
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
							<span class="oi oi-menu"></span> Menu
						</button>

						<div class="collapse navbar-collapse" id="ftco-nav">
							<ul class="navbar-nav ml-auto">
								<xsl:for-each select="Opciones/Opcion">
									<xsl:choose>
										<xsl:when test="$TipoMenu= @Id">
											<li class="nav-item active">
												<a href="{@Url}" class="nav-link">
													<xsl:value-of select="@Texto"/>
												</a>
											</li>
										</xsl:when>
										<xsl:otherwise>
											<li class="nav-item">
												<a href="{@Url}" class="nav-link">
													<xsl:value-of select="@Texto"/>
												</a>
											</li>
										</xsl:otherwise>
									</xsl:choose>
								</xsl:for-each>
							</ul>
						</div>
					</div>
				</nav>
				<!-- END nav -->

				<section class="home-slider owl-carousel">
					<xsl:for-each select="propiedades/propiedad[@tipo = 'casa']">
						<div class="slider-item" style="background-image:{Imagen};">
							<div class="overlay"></div>
							<div class="container">
								<div class="row no-gutters slider-text align-items-md-end align-items-center justify-content-end">
									<div class="col-md-6 text p-4 ftco-animate">
										<h1 class="mb-3">
											<xsl:value-of select="nombre"/>
										</h1>
										<span class="location d-block mb-3">
											<i class="icon-my_location"></i>
											<xsl:value-of select="ciudad"/>
										</span>
										<p>
											<xsl:value-of select="descripcionCompleta"/>
										</p>
										<span class="price">
											<xsl:value-of select="precio"/>
										</span>
										<a href="#" class="btn-custom p-3 px-4 bg-primary">
											View Details <span class="icon-plus ml-1"></span>
										</a>
									</div>
								</div>
							</div>
						</div>
					</xsl:for-each>					
				</section>


				<!-- ======= Choose Section ======= -->
				<xsl:choose>
					<xsl:when test="$TipoMenu = 0">
						<xsl:call-template name="Home"></xsl:call-template>
					</xsl:when>
					<xsl:when test="$TipoMenu = 1">
						<xsl:call-template name="Property"></xsl:call-template>
					</xsl:when>
					<xsl:when test="$TipoMenu = 2">
						<xsl:call-template name="Agents"></xsl:call-template>
					</xsl:when>
					<xsl:when test="$TipoMenu = 3">
						<xsl:call-template name="About"></xsl:call-template>
					</xsl:when>
					<xsl:when test="$TipoMenu = 4">
						<xsl:call-template name="Blog"></xsl:call-template>
					</xsl:when>
					<xsl:when test="$TipoMenu = 5">
						<xsl:call-template name="BlogSingle"></xsl:call-template>
					</xsl:when>
					<xsl:otherwise>
						<xsl:call-template name="Home"></xsl:call-template>
					</xsl:otherwise>
				</xsl:choose>
				<!-- End Choose -->

				<footer class="ftco-footer ftco-bg-dark ftco-section">
					<div class="container">
						<div class="row mb-5">
							<div class="col-md">
								<div class="ftco-footer-widget mb-4">
									<h2 class="ftco-heading-2">Royalestate</h2>
									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
									<ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
										<li class="ftco-animate">
											<a href="#">
												<span class="icon-twitter"></span>
											</a>
										</li>
										<li class="ftco-animate">
											<a href="#">
												<span class="icon-facebook"></span>
											</a>
										</li>
										<li class="ftco-animate">
											<a href="#">
												<span class="icon-instagram"></span>
											</a>
										</li>
									</ul>
								</div>
							</div>
							<div class="col-md">
								<div class="ftco-footer-widget mb-4 ml-md-5">
									<h2 class="ftco-heading-2">Buy</h2>
									<ul class="list-unstyled">
										<li>
											<a href="#" class="py-2 d-block">Home For Sale</a>
										</li>
										<li>
											<a href="#" class="py-2 d-block">Open Houses</a>
										</li>
										<li>
											<a href="#" class="py-2 d-block">New Listing</a>
										</li>
										<li>
											<a href="#" class="py-2 d-block">Recently Reduce</a>
										</li>
										<li>
											<a href="#" class="py-2 d-block">Off-Market Homes</a>
										</li>
									</ul>
								</div>
							</div>
							<div class="col-md">
								<div class="ftco-footer-widget mb-4">
									<h2 class="ftco-heading-2">Sell</h2>
									<ul class="list-unstyled">
										<li>
											<a href="#" class="py-2 d-block">Sell Your Home</a>
										</li>
										<li>
											<a href="#" class="py-2 d-block">Get A Home Valuation</a>
										</li>
										<li>
											<a href="#" class="py-2 d-block">Local Home Prices</a>
										</li>
										<li>
											<a href="#" class="py-2 d-block">Guides &amp; Rules</a>
										</li>
										<li>
											<a href="#" class="py-2 d-block">Others</a>
										</li>
									</ul>
								</div>
							</div>
							<div class="col-md">
								<div class="ftco-footer-widget mb-4">
									<h2 class="ftco-heading-2">Have a Questions?</h2>
									<div class="block-23 mb-3">
										<ul>
											<li>
												<span class="icon icon-map-marker"></span>
												<span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span>
											</li>
											<li>
												<a href="#">
													<span class="icon icon-phone"></span>
													<span class="text">+2 392 3929 210</span>
												</a>
											</li>
											<li>
												<a href="#">
													<span class="icon icon-envelope"></span>
													<span class="text">info@yourdomain.com</span>
												</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12 text-center">

								<p>
									<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
									Copyright <script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
									<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								</p>
							</div>
						</div>
					</div>
				</footer>

				<!-- loader -->
				<div id="ftco-loader" class="show fullscreen">
					<svg class="circular" width="48px" height="48px">
						<circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/>
						<circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/>
					</svg>
				</div>

				<!--Start Scripts-->
				<script src="js/jquery.min.js"></script>
				<script src="js/jquery-migrate-3.0.1.min.js"></script>
				<script src="js/popper.min.js"></script>
				<script src="js/bootstrap.min.js"></script>
				<script src="js/jquery.easing.1.3.js"></script>
				<script src="js/jquery.waypoints.min.js"></script>
				<script src="js/jquery.stellar.min.js"></script>
				<script src="js/owl.carousel.min.js"></script>
				<script src="js/jquery.magnific-popup.min.js"></script>
				<script src="js/aos.js"></script>
				<script src="js/jquery.animateNumber.min.js"></script>
				<script src="js/bootstrap-datepicker.js"></script>
				<script src="js/jquery.timepicker.min.js"></script>
				<script src="js/scrollax.min.js"></script>
				<script src="js/main.js"></script>
				<!-- End Scripts-->


			</body>
		</html>

	</xsl:template>

	<xsl:template name="Home">
		<!--Referencia JS-->
		<script src="js/MiScript.js"></script>
		
		<section class="ftco-section ftco-properties">
			<div class="container">
				<div class="row justify-content-center mb-5 pb-3">
					<div class="col-md-7 heading-section text-center ftco-animate">
						<span class="subheading">Recent Posts</span>
						<h2 class="mb-4">Recent Properties</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="properties-slider owl-carousel ftco-animate">
							<div class="item">
								<div class="properties">
									<a href="#" class="img d-flex justify-content-center align-items-center" style="background-image: url(images/properties-1.jpg);">
										<div class="icon d-flex justify-content-center align-items-center">
											<span class="icon-search2"></span>
										</div>
									</a>
									<div class="text p-3">
										<span class="status sale">Sale</span>
										<div class="d-flex">
											<div class="one">
												<h3>
													<a href="#">North Parchmore Street</a>
												</h3>
												<p>Apartment</p>
											</div>
											<div class="two">
												<span class="price">$20,000</span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="properties">
									<a href="#" class="img d-flex justify-content-center align-items-center" style="background-image: url(images/properties-2.jpg);">
										<div class="icon d-flex justify-content-center align-items-center">
											<span class="icon-search2"></span>
										</div>
									</a>
									<div class="text p-3">
										<div class="d-flex">
											<span class="status rent">Rent</span>
											<div class="one">
												<h3>
													<a href="#">North Parchmore Street</a>
												</h3>
												<p>Apartment</p>
											</div>
											<div class="two">
												<span class="price">
													$2,000 <small>/ month</small>
												</span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="properties">
									<a href="#" class="img d-flex justify-content-center align-items-center" style="background-image: url(images/properties-3.jpg);">
										<div class="icon d-flex justify-content-center align-items-center">
											<span class="icon-search2"></span>
										</div>
									</a>
									<div class="text p-3">
										<span class="status sale">Sale</span>
										<div class="d-flex">
											<div class="one">
												<h3>
													<a href="#">North Parchmore Street</a>
												</h3>
												<p>Apartment</p>
											</div>
											<div class="two">
												<span class="price">$20,000</span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="properties">
									<a href="#" class="img d-flex justify-content-center align-items-center" style="background-image: url(images/properties-4.jpg);">
										<div class="icon d-flex justify-content-center align-items-center">
											<span class="icon-search2"></span>
										</div>
									</a>
									<div class="text p-3">
										<span class="status sale">Sale</span>
										<div class="d-flex">
											<div class="one">
												<h3>
													<a href="#">North Parchmore Street</a>
												</h3>
												<p>Apartment</p>
											</div>
											<div class="two">
												<span class="price">$20,000</span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="properties">
									<a href="#" class="img d-flex justify-content-center align-items-center" style="background-image: url(images/properties-5.jpg);">
										<div class="icon d-flex justify-content-center align-items-center">
											<span class="icon-search2"></span>
										</div>
									</a>
									<div class="text p-3">
										<span class="status rent">Rent</span>
										<div class="d-flex">
											<div class="one">
												<h3>
													<a href="#">North Parchmore Street</a>
												</h3>
												<p>Apartment</p>
											</div>
											<div class="two">
												<span class="price">
													$900 <small>/ month</small>
												</span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="properties">
									<a href="#" class="img d-flex justify-content-center align-items-center" style="background-image: url(images/properties-6.jpg);">
										<div class="icon d-flex justify-content-center align-items-center">
											<span class="icon-search2"></span>
										</div>
									</a>
									<div class="text p-3">
										<span class="status sale">Sale</span>
										<div class="d-flex">
											<div class="one">
												<h3>
													<a href="#">North Parchmore Street</a>
												</h3>
												<p>Apartment</p>
											</div>
											<div class="two">
												<span class="price">$20,000</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="ftco-section bg-light">
			<div class="container">
				<div class="row justify-content-center mb-5 pb-3">
					<div class="col-md-7 heading-section text-center ftco-animate">
						<span class="subheading">Special Offers</span>
						<h2 class="mb-4">Most Recommended Properties</h2>
					</div>
				</div>
			</div>
			<div class="container-fluid">
				<div class="row">
					<div class="col-sm col-md-6 col-lg ftco-animate">
						<div class="properties">
							<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/properties-1.jpg);">
								<div class="icon d-flex justify-content-center align-items-center">
									<span class="icon-search2"></span>
								</div>
							</a>
							<div class="text p-3">
								<span class="status sale">Sale</span>
								<div class="d-flex">
									<div class="one">
										<h3>
											<a href="#">North Parchmore Street</a>
										</h3>
										<p>Apartment</p>
									</div>
									<div class="two">
										<span class="price">$20,000</span>
									</div>
								</div>
								<p>Far far away, behind the word mountains, far from the countries</p>
								<hr/>
								<p class="bottom-area d-flex">
									<span>
										<i class="flaticon-selection"></i> 250sqft
									</span>
									<span class="ml-auto">
										<i class="flaticon-bathtub"></i> 3
									</span>
									<span>
										<i class="flaticon-bed"></i> 4
									</span>
								</p>
							</div>
						</div>
					</div>
					<div class="col-sm col-md-6 col-lg ftco-animate">
						<div class="properties">
							<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/properties-2.jpg);">
								<div class="icon d-flex justify-content-center align-items-center">
									<span class="icon-search2"></span>
								</div>
							</a>
							<div class="text p-3">
								<span class="status sale">Sale</span>
								<div class="d-flex">
									<div class="one">
										<h3>
											<a href="#">North Parchmore Street</a>
										</h3>
										<p>Apartment</p>
									</div>
									<div class="two">
										<span class="price">$20,000</span>
									</div>
								</div>
								<p>Far far away, behind the word mountains, far from the countries</p>
								<hr/>
								<p class="bottom-area d-flex">
									<span>
										<i class="flaticon-selection"></i> 250sqft
									</span>
									<span class="ml-auto">
										<i class="flaticon-bathtub"></i> 3
									</span>
									<span>
										<i class="flaticon-bed"></i> 4
									</span>
								</p>
							</div>
						</div>
					</div>
					<div class="col-sm col-md-6 col-lg ftco-animate">
						<div class="properties">
							<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/properties-3.jpg);">
								<div class="icon d-flex justify-content-center align-items-center">
									<span class="icon-search2"></span>
								</div>
							</a>
							<div class="text p-3">
								<span class="status rent">Rent</span>
								<div class="d-flex">
									<div class="one">
										<h3>
											<a href="#">North Parchmore Street</a>
										</h3>
										<p>Apartment</p>
									</div>
									<div class="two">
										<span class="price">
											$800 <small>/ month</small>
										</span>
									</div>
								</div>
								<p>Far far away, behind the word mountains, far from the countries</p>
								<hr/>
								<p class="bottom-area d-flex">
									<span>
										<i class="flaticon-selection"></i> 250sqft
									</span>
									<span class="ml-auto">
										<i class="flaticon-bathtub"></i> 3
									</span>
									<span>
										<i class="flaticon-bed"></i> 4
									</span>
								</p>
							</div>
						</div>
					</div>
					<div class="col-sm col-md-6 col-lg ftco-animate">
						<div class="properties">
							<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/properties-4.jpg);">
								<div class="icon d-flex justify-content-center align-items-center">
									<span class="icon-search2"></span>
								</div>
							</a>
							<div class="text p-3">
								<span class="status sale">Sale</span>
								<div class="d-flex">
									<div class="one">
										<h3>
											<a href="#">North Parchmore Street</a>
										</h3>
										<p>Apartment</p>
									</div>
									<div class="two">
										<span class="price">$20,000</span>
									</div>
								</div>
								<p>Far far away, behind the word mountains, far from the countries</p>
								<hr/>
								<p class="bottom-area d-flex">
									<span>
										<i class="flaticon-selection"></i> 250sqft
									</span>
									<span class="ml-auto">
										<i class="flaticon-bathtub"></i> 3
									</span>
									<span>
										<i class="flaticon-bed"></i> 4
									</span>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="ftco-section testimony-section bg-light">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-8 ftco-animate">
						<div class="row ftco-animate">
							<div class="col-md-12">
								<div class="carousel-testimony owl-carousel ftco-owl">
									<div class="item">
										<div class="testimony-wrap py-4 pb-5">
											<div class="user-img mb-4" style="background-image: url(images/person_1.jpg)">
												<span class="quote d-flex align-items-center justify-content-center">
													<i class="icon-quote-left"></i>
												</span>
											</div>
											<div class="text text-center">
												<p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
												<p class="name">Roger Scott</p>
												<span class="position">Clients</span>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="testimony-wrap py-4 pb-5">
											<div class="user-img mb-4" style="background-image: url(images/person_2.jpg)">
												<span class="quote d-flex align-items-center justify-content-center">
													<i class="icon-quote-left"></i>
												</span>
											</div>
											<div class="text text-center">
												<p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
												<p class="name">Roger Scott</p>
												<span class="position">Agent</span>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="testimony-wrap py-4 pb-5">
											<div class="user-img mb-4" style="background-image: url(images/person_3.jpg)">
												<span class="quote d-flex align-items-center justify-content-center">
													<i class="icon-quote-left"></i>
												</span>
											</div>
											<div class="text text-center">
												<p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
												<p class="name">Roger Scott</p>
												<span class="position">Client</span>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="testimony-wrap py-4 pb-5">
											<div class="user-img mb-4" style="background-image: url(images/person_1.jpg)">
												<span class="quote d-flex align-items-center justify-content-center">
													<i class="icon-quote-left"></i>
												</span>
											</div>
											<div class="text text-center">
												<p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
												<p class="name">Roger Scott</p>
												<span class="position">Client</span>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="testimony-wrap py-4 pb-5">
											<div class="user-img mb-4" style="background-image: url(images/person_1.jpg)">
												<span class="quote d-flex align-items-center justify-content-center">
													<i class="icon-quote-left"></i>
												</span>
											</div>
											<div class="text text-center">
												<p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
												<p class="name">Roger Scott</p>
												<span class="position">Client</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="ftco-section-parallax">
			<div class="parallax-img d-flex align-items-center">
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
							<h2>Subcribe to our Newsletter</h2>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in</p>
							<div class="row d-flex justify-content-center mt-5">
								<div class="col-md-8">
									<form class="subscribe-form">
										<div class="form-group d-flex">
											<input type="email" class="form-control" placeholder="Ingresa el correo electronico"/>
											<input type="submit" class="submit px-3"/>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

	</xsl:template>

	<xsl:template name="Property">

		<section class="ftco-search">
			<div class="container">
				<div class="row">
					<div class="col-md-12 search-wrap">
						<h2 class="heading h5 d-flex align-items-center pr-4">
							<span class="ion-ios-search mr-3"></span> Search Property
						</h2>
						<form action="#" class="search-property">
							<div class="row">
								<div class="col-md align-items-end">
									<div class="form-group">
										<label for="#">Keyword</label>
										<div class="form-field">
											<div class="icon">
												<span class="icon-my_location"></span>
											</div>
											<input type="text" class="form-control" placeholder="Keyword"/>
										</div>
									</div>
								</div>
								<div class="col-md align-items-end">
									<div class="form-group">
										<label for="#">Location</label>
										<div class="form-field">
											<div class="icon">
												<span class="icon-my_location"></span>
											</div>
											<input type="text" class="form-control" placeholder="City/Locality Name"/>
										</div>
									</div>
								</div>
								<div class="col-md align-items-end">
									<div class="form-group">
										<label for="#">Property Type</label>
										<div class="form-field">
											<div class="select-wrap">
												<div class="icon">
													<span class="ion-ios-arrow-down"></span>
												</div>
												<select name="" id="" class="form-control">
													<option value="">Type</option>
													<option value="">Commercial</option>
													<option value="">- Office</option>
													<option value="">Residential</option>
													<option value="">Villa</option>
													<option value="">Condominium</option>
													<option value="">Apartment</option>
												</select>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md align-items-end">
									<div class="form-group">
										<label for="#">Property Status</label>
										<div class="form-field">
											<div class="select-wrap">
												<div class="icon">
													<span class="ion-ios-arrow-down"></span>
												</div>
												<select name="" id="" class="form-control">
													<option value="">Type</option>
													<option value="">Rent</option>
													<option value="">Sale</option>
												</select>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md align-items-end">
									<div class="form-group">
										<label for="#">Agents</label>
										<div class="form-field">
											<div class="select-wrap">
												<div class="icon">
													<span class="ion-ios-arrow-down"></span>
												</div>
												<select name="" id="" class="form-control">
													<option value="">Any</option>
													<option value="">Jonh Doe</option>
													<option value="">Doe Mags</option>
													<option value="">Kenny Scott</option>
													<option value="">Emily Storm</option>
												</select>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md align-items-end">
									<div class="form-group">
										<label for="#">Min Beds</label>
										<div class="form-field">
											<div class="select-wrap">
												<div class="icon">
													<span class="ion-ios-arrow-down"></span>
												</div>
												<select name="" id="" class="form-control">
													<option value="">1</option>
													<option value="">2</option>
													<option value="">3</option>
													<option value="">4</option>
													<option value="">5</option>
												</select>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md align-items-end">
									<div class="form-group">
										<label for="#">Min Bathroom</label>
										<div class="form-field">
											<div class="select-wrap">
												<div class="icon">
													<span class="ion-ios-arrow-down"></span>
												</div>
												<select name="" id="" class="form-control">
													<option value="">1</option>
													<option value="">2</option>
													<option value="">3</option>
													<option value="">4</option>
													<option value="">5</option>
												</select>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md align-items-end">
									<div class="form-group">
										<label for="#">Min Price</label>
										<div class="form-field">
											<div class="select-wrap">
												<div class="icon">
													<span class="ion-ios-arrow-down"></span>
												</div>
												<select name="" id="" class="form-control">
													<option value="">Min Price</option>
													<option value="">$1,000</option>
													<option value="">$5,000</option>
													<option value="">$10,000</option>
													<option value="">$50,000</option>
													<option value="">$100,000</option>
													<option value="">$200,000</option>
													<option value="">$300,000</option>
													<option value="">$400,000</option>
													<option value="">$500,000</option>
													<option value="">$600,000</option>
													<option value="">$700,000</option>
													<option value="">$800,000</option>
													<option value="">$900,000</option>
													<option value="">$1,000,000</option>
												</select>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md align-items-end">
									<div class="form-group">
										<label for="#">Min Price</label>
										<div class="form-field">
											<div class="select-wrap">
												<div class="icon">
													<span class="ion-ios-arrow-down"></span>
												</div>
												<select name="" id="" class="form-control">
													<option value="">Min Price</option>
													<option value="">$5,000</option>
													<option value="">$10,000</option>
													<option value="">$50,000</option>
													<option value="">$100,000</option>
													<option value="">$200,000</option>
													<option value="">$300,000</option>
													<option value="">$400,000</option>
													<option value="">$500,000</option>
													<option value="">$600,000</option>
													<option value="">$700,000</option>
													<option value="">$800,000</option>
													<option value="">$900,000</option>
													<option value="">$1,000,000</option>
													<option value="">$2,000,000</option>
												</select>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md align-items-end">
									<div class="form-group">
										<label for="#">
											Min Area <span>(sq ft)</span>
										</label>
										<div class="form-field">
											<div class="icon">
												<span class="icon-my_location"></span>
											</div>
											<input type="text" class="form-control" placeholder="Min Area"/>
										</div>
									</div>
								</div>
								<div class="col-md align-items-end">
									<div class="form-group">
										<label for="#">
											Max Area <span>(sq ft)</span>
										</label>
										<div class="form-field">
											<div class="icon">
												<span class="icon-my_location"></span>
											</div>
											<input type="text" class="form-control" placeholder="Max Area"/>
										</div>
									</div>
								</div>
								<div class="col-md align-self-end">
									<div class="form-group">
										<div class="form-field">
											<input type="submit" value="Search" class="form-control btn btn-primary"/>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>


		<section class="ftco-section bg-light">
			<div class="container">
				<div class="row">
					<div class="col-md-4 ftco-animate">
						<div class="properties">
							<a href="property-single.html" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/properties-1.jpg);">
								<div class="icon d-flex justify-content-center align-items-center">
									<span class="icon-search2"></span>
								</div>
							</a>
							<div class="text p-3">
								<span class="status sale">Sale</span>
								<div class="d-flex">
									<div class="one">
										<h3>
											<a href="property-single.html">North Parchmore Street</a>
										</h3>
										<p>Apartment</p>
									</div>
									<div class="two">
										<span class="price">$20,000</span>
									</div>
								</div>
								<p>Far far away, behind the word mountains, far from the countries</p>
								<hr/>
								<p class="bottom-area d-flex">
									<span>
										<i class="flaticon-selection"></i> 250sqft
									</span>
									<span class="ml-auto">
										<i class="flaticon-bathtub"></i> 3
									</span>
									<span>
										<i class="flaticon-bed"></i> 4
									</span>
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 ftco-animate">
						<div class="properties">
							<a href="property-single.html" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/properties-2.jpg);">
								<div class="icon d-flex justify-content-center align-items-center">
									<span class="icon-search2"></span>
								</div>
							</a>
							<div class="text p-3">
								<span class="status sale">Sale</span>
								<div class="d-flex">
									<div class="one">
										<h3>
											<a href="property-single.html">North Parchmore Street</a>
										</h3>
										<p>Apartment</p>
									</div>
									<div class="two">
										<span class="price">$20,000</span>
									</div>
								</div>
								<p>Far far away, behind the word mountains, far from the countries</p>
								<hr/>
								<p class="bottom-area d-flex">
									<span>
										<i class="flaticon-selection"></i> 250sqft
									</span>
									<span class="ml-auto">
										<i class="flaticon-bathtub"></i> 3
									</span>
									<span>
										<i class="flaticon-bed"></i> 4
									</span>
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 ftco-animate">
						<div class="properties">
							<a href="property-single.html" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/properties-3.jpg);">
								<div class="icon d-flex justify-content-center align-items-center">
									<span class="icon-search2"></span>
								</div>
							</a>
							<div class="text p-3">
								<span class="status rent">Rent</span>
								<div class="d-flex">
									<div class="one">
										<h3>
											<a href="property-single.html">North Parchmore Street</a>
										</h3>
										<p>Apartment</p>
									</div>
									<div class="two">
										<span class="price">
											$800 <small>/ month</small>
										</span>
									</div>
								</div>
								<p>Far far away, behind the word mountains, far from the countries</p>
								<hr/>
								<p class="bottom-area d-flex">
									<span>
										<i class="flaticon-selection"></i> 250sqft
									</span>
									<span class="ml-auto">
										<i class="flaticon-bathtub"></i> 3
									</span>
									<span>
										<i class="flaticon-bed"></i> 4
									</span>
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 ftco-animate">
						<div class="properties">
							<a href="property-single.html" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/properties-4.jpg);">
								<div class="icon d-flex justify-content-center align-items-center">
									<span class="icon-search2"></span>
								</div>
							</a>
							<div class="text p-3">
								<span class="status sale">Sale</span>
								<div class="d-flex">
									<div class="one">
										<h3>
											<a href="property-single.html">North Parchmore Street</a>
										</h3>
										<p>Apartment</p>
									</div>
									<div class="two">
										<span class="price">$20,000</span>
									</div>
								</div>
								<p>Far far away, behind the word mountains, far from the countries</p>
								<hr/>
								<p class="bottom-area d-flex">
									<span>
										<i class="flaticon-selection"></i> 250sqft
									</span>
									<span class="ml-auto">
										<i class="flaticon-bathtub"></i> 3
									</span>
									<span>
										<i class="flaticon-bed"></i> 4
									</span>
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 ftco-animate">
						<div class="properties">
							<a href="property-single.html" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/properties-5.jpg);">
								<div class="icon d-flex justify-content-center align-items-center">
									<span class="icon-search2"></span>
								</div>
							</a>
							<div class="text p-3">
								<span class="status sale">Sale</span>
								<div class="d-flex">
									<div class="one">
										<h3>
											<a href="property-single.html">North Parchmore Street</a>
										</h3>
										<p>Apartment</p>
									</div>
									<div class="two">
										<span class="price">$20,000</span>
									</div>
								</div>
								<p>Far far away, behind the word mountains, far from the countries</p>
								<hr/>
								<p class="bottom-area d-flex">
									<span>
										<i class="flaticon-selection"></i> 250sqft
									</span>
									<span class="ml-auto">
										<i class="flaticon-bathtub"></i> 3
									</span>
									<span>
										<i class="flaticon-bed"></i> 4
									</span>
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 ftco-animate">
						<div class="properties">
							<a href="property-single.html" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/properties-6.jpg);">
								<div class="icon d-flex justify-content-center align-items-center">
									<span class="icon-search2"></span>
								</div>
							</a>
							<div class="text p-3">
								<span class="status sale">Sale</span>
								<div class="d-flex">
									<div class="one">
										<h3>
											<a href="property-single.html">North Parchmore Street</a>
										</h3>
										<p>Apartment</p>
									</div>
									<div class="two">
										<span class="price">$20,000</span>
									</div>
								</div>
								<p>Far far away, behind the word mountains, far from the countries</p>
								<hr/>
								<p class="bottom-area d-flex">
									<span>
										<i class="flaticon-selection"></i> 250sqft
									</span>
									<span class="ml-auto">
										<i class="flaticon-bathtub"></i> 3
									</span>
									<span>
										<i class="flaticon-bed"></i> 4
									</span>
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 ftco-animate">
						<div class="properties">
							<a href="property-single.html" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/properties-7.jpg);">
								<div class="icon d-flex justify-content-center align-items-center">
									<span class="icon-search2"></span>
								</div>
							</a>
							<div class="text p-3">
								<span class="status rent">Rent</span>
								<div class="d-flex">
									<div class="one">
										<h3>
											<a href="property-single.html">North Parchmore Street</a>
										</h3>
										<p>Apartment</p>
									</div>
									<div class="two">
										<span class="price">
											$899 <small>/ month</small>
										</span>
									</div>
								</div>
								<p>Far far away, behind the word mountains, far from the countries</p>
								<hr/>
								<p class="bottom-area d-flex">
									<span>
										<i class="flaticon-selection"></i> 250sqft
									</span>
									<span class="ml-auto">
										<i class="flaticon-bathtub"></i> 3
									</span>
									<span>
										<i class="flaticon-bed"></i> 4
									</span>
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 ftco-animate">
						<div class="properties">
							<a href="property-single.html" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/properties-8.jpg);">
								<div class="icon d-flex justify-content-center align-items-center">
									<span class="icon-search2"></span>
								</div>
							</a>
							<div class="text p-3">
								<span class="status sale">Sale</span>
								<div class="d-flex">
									<div class="one">
										<h3>
											<a href="property-single.html">North Parchmore Street</a>
										</h3>
										<p>Apartment</p>
									</div>
									<div class="two">
										<span class="price">$20,000</span>
									</div>
								</div>
								<p>Far far away, behind the word mountains, far from the countries</p>
								<hr/>
								<p class="bottom-area d-flex">
									<span>
										<i class="flaticon-selection"></i> 250sqft
									</span>
									<span class="ml-auto">
										<i class="flaticon-bathtub"></i> 3
									</span>
									<span>
										<i class="flaticon-bed"></i> 4
									</span>
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 ftco-animate">
						<div class="properties">
							<a href="property-single.html" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/properties-9.jpg);">
								<div class="icon d-flex justify-content-center align-items-center">
									<span class="icon-search2"></span>
								</div>
							</a>
							<div class="text p-3">
								<span class="status sale">Sale</span>
								<div class="d-flex">
									<div class="one">
										<h3>
											<a href="property-single.html">North Parchmore Street</a>
										</h3>
										<p>Apartment</p>
									</div>
									<div class="two">
										<span class="price">$20,000</span>
									</div>
								</div>
								<p>Far far away, behind the word mountains, far from the countries</p>
								<hr/>
								<p class="bottom-area d-flex">
									<span>
										<i class="flaticon-selection"></i> 250sqft
									</span>
									<span class="ml-auto">
										<i class="flaticon-bathtub"></i> 3
									</span>
									<span>
										<i class="flaticon-bed"></i> 4
									</span>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row mt-5">
					<div class="col text-center">
						<div class="block-27">
							<ul>
								<li>
									<a href="#">&lt;</a>
								</li>
								<li class="active">
									<span>1</span>
								</li>
								<li>
									<a href="#">2</a>
								</li>
								<li>
									<a href="#">3</a>
								</li>
								<li>
									<a href="#">4</a>
								</li>
								<li>
									<a href="#">5</a>
								</li>
								<li>
									<a href="#">&gt;</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template name="Agents">

		<section class="ftco-section bg-light">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-lg-3 ftco-animate">
						<div class="staff">
							<div class="img" style="background-image: url(images/person_1.jpg);"></div>
							<div class="text pt-4">
								<h3>
									<a href="#">Edward Howard</a>
								</h3>
								<span class="position mb-2">4 Listing</span>
								<p>I am an ambitious workaholic, but apart from that, pretty simple person.</p>
								<ul class="ftco-social d-flex">
									<li class="ftco-animate">
										<a href="#">
											<span class="icon-twitter"></span>
										</a>
									</li>
									<li class="ftco-animate">
										<a href="#">
											<span class="icon-facebook"></span>
										</a>
									</li>
									<li class="ftco-animate">
										<a href="#">
											<span class="icon-google-plus"></span>
										</a>
									</li>
									<li class="ftco-animate">
										<a href="#">
											<span class="icon-instagram"></span>
										</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-3 ftco-animate">
						<div class="staff">
							<div class="img" style="background-image: url(images/person_2.jpg);"></div>
							<div class="text pt-4">
								<h3>
									<a href="#">Edward Howard</a>
								</h3>
								<span class="position mb-2">7 Listing</span>
								<p>I am an ambitious workaholic, but apart from that, pretty simple person.</p>
								<ul class="ftco-social d-flex">
									<li class="ftco-animate">
										<a href="#">
											<span class="icon-twitter"></span>
										</a>
									</li>
									<li class="ftco-animate">
										<a href="#">
											<span class="icon-facebook"></span>
										</a>
									</li>
									<li class="ftco-animate">
										<a href="#">
											<span class="icon-google-plus"></span>
										</a>
									</li>
									<li class="ftco-animate">
										<a href="#">
											<span class="icon-instagram"></span>
										</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-3 ftco-animate">
						<div class="staff">
							<div class="img" style="background-image: url(images/person_3.jpg);"></div>
							<div class="text pt-4">
								<h3>
									<a href="#">Edward Howard</a>
								</h3>
								<span class="position mb-2">6 Listing</span>
								<p>I am an ambitious workaholic, but apart from that, pretty simple person.</p>
								<ul class="ftco-social d-flex">
									<li class="ftco-animate">
										<a href="#">
											<span class="icon-twitter"></span>
										</a>
									</li>
									<li class="ftco-animate">
										<a href="#">
											<span class="icon-facebook"></span>
										</a>
									</li>
									<li class="ftco-animate">
										<a href="#">
											<span class="icon-google-plus"></span>
										</a>
									</li>
									<li class="ftco-animate">
										<a href="#">
											<span class="icon-instagram"></span>
										</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-3 ftco-animate">
						<div class="staff">
							<div class="img" style="background-image: url(images/person_4.jpg);"></div>
							<div class="text pt-4">
								<h3>
									<a href="#">Edward Howard</a>
								</h3>
								<span class="position mb-2">5 Listing</span>
								<p>I am an ambitious workaholic, but apart from that, pretty simple person.</p>
								<ul class="ftco-social d-flex">
									<li class="ftco-animate">
										<a href="#">
											<span class="icon-twitter"></span>
										</a>
									</li>
									<li class="ftco-animate">
										<a href="#">
											<span class="icon-facebook"></span>
										</a>
									</li>
									<li class="ftco-animate">
										<a href="#">
											<span class="icon-google-plus"></span>
										</a>
									</li>
									<li class="ftco-animate">
										<a href="#">
											<span class="icon-instagram"></span>
										</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-3 ftco-animate">
						<div class="staff">
							<div class="img" style="background-image: url(images/staff-1.jpg);"></div>
							<div class="text pt-4">
								<h3>
									<a href="#">Edward Howard</a>
								</h3>
								<span class="position mb-2">8 Listing</span>
								<p>I am an ambitious workaholic, but apart from that, pretty simple person.</p>
								<ul class="ftco-social d-flex">
									<li class="ftco-animate">
										<a href="#">
											<span class="icon-twitter"></span>
										</a>
									</li>
									<li class="ftco-animate">
										<a href="#">
											<span class="icon-facebook"></span>
										</a>
									</li>
									<li class="ftco-animate">
										<a href="#">
											<span class="icon-google-plus"></span>
										</a>
									</li>
									<li class="ftco-animate">
										<a href="#">
											<span class="icon-instagram"></span>
										</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-3 ftco-animate">
						<div class="staff">
							<div class="img" style="background-image: url(images/staff-2.jpg);"></div>
							<div class="text pt-4">
								<h3>
									<a href="#">Edward Howard</a>
								</h3>
								<span class="position mb-2">4 Listing</span>
								<p>I am an ambitious workaholic, but apart from that, pretty simple person.</p>
								<ul class="ftco-social d-flex">
									<li class="ftco-animate">
										<a href="#">
											<span class="icon-twitter"></span>
										</a>
									</li>
									<li class="ftco-animate">
										<a href="#">
											<span class="icon-facebook"></span>
										</a>
									</li>
									<li class="ftco-animate">
										<a href="#">
											<span class="icon-google-plus"></span>
										</a>
									</li>
									<li class="ftco-animate">
										<a href="#">
											<span class="icon-instagram"></span>
										</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-3 ftco-animate">
						<div class="staff">
							<div class="img" style="background-image: url(images/staff-3.jpg);"></div>
							<div class="text pt-4">
								<h3>
									<a href="#">Edward Howard</a>
								</h3>
								<span class="position mb-2">5 Listing</span>
								<p>I am an ambitious workaholic, but apart from that, pretty simple person.</p>
								<ul class="ftco-social d-flex">
									<li class="ftco-animate">
										<a href="#">
											<span class="icon-twitter"></span>
										</a>
									</li>
									<li class="ftco-animate">
										<a href="#">
											<span class="icon-facebook"></span>
										</a>
									</li>
									<li class="ftco-animate">
										<a href="#">
											<span class="icon-google-plus"></span>
										</a>
									</li>
									<li class="ftco-animate">
										<a href="#">
											<span class="icon-instagram"></span>
										</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-3 ftco-animate">
						<div class="staff">
							<div class="img" style="background-image: url(images/staff-4.jpg);"></div>
							<div class="text pt-4">
								<h3>
									<a href="#">Edward Howard</a>
								</h3>
								<span class="position mb-2">8 Listing</span>
								<p>I am an ambitious workaholic, but apart from that, pretty simple person.</p>
								<ul class="ftco-social d-flex">
									<li class="ftco-animate">
										<a href="#">
											<span class="icon-twitter"></span>
										</a>
									</li>
									<li class="ftco-animate">
										<a href="#">
											<span class="icon-facebook"></span>
										</a>
									</li>
									<li class="ftco-animate">
										<a href="#">
											<span class="icon-google-plus"></span>
										</a>
									</li>
									<li class="ftco-animate">
										<a href="#">
											<span class="icon-instagram"></span>
										</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="row mt-5">
					<div class="col text-center">
						<div class="block-27">
							<ul>
								<li>
									<a href="#">&lt;</a>
								</li>
								<li class="active">
									<span>1</span>
								</li>
								<li>
									<a href="#">2</a>
								</li>
								<li>
									<a href="#">3</a>
								</li>
								<li>
									<a href="#">4</a>
								</li>
								<li>
									<a href="#">5</a>
								</li>
								<li>
									<a href="#">&gt;</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>

	</xsl:template>

	<xsl:template name="About">

		<section class="ftco-section ftc-no-pb">
			<div class="container">
				<div class="row no-gutters">
					<div class="col-md-5 p-md-5 img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/about.jpg);">
						<a href="https://vimeo.com/45830194" class="icon popup-vimeo d-flex justify-content-center align-items-center">
							<span class="icon-play"></span>
						</a>
					</div>
					<div class="col-md-7 wrap-about pb-md-5 ftco-animate">
						<div class="heading-section heading-section-wo-line mb-5 pl-md-5">
							<div class="pl-md-5 ml-md-5">
								<span class="subheading">Company Overview</span>
								<h2 class="mb-4">Learned about the Law</h2>
							</div>
						</div>
						<div class="pl-md-5 ml-md-5 mb-5">
							<p>On her way she met a copy. The copy warned the Little Blind Text, that where it came from it would have been rewritten a thousand times and everything that was left from its origin would be the word "and" and the Little Blind Text should turn around and return to its own, safe country. But nothing the copy said could convince her and so it didn’t take long until a few insidious Copy Writers ambushed her, made her drunk with Longe and Parole and dragged her into their agency, where they abused her for their.</p>
							<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>
							<p>
								<a href="#" class="btn-custom">
									Learn More <span class="ion-ios-arrow-forward"></span>
								</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="ftco-section ftco-counter img" id="section-counter" style="background-image: url(images/bg_1.jpg);">
			<div class="container">
				<div class="row justify-content-center mb-3 pb-3">
					<div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
						<h2 class="mb-4">Some fun facts</h2>
					</div>
				</div>
				<div class="row justify-content-center">
					<div class="col-md-10">
						<div class="row">
							<div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
								<div class="block-18 text-center">
									<div class="text">
										<strong class="number" data-number="9000">0</strong>
										<span>Happy Customers</span>
									</div>
								</div>
							</div>
							<div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
								<div class="block-18 text-center">
									<div class="text">
										<strong class="number" data-number="10000">0</strong>
										<span>Properties</span>
									</div>
								</div>
							</div>
							<div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
								<div class="block-18 text-center">
									<div class="text">
										<strong class="number" data-number="1000">0</strong>
										<span>Agents</span>
									</div>
								</div>
							</div>
							<div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
								<div class="block-18 text-center">
									<div class="text">
										<strong class="number" data-number="100">0</strong>
										<span>Awards</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

	</xsl:template>

	<xsl:template name="Blog">

		<section class="ftco-section bg-light">
			<div class="container">
				<div class="row d-flex">
					
					<!--Quiero redirigir a otro template para cada blog y que sea el template de ese blog seleccionado-->
					
					<!--<xsl:for-each select="blog/entrada">
						<xsl:choose>
							<xsl:when test="$TipoMenu = @Id">
								<li class="nav-item active">
									<a href="{@Url}" class="nav-link">
										<xsl:value-of select="@Texto"/>
									</a>
								</li>
							</xsl:when>
							<xsl:otherwise>
								<li class="nav-item">
									<a href="{@Url}" class="nav-link">
										<xsl:value-of select="@Texto"/>
									</a>
								</li>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:for-each>-->
					<div class="col-md-3 d-flex ftco-animate">
						<div class="blog-entry align-self-stretch">
							<a href="blog-single.html" class="block-20" style="background-image: url('images/image_1.jpg');">
							</a>
							<div class="text mt-3 d-block">
								<h3 class="heading mt-3">
									<a href="#">Even the all-powerful Pointing has no control about the blind texts</a>
								</h3>
								<div class="meta mb-3">
									<div>
										<a href="#">Dec 6, 2018</a>
									</div>
									<div>
										<a href="#">Admin</a>
									</div>
									<div>
										<a href="#" class="meta-chat">
											<span class="icon-chat"></span> 3
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 d-flex ftco-animate">
						<div class="blog-entry align-self-stretch">
							<a href="blog-single.html" class="block-20" style="background-image: url('images/image_2.jpg');">
							</a>
							<div class="text mt-3">
								<h3 class="heading mt-3">
									<a href="#">Even the all-powerful Pointing has no control about the blind texts</a>
								</h3>
								<div class="meta mb-3">
									<div>
										<a href="#">Dec 6, 2018</a>
									</div>
									<div>
										<a href="#">Admin</a>
									</div>
									<div>
										<a href="#" class="meta-chat">
											<span class="icon-chat"></span> 3
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 d-flex ftco-animate">
						<div class="blog-entry align-self-stretch">
							<a href="blog-single.html" class="block-20" style="background-image: url('images/image_3.jpg');">
							</a>
							<div class="text mt-3">
								<h3 class="heading mt-3">
									<a href="#">Even the all-powerful Pointing has no control about the blind texts</a>
								</h3>
								<div class="meta mb-3">
									<div>
										<a href="#">Dec 6, 2018</a>
									</div>
									<div>
										<a href="#">Admin</a>
									</div>
									<div>
										<a href="#" class="meta-chat">
											<span class="icon-chat"></span> 3
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 d-flex ftco-animate">
						<div class="blog-entry align-self-stretch">
							<a href="blog-single.html" class="block-20" style="background-image: url('images/image_4.jpg');">
							</a>
							<div class="text mt-3">
								<h3 class="heading mt-3">
									<a href="#">Even the all-powerful Pointing has no control about the blind texts</a>
								</h3>
								<div class="meta mb-3">
									<div>
										<a href="#">Dec 6, 2018</a>
									</div>
									<div>
										<a href="#">Admin</a>
									</div>
									<div>
										<a href="#" class="meta-chat">
											<span class="icon-chat"></span> 3
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 d-flex ftco-animate">
						<div class="blog-entry align-self-stretch">
							<a href="blog-single.html" class="block-20" style="background-image: url('images/image_5.jpg');">
							</a>
							<div class="text mt-3 d-block">
								<h3 class="heading mt-3">
									<a href="#">Even the all-powerful Pointing has no control about the blind texts</a>
								</h3>
								<div class="meta mb-3">
									<div>
										<a href="#">Dec 6, 2018</a>
									</div>
									<div>
										<a href="#">Admin</a>
									</div>
									<div>
										<a href="#" class="meta-chat">
											<span class="icon-chat"></span> 3
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 d-flex ftco-animate">
						<div class="blog-entry align-self-stretch">
							<a href="blog-single.html" class="block-20" style="background-image: url('images/image_6.jpg');">
							</a>
							<div class="text mt-3">
								<h3 class="heading mt-3">
									<a href="#">Even the all-powerful Pointing has no control about the blind texts</a>
								</h3>
								<div class="meta mb-3">
									<div>
										<a href="#">Dec 6, 2018</a>
									</div>
									<div>
										<a href="#">Admin</a>
									</div>
									<div>
										<a href="#" class="meta-chat">
											<span class="icon-chat"></span> 3
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 d-flex ftco-animate">
						<div class="blog-entry align-self-stretch">
							<a href="blog-single.html" class="block-20" style="background-image: url('images/image_7.jpg');">
							</a>
							<div class="text mt-3">
								<h3 class="heading mt-3">
									<a href="#">Even the all-powerful Pointing has no control about the blind texts</a>
								</h3>
								<div class="meta mb-3">
									<div>
										<a href="#">Dec 6, 2018</a>
									</div>
									<div>
										<a href="#">Admin</a>
									</div>
									<div>
										<a href="#" class="meta-chat">
											<span class="icon-chat"></span> 3
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 d-flex ftco-animate">
						<div class="blog-entry align-self-stretch">
							<a href="blog-single.html" class="block-20" style="background-image: url('images/image_8.jpg');">
							</a>
							<div class="text mt-3">
								<h3 class="heading mt-3">
									<a href="#">Even the all-powerful Pointing has no control about the blind texts</a>
								</h3>
								<div class="meta mb-3">
									<div>
										<a href="#">Dec 6, 2018</a>
									</div>
									<div>
										<a href="#">Admin</a>
									</div>
									<div>
										<a href="#" class="meta-chat">
											<span class="icon-chat"></span> 3
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row mt-5">
					<div class="col text-center">
						<div class="block-27">
							<ul>
								<li>
									<a href="#">&lt;</a>
								</li>
								<li class="active">
									<span>1</span>
								</li>
								<li>
									<a href="#">2</a>
								</li>
								<li>
									<a href="#">3</a>
								</li>
								<li>
									<a href="#">4</a>
								</li>
								<li>
									<a href="#">5</a>
								</li>
								<li>
									<a href="#">&gt;</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>

	</xsl:template>

	<xsl:template name="BlogSingle">
		<section class="ftco-section ftco-degree-bg">
			<div class="container">
				<div class="row">
					<div class="col-lg-8 ftco-animate">
						<h2 class="mb-3">10 Tips For The Traveler</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis, eius mollitia suscipit, quisquam doloremque distinctio perferendis et doloribus unde architecto optio laboriosam porro adipisci sapiente officiis nemo accusamus ad praesentium? Esse minima nisi et. Dolore perferendis, enim praesentium omnis, iste doloremque quia officia optio deserunt molestiae voluptates soluta architecto tempora.</p>
						<p>
							<img src="images/image_7.jpg" alt="" class="img-fluid"/>
            </p>
						<p>Molestiae cupiditate inventore animi, maxime sapiente optio, illo est nemo veritatis repellat sunt doloribus nesciunt! Minima laborum magni reiciendis qui voluptate quisquam voluptatem soluta illo eum ullam incidunt rem assumenda eveniet eaque sequi deleniti tenetur dolore amet fugit perspiciatis ipsa, odit. Nesciunt dolor minima esse vero ut ea, repudiandae suscipit!</p>
						<h2 class="mb-3 mt-5">#2. Creative WordPress Themes</h2>
						<p>Temporibus ad error suscipit exercitationem hic molestiae totam obcaecati rerum, eius aut, in. Exercitationem atque quidem tempora maiores ex architecto voluptatum aut officia doloremque. Error dolore voluptas, omnis molestias odio dignissimos culpa ex earum nisi consequatur quos odit quasi repellat qui officiis reiciendis incidunt hic non? Debitis commodi aut, adipisci.</p>
						<p>
							<img src="images/image_8.jpg" alt="" class="img-fluid"/>
            </p>
						<p>Quisquam esse aliquam fuga distinctio, quidem delectus veritatis reiciendis. Nihil explicabo quod, est eos ipsum. Unde aut non tenetur tempore, nisi culpa voluptate maiores officiis quis vel ab consectetur suscipit veritatis nulla quos quia aspernatur perferendis, libero sint. Error, velit, porro. Deserunt minus, quibusdam iste enim veniam, modi rem maiores.</p>
						<p>Odit voluptatibus, eveniet vel nihil cum ullam dolores laborum, quo velit commodi rerum eum quidem pariatur! Quia fuga iste tenetur, ipsa vel nisi in dolorum consequatur, veritatis porro explicabo soluta commodi libero voluptatem similique id quidem? Blanditiis voluptates aperiam non magni. Reprehenderit nobis odit inventore, quia laboriosam harum excepturi ea.</p>
						<p>Adipisci vero culpa, eius nobis soluta. Dolore, maxime ullam ipsam quidem, dolor distinctio similique asperiores voluptas enim, exercitationem ratione aut adipisci modi quod quibusdam iusto, voluptates beatae iure nemo itaque laborum. Consequuntur et pariatur totam fuga eligendi vero dolorum provident. Voluptatibus, veritatis. Beatae numquam nam ab voluptatibus culpa, tenetur recusandae!</p>
						<p>Voluptas dolores dignissimos dolorum temporibus, autem aliquam ducimus at officia adipisci quasi nemo a perspiciatis provident magni laboriosam repudiandae iure iusto commodi debitis est blanditiis alias laborum sint dolore. Dolores, iure, reprehenderit. Error provident, pariatur cupiditate soluta doloremque aut ratione. Harum voluptates mollitia illo minus praesentium, rerum ipsa debitis, inventore?</p>
						<div class="tag-widget post-tag-container mb-5 mt-5">
							<div class="tagcloud">
								<a href="#" class="tag-cloud-link">Life</a>
								<a href="#" class="tag-cloud-link">Sport</a>
								<a href="#" class="tag-cloud-link">Tech</a>
								<a href="#" class="tag-cloud-link">Travel</a>
							</div>
						</div>

						<div class="about-author d-flex p-4 bg-light">
							<div class="bio align-self-md-center mr-4">
								<img src="images/person_1.jpg" alt="Image placeholder" class="img-fluid mb-4"/>
              </div>
							<div class="desc align-self-md-center">
								<h3>Lance Smith</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente consectetur similique, inventore eos fugit cupiditate numquam!</p>
							</div>
						</div>


						<div class="pt-5 mt-5">
							<h3 class="mb-5">6 Comments</h3>
							<ul class="comment-list">
								<li class="comment">
									<div class="vcard bio">
										<img src="images/person_1.jpg" alt="Image placeholder"/>
                  </div>
									<div class="comment-body">
										<h3>John Doe</h3>
										<div class="meta">June 27, 2018 at 2:21pm</div>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
										<p>
											<a href="#" class="reply">Reply</a>
										</p>
									</div>
								</li>

								<li class="comment">
									<div class="vcard bio">
										<img src="images/person_1.jpg" alt="Image placeholder"/>
                  </div>
									<div class="comment-body">
										<h3>John Doe</h3>
										<div class="meta">June 27, 2018 at 2:21pm</div>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
										<p>
											<a href="#" class="reply">Reply</a>
										</p>
									</div>

									<ul class="children">
										<li class="comment">
											<div class="vcard bio">
												<img src="images/person_1.jpg" alt="Image placeholder"/>
                      </div>
											<div class="comment-body">
												<h3>John Doe</h3>
												<div class="meta">June 27, 2018 at 2:21pm</div>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
												<p>
													<a href="#" class="reply">Reply</a>
												</p>
											</div>


											<ul class="children">
												<li class="comment">
													<div class="vcard bio">
														<img src="images/person_1.jpg" alt="Image placeholder"/>
                          </div>
													<div class="comment-body">
														<h3>John Doe</h3>
														<div class="meta">June 27, 2018 at 2:21pm</div>
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
														<p>
															<a href="#" class="reply">Reply</a>
														</p>
													</div>

													<ul class="children">
														<li class="comment">
															<div class="vcard bio">
																<img src="images/person_1.jpg" alt="Image placeholder"/>
                                </div>
															<div class="comment-body">
																<h3>John Doe</h3>
																<div class="meta">June 27, 2018 at 2:21pm</div>
																<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
																<p>
																	<a href="#" class="reply">Reply</a>
																</p>
															</div>
														</li>
													</ul>
												</li>
											</ul>
										</li>
									</ul>
								</li>

								<li class="comment">
									<div class="vcard bio">
										<img src="images/person_1.jpg" alt="Image placeholder"/>
                  </div>
									<div class="comment-body">
										<h3>John Doe</h3>
										<div class="meta">June 27, 2018 at 2:21pm</div>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
										<p>
											<a href="#" class="reply">Reply</a>
										</p>
									</div>
								</li>
							</ul>
							<!-- END comment-list -->

							<div class="comment-form-wrap pt-5">
								<h3 class="mb-5">Leave a comment</h3>
								<form action="#" class="p-5 bg-light">
									<div class="form-group">
										<label for="name">Name *</label>
										<input type="text" class="form-control" id="name"/>
                  </div>
									<div class="form-group">
										<label for="email">Email *</label>
										<input type="email" class="form-control" id="email"/>
                  </div>
									<div class="form-group">
										<label for="website">Website</label>
										<input type="url" class="form-control" id="website"/>
                  </div>

									<div class="form-group">
										<label for="message">Message</label>
										<textarea name="" id="message" cols="30" rows="10" class="form-control"></textarea>
									</div>
									<div class="form-group">
										<input type="submit" value="Post Comment" class="btn py-3 px-4 btn-primary"/>
                  </div>

								</form>
							</div>
						</div>

					</div>
					<!-- .col-md-8 -->
					<div class="col-lg-4 sidebar ftco-animate">
						<div class="sidebar-box">
							<form action="#" class="search-form">
								<div class="form-group">
									<span class="icon fa fa-search"></span>
									<input type="text" class="form-control" placeholder="Type a keyword and hit enter"/>
                </div>
							</form>
						</div>
						<div class="sidebar-box ftco-animate">
							<div class="categories">
								<h3>Categories</h3>
								<li>
									<a href="#">
										Properties <span>(12)</span>
									</a>
								</li>
								<li>
									<a href="#">
										Home <span>(22)</span>
									</a>
								</li>
								<li>
									<a href="#">
										House <span>(37)</span>
									</a>
								</li>
								<li>
									<a href="#">
										Villa <span>(42)</span>
									</a>
								</li>
								<li>
									<a href="#">
										Apartment <span>(14)</span>
									</a>
								</li>
								<li>
									<a href="#">
										Condominium <span>(140)</span>
									</a>
								</li>
							</div>
						</div>

						<div class="sidebar-box ftco-animate">
							<h3>Recent Blog</h3>
							<div class="block-21 mb-4 d-flex">
								<a class="blog-img mr-4" style="background-image: url(images/image_1.jpg);"></a>
								<div class="text">
									<h3 class="heading">
										<a href="#">Even the all-powerful Pointing has no control about the blind texts</a>
									</h3>
									<div class="meta">
										<div>
											<a href="#">
												<span class="icon-calendar"></span> July 12, 2018
											</a>
										</div>
										<div>
											<a href="#">
												<span class="icon-person"></span> Admin
											</a>
										</div>
										<div>
											<a href="#">
												<span class="icon-chat"></span> 19
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="block-21 mb-4 d-flex">
								<a class="blog-img mr-4" style="background-image: url(images/image_2.jpg);"></a>
								<div class="text">
									<h3 class="heading">
										<a href="#">Even the all-powerful Pointing has no control about the blind texts</a>
									</h3>
									<div class="meta">
										<div>
											<a href="#">
												<span class="icon-calendar"></span> July 12, 2018
											</a>
										</div>
										<div>
											<a href="#">
												<span class="icon-person"></span> Admin
											</a>
										</div>
										<div>
											<a href="#">
												<span class="icon-chat"></span> 19
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="block-21 mb-4 d-flex">
								<a class="blog-img mr-4" style="background-image: url(images/image_3.jpg);"></a>
								<div class="text">
									<h3 class="heading">
										<a href="#">Even the all-powerful Pointing has no control about the blind texts</a>
									</h3>
									<div class="meta">
										<div>
											<a href="#">
												<span class="icon-calendar"></span> July 12, 2018
											</a>
										</div>
										<div>
											<a href="#">
												<span class="icon-person"></span> Admin
											</a>
										</div>
										<div>
											<a href="#">
												<span class="icon-chat"></span> 19
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="sidebar-box ftco-animate">
							<h3>Tag Cloud</h3>
							<div class="tagcloud">
								<a href="#" class="tag-cloud-link">dish</a>
								<a href="#" class="tag-cloud-link">menu</a>
								<a href="#" class="tag-cloud-link">food</a>
								<a href="#" class="tag-cloud-link">sweet</a>
								<a href="#" class="tag-cloud-link">tasty</a>
								<a href="#" class="tag-cloud-link">delicious</a>
								<a href="#" class="tag-cloud-link">desserts</a>
								<a href="#" class="tag-cloud-link">drinks</a>
							</div>
						</div>

						<div class="sidebar-box ftco-animate">
							<h3>Paragraph</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente consectetur similique, inventore eos fugit cupiditate numquam!</p>
						</div>
					</div>

				</div>
			</div>
		</section>
		<!-- .section -->

	</xsl:template>


</xsl:stylesheet>