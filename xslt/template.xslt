<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>

	<xsl:param name="Nav" select="Nav"></xsl:param>

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
										<xsl:when test="$Nav= @Id">
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
						<div class="slider-item" style="background-image: url({caracteristicas/Imagen});">
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
					<xsl:when test="$Nav = 0">
						<xsl:call-template name="Home"></xsl:call-template>
					</xsl:when>
					<xsl:when test="$Nav = 1">
						<xsl:call-template name="Property"></xsl:call-template>
					</xsl:when>
					<xsl:when test="$Nav = 2">
						<xsl:call-template name="Agents"></xsl:call-template>
					</xsl:when>
					<xsl:when test="$Nav = 3">
						<xsl:call-template name="About"></xsl:call-template>
					</xsl:when>
					<xsl:when test="$Nav = 4">
						<xsl:call-template name="Blog"></xsl:call-template>
					</xsl:when>
					<xsl:when test="$Nav = 5">
						<xsl:call-template name="VenAJugar"></xsl:call-template>
					</xsl:when>
					<xsl:when test="$Nav = 6">
						<xsl:call-template name="VideoAudio"></xsl:call-template>
					</xsl:when>
					<xsl:when test="$Nav = 7">
						<xsl:call-template name="Ubicacion"></xsl:call-template>
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
						<span class="subheading">Recientes</span>
						<h2 class="mb-4">Propiedades en venta</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="properties-slider owl-carousel ftco-animate">
							<xsl:for-each select="propiedades/propiedad[@estado = 'venta']">

								<div class="item">
									<div class="properties">
										<a href="#" class="img d-flex justify-content-center align-items-center" style="background-image: url({caracteristicas/Imagen});">
											<div class="icon d-flex justify-content-center align-items-center">
												<span class="icon-search2"></span>
											</div>
										</a>
										<div class="text p-3">
											<span class="status sale">
												<xsl:value-of select="@estado"/>
											</span>
											<div class="d-flex">
												<div class="one">
													<h3>
														<a href="#">
															<xsl:value-of select="ciudad"/>
														</a>
													</h3>
													<p>
														<xsl:value-of select="@tipo"/>
													</p>
												</div>
												<div class="two">
													<span class="price">
														<xsl:value-of select="precio"/>
													</span>
												</div>
											</div>
										</div>
									</div>
								</div>

							</xsl:for-each>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="ftco-section bg-light">
			<div class="container">
				<div class="row justify-content-center mb-5 pb-3">
					<div class="col-md-7 heading-section text-center ftco-animate">
						<span class="subheading">Ofertas especiales</span>
						<h2 class="mb-4">Propiedades mas recomendadas</h2>
					</div>
				</div>
			</div>
			<div class="container-fluid">
				<div class="row">
					<xsl:for-each select="propiedades/propiedad/caracteristicas/calificacion">

						<div class="col-sm col-md-6 col-lg ftco-animate">
							<div class="properties">
								<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url({../Imagen});">
									<div class="icon d-flex justify-content-center align-items-center">
										<span class="icon-search2"></span>
									</div>
								</a>
								<div class="text p-3">
									<span class="status sale">
										<xsl:value-of select="../../@estado"/>
									</span>
									<div class="d-flex">
										<div class="one">
											<h3>
												<a href="#">
													<xsl:value-of select="../../ciudad"/>
												</a>
											</h3>
											<p>
												<xsl:value-of select="../../@tipo"/>
											</p>
										</div>
										<div class="two">
											<span class="price">
												<xsl:value-of select="../../precio"/>
											</span>
										</div>
									</div>
									<p>
										<xsl:value-of select="../../descripcionCompleta"/>
									</p>
									<hr/>
									<p class="bottom-area d-flex">
										<span class="ml-auto">
											<i class="flaticon-bathtub"></i>
											<xsl:value-of select="../banos"/>
										</span>
										<span>
											<i class="flaticon-bed"></i>
											<xsl:value-of select="../recamaras"/>
										</span>
									</p>
								</div>
							</div>
						</div>

					</xsl:for-each>
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
									<xsl:for-each select="about/agentes/agente">
										<div class="item">
											<div class="testimony-wrap py-4 pb-5">
												<div class="user-img mb-4" style="background-image: url({Imagen})">
													<span class="quote d-flex align-items-center justify-content-center">
														<i class="icon-quote-left"></i>
													</span>
												</div>
												<div class="text text-center">
													<p class="mb-4">
														<xsl:value-of select="descripcion"/>
													</p>
													<p class="name">
														<xsl:value-of select="nombre"/>
													</p>
													<span class="position">
														<xsl:value-of select="/descripcion/@personalidad"/>
													</span>
												</div>
											</div>
										</div>

									</xsl:for-each>
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


		<script src="js/MiScript.js" type="text/javascript"></script>


		<section class="ftco-search">

			<div class="container">
				<div class="row">
					<div class="col-md-12 search-wrap">
						<h2 class="heading h5 d-flex align-items-center pr-4">
							<span class="ion-ios-search mr-3"></span> Encuentra tu casa
						</h2>
						<form action="#" method="post" class="search-property">
							<div class="row">
								<div class="col-md align-items-end">
									<div class="form-group">
										<label for="#">Palabra Clave</label>
										<div class="form-field">
											<div class="icon">
												<span class="icon-my_location"></span>
											</div>
											<input type="text" class="form-control" placeholder="Palabra clave"/>
										</div>
									</div>
								</div>
								<div class="col-md align-items-end">
									<div class="form-group">
										<label for="#">Tipo de propiedad</label>
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
										<label for="#">Estatus</label>
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
										<label for="#">Agentes</label>
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
										<label for="#">Minimo Cuartos</label>
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
								<div class="col-md align-self-end">
									<div class="form-group">
										<div class="form-field">
											<input type="submit" value="Search" class="form-control btn btn-primary" id="miBoton"/>
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
					<xsl:for-each select="propiedades/propiedad">
						<div class="col-md-4 ftco-animate">
							<div class="properties">
								<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url({caracteristicas/Imagen});">
									<div class="icon d-flex justify-content-center align-items-center">
										<span class="icon-search2"></span>
									</div>
								</a>
								<div class="text p-3">
									<span class="status sale">
										<xsl:value-of select="@estado"/>
									</span>
									<div class="d-flex">
										<div class="one">
											<h3>
												<a href="property-single.html">
													<xsl:value-of select="nombre"/>
												</a>
											</h3>
											<p>
												<xsl:value-of select="@tipo"/>
											</p>
										</div>
										<div class="two">
											<span class="price">
												<xsl:value-of select="precio"/>
											</span>
										</div>
									</div>
									<p>
										<xsl:value-of select="descripcionCompleta"/>
									</p>
									<hr/>
									<p class="bottom-area d-flex">
										<span class="ml-auto">
											<i class="flaticon-bathtub"></i>
											<xsl:value-of select="caracteristicas/banos"/>
										</span>
										<span>
											<i class="flaticon-bed"></i>
											<xsl:value-of select="caracteristicas/recamaras"/>
										</span>
									</p>
								</div>
							</div>
						</div>

					</xsl:for-each>
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
					<xsl:for-each select="about/agentes/agente">
						<div class="col-md-6 col-lg-3 ftco-animate">
							<div class="staff">
								<div class="img" style="background-image: url({Imagen});"></div>
								<div class="text pt-4">
									<h3>
										<a href="#">
											<xsl:value-of select="nombre"/>
										</a>
									</h3>
									<span class="position mb-2">
										viviendas vendida: <xsl:value-of select="viviendasVendidas"/>
									</span>
									<p>
										<xsl:value-of select="descripcion"/>
									</p>
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

					</xsl:for-each>
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
					<div class="col-md-5 p-md-5 img img-2 d-flex justify-content-center align-items-center" style="background-image: url({about/Imagen});">
						<a href="{about/video}" class="icon popup-vimeo d-flex justify-content-center align-items-center">
							<span class="icon-play"></span>
						</a>
					</div>
					<div class="col-md-7 wrap-about pb-md-5 ftco-animate">
						<div class="heading-section heading-section-wo-line mb-5 pl-md-5">
							<div class="pl-md-5 ml-md-5">
								<span class="subheading">
									<xsl:value-of select="about/@nombre"/>
								</span>
								<h2 class="mb-4">
									<xsl:value-of select="about/descripcion/@tipo"/>
								</h2>
							</div>
						</div>
						<div class="pl-md-5 ml-md-5 mb-5">
							<p>
								<xsl:value-of select="about/descripcion"/>
							</p>
							<p>
								<a href="#" class="btn-custom">
									conoce mas <span class="ion-ios-arrow-forward"></span>
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
						<h2 class="mb-4">Datos interesantes</h2>
					</div>
				</div>
				<div class="row justify-content-center">
					<div class="col-md-10">
						<div class="row">
							<xsl:for-each select="about/estadisticas/estadistica">
								<div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
									<div class="block-18 text-center">
										<div class="text">
											<strong class="number" data-number="{@cantidad}">0</strong>
											<span>
												<xsl:value-of select="@tipo"/>
											</span>
										</div>
									</div>
								</div>

							</xsl:for-each>
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
					<xsl:for-each select="blog/entrada">
						<div class="col-md-3 d-flex ftco-animate">
							<div class="blog-entry align-self-stretch">
								<a href="{@Url}" class="block-20" style="background-image: url({Imagen});">
								</a>
								<div class="text mt-3 d-block">
									<h3 class="heading mt-3">
										<a href="#">
											<xsl:value-of select="titulo"/>
										</a>
									</h3>
									<div class="meta mb-3">
										<div>
											<a href="#">
												<xsl:value-of select="fechaPublicacion"/>
											</a>
										</div>
										<div>
											<a href="#"></a>
										</div>
										<div>
											<a href="#" class="meta-chat">
												<span class="icon-chat"></span>
												<xsl:value-of select="numeroComentarios"/>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>

					</xsl:for-each>
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

	<xsl:template name="VenAJugar">

		<!--Referencia CSS-->
		<link href="assets/css/MiniJuego.css" rel="stylesheet"></link>


		<section class="ftco-section testimony-section bg-light">
			<h2>Juego Inmobiliario - Ordena los agentes de acuerdo a tu interes</h2>

				<ul id="list"></ul>
		</section>

		<!--Referencia JS-->
		<script src="assets/js/MiniJuego.js"></script>
		<!--<section class="ftco-section testimony-section bg-light">
			<h2>Ordena los tipos de vivienda</h2>
			<div id="Viviendas">
				<div class="casa"></div>
				<div class="departamento"></div>
				<div class="cuarto"></div>
				<div class="casa"></div>
				<div class="cuarto"></div>
				<div class="departamento"></div>
				<div class="casa"></div>
				<div class="departamento"></div>
				<div class="cuarto"></div>
			</div>
			<div id="departamento"></div>
			<div id="cuarto"></div>
			<div id="casa"></div>
		</section>-->

	</xsl:template>

	<xsl:template name="VideoAudio">
		<section class="ftco-section">
			<div class="container">
				<div class="row">
					<div class="col-lg-8">
						<div class="row">
							<div class="col-md-12 ftco-animate">

								<div class="single-slider owl-carousel">
									<xsl:for-each select="propiedades/propiedadVip/caracteristicas/Imagen">
										<div class="item">
											<!--pendiente-->
											<div class="properties-img" style="background-image: url({@Imagen});"></div>
										</div>

									</xsl:for-each>
								</div>

								<div id="Audio" style="width:100%">
									<audio controls="true" style="width:100%" autoplay="autoplay">
										<source src="assets/audio/videoplayback.m4a"></source>
									</audio>
								</div>
							</div>
							<div class="col-md-12 Properties-single mt-4 mb-5 ftco-animate">

								<h2>
									<xsl:value-of select="propiedades/propiedadVip/nombre"/>
								</h2>
								<p class="rate mb-4">
									<span class="loc">
										<a href="#">
											<i class="icon-map"></i>
											<xsl:value-of select="propiedades/propiedadVip/ciudad"/>
										</a>
									</span>
								</p>
								<p>
									<xsl:value-of select="propiedades/propiedadVip/descripcionCompleta/descripcion[@num=1]"/>
								</p>
								<div class="d-md-flex mt-5 mb-5">
									<ul>
										<li>
											<span>Recamaras: </span>
											<xsl:value-of select="propiedades/propiedadVip/caracteristicas/recamaras"/>
										</li>
										<li>
											<span>Estudio: </span>
											<xsl:value-of select="propiedades/propiedadVip/caracteristicas/cuartoEstudio"/>
										</li>
										<li>
											<span>Garage: </span>
											<xsl:value-of select="propiedades/propiedadVip/caracteristicas/garage"/>
										</li>
									</ul>
									<ul class="ml-md-5">
										<li>
											<span>Año: </span>
											<xsl:value-of select="propiedades/propiedadVip/caracteristicas/fechaconstruccion"/>
										</li>
										<li>
											<span>Estado: </span>
											<xsl:value-of select="propiedades/propiedadVip/@estado"/>
										</li>
									</ul>
								</div>
								<p>
									<xsl:value-of select="propiedades/propiedadVip/descripcionCompleta/descripcion[@num=2]"/>
								</p>
							</div>
							<div class="col-md-12 properties-single ftco-animate ">
								<div class="block-16">
									<section class="tm-section-row ">
										<h2>Video</h2>
										<div id="Video" style="width:100%">
											<video controls="true" width="100%" poster="images/properties-2.jpg">
												<source src="assets/video/casa.mp4"></source>
											</video>
										</div>
										<br></br>
										<br></br>
									</section>
								</div>
							</div>

							<div class="col-md-12 properties-single ftco-animate mb-5 mt-5">
								<h4 class="mb-4">Propiedades relacionadas</h4>
								<div class="row">
									<xsl:for-each select="propiedades/propiedad[@tipo='departamento']">
										<div class="col-md-6 ftco-animate">
											<div class="properties">
												<a href="property-single.html" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url({./caracteristicas/Imagen});">
													<div class="icon d-flex justify-content-center align-items-center">
														<span class="icon-search2"></span>
													</div>
												</a>
												<div class="text p-3">
													<span class="status sale">
														<xsl:value-of select="@estado"/>
													</span>
													<div class="d-flex">
														<div class="one">
															<h3>
																<a href="#">
																	<xsl:value-of select="ciudad"/>
																</a>
															</h3>
															<p>
																<xsl:value-of select="@tipo"/>
															</p>
														</div>
														<div class="two">
															<span class="price">
																<xsl:value-of select="precio"/>
															</span>
														</div>
													</div>
													<hr/>
													<p class="bottom-area d-flex">
														<span class="ml-auto">
															<i class="flaticon-bathtub"></i>
															<xsl:value-of select="caracteristicas/banos"/>
														</span>
														<span>
															<i class="flaticon-bed"></i>
															<xsl:value-of select="caracteristicas/recamaras"/>
														</span>
													</p>
												</div>
											</div>
										</div>

									</xsl:for-each>
								</div>
							</div>

						</div>
					</div>
					<!-- .col-md-8 -->
					<div class="col-lg-4 sidebar ftco-animate">

						<div class="sidebar-box ftco-animate">
							<h3>Blog recieten</h3>

							<xsl:for-each select="blog/entrada">
								<div class="block-21 mb-4 d-flex">
									<a class="blog-img mr-4" style="background-image: url({Imagen});"></a>
									<div class="text">
										<h3 class="heading">
											<a href="#">
												<xsl:value-of select="titulo"/>
											</a>
										</h3>
										<div class="meta">
											<div>
												<a href="#">
													<span class="icon-calendar"></span>
													<xsl:value-of select="fechaPublicacion"/>
												</a>
											</div>
											<div>
												<a href="#">
													<span class="icon-person"></span> Admin
												</a>
											</div>
											<div>
												<a href="#">
													<span class="icon-chat"></span> comentarios:
													<xsl:value-of select="numeroComentarios"/>
												</a>
											</div>
										</div>
									</div>
								</div>

							</xsl:for-each>
						</div>

						<div class="sidebar-box ftco-animate">
							<h3>Mision</h3>
							<p>
								<xsl:value-of select="about/descripcion"/>
							</p>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template name="Ubicacion">

		<!--API de Google-->
		<script>
			// Definir la función initMap globalmente
			function initMap() {
			// Asegúrate de que aquí inicializas el mapa correctamente
			const mapOptions = {
			center: { lat: 20.73143795405191, lng: -100.2846673071275 },  // Cambia estas coordenadas por las deseadas
			zoom: 20
			};
			const map = new google.maps.Map(document.getElementById('map'), mapOptions);
			}
		</script>

		<script>
			<![CDATA[
			(g=>{var h,a,k,p="The Google Maps JavaScript API",c="google",l="importLibrary",q="__ib__",m=document,b=window;b=b[c]||(b[c]={});var d=b.maps||(b.maps={}),r=new Set,e=new URLSearchParams,u=()=>h||(h=new Promise(async(f,n)=>{await (a=m.createElement("script"));e.set("libraries",[...r]+"");for(k in g)e.set(k.replace(/[A-Z]/g,t=>"_"+t[0].toLowerCase()),g[k]);e.set("callback",c+".maps."+q);a.src=`https://maps.${c}apis.com/maps/api/js?`+e;d[q]=f;a.onerror=()=>h=n(Error(p+" could not load."));a.nonce=m.querySelector("script[nonce]")?.nonce||"";m.head.append(a)}));d[l]?console.warn(p+" only loads once. Ignoring:",g):d[l]=(f,...n)=>r.add(f)&&u().then(()=>d[l](f,...n))})({
			key: "AIzaSyCWeeateTaYGqsHhNcmoDfT7Us-vLDZVPs",
			// Add other bootstrap parameters as needed, using camel case.
			// Use the 'v' parameter to indicate the version to load (alpha, beta, weekly, etc.)
			});]]>
		</script>

		<!--Referencia a mi archivo JS-->
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCWeeateTaYGqsHhNcmoDfT7Us-vLDZVPs&amp;callback=initMap"
				async="" defer=""></script>


		<!--Mis scripts personalizados-->
		<script src="assets/js/MiScript.js" type="text/javascript"></script>
		<script src="assets/js/google.js" type="module"></script>

		<section class="ftco-section">
			<!--Mapa-->
			<div data-aos="fade-up">
				<style>
					#map{
					border:0;
					width:100%;
					height: 350px;
					}

				</style>
				<div id="google-map">
					<div id="map"></div>
				</div>
				<text id="direccion"> Esta es una etiqueta de texto</text>
				<h2>Para ver el StreetView arrastre el mono naranja</h2>
				<div class="col-lg-12 margin-bottom-30" id="street" style="height:400px; width:100%"></div>
			</div>
		</section>

	</xsl:template>

</xsl:stylesheet>