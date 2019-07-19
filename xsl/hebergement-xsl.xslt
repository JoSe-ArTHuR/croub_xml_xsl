<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
	
			<html lang="en">
			     <head>
				<!-- Basic -->
				<meta charset="utf-8"/>
				<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
					<!-- Site Metas -->
				<meta http-equiv="X-UA-Compatible" content="IE=edge"/>   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
				<title>Gestion | CROUD</title>  
				
				<!-- Site Icons -->
				<link rel="shortcut icon" href="images/favicon.png" type="image/x-icon" />
				<link rel="apple-touch-icon" href="images/apple-touch-icon.png"/>
			
				<!-- Bootstrap CSS -->
				<link rel="stylesheet" href="css/bootstrap.min.css"/>
				<link rel="stylesheet" href="css/style.css"/>
				<!-- Colors CSS -->
				<link rel="stylesheet" href="css/colors.css"/>
				<!-- ALL VERSION CSS -->
				<link rel="stylesheet" href="css/versions.css"/>
				<!-- Responsive CSS -->
				
				<!-- Custom CSS -->
				<link rel="stylesheet" href="css/flaticon.css"/>
				<link rel="stylesheet" href="css/custom.css"/>	
				     <!--[if lt IE 9]>
						  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
						  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
					<![endif]-->
			   
			</head>
			<body class="seo_version">
							
				<header class="header header_style_01">
					<nav class="megamenu navbar navbar-default">
						<div class="container">
							<div class="navbar-header">
								<a class="navbar-brand" href="index.xml"><img src="images/logos/logo.png" alt="image"/></a>
							</div>
							<div id="navbar" class="navbar-collapse collapse">
								<ul class="nav navbar-nav navbar-right hidden-md hidden-sm hidden-xs">
                        <li><a class="btn-light btn-radius btn-brd top-btn" href="#"><i class="fa fa-angle-double-right"></i>CROUB</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right menu-top">
									 <xsl:apply-templates select="hebergement/header/header-menu"/>
								</ul>
								
						</div>			
					</div>
						
					</nav>
				</header>
				
				<div id="spacer"></div>
			
				<div id="about" class="section wb nopadtop">
					<div class="container">
						<div class="row">
							<div class="col-md-6">
								<div class="post-media wow fadeIn">
									<img src="images/croub/cite.jpg" alt="" class="img-responsive img-rounded"/>
								</div><!-- end media -->
							</div><!-- end col -->
			
						<div class="section-title text-center">
							<div class="container">
						<div class="section-title text-center">
							
							<h3 style="color:red; text-align:justify;"><xsl:apply-templates select="hebergement/beneficiaire/label"/></h3>
							<p class="lead"><xsl:apply-templates select="hebergement/beneficiaire/libelle"/></p>
							
							
<xsl:apply-templates select="image"/>

<img src="{cite/image3}"/>
<h4 style="color:blue;" ><xsl:apply-templates select="hebergement/beneficiaire/cite/h4"/></h4>
<p style="text-align:justify;"><xsl:apply-templates select="hebergement/beneficiaire/cite/h5"/></p>
<br/>
  <h4 style="text-align:justify;"><strong>Liste des étudiants admis en cité de Belle-ville</strong></h4>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Nom</th>
      <th style="text-align:left">Prenom</th>
      <th style="text-align:left">Date de naissance</th>
      <th style="text-align:left">Filliere</th>
      <th style="text-align:left">Sexe</th>
      <th style="text-align:left">Nationalite</th>
    </tr>
    <xsl:for-each select="hebergement/beneficiaire/etudiant[@readmission='oui']">
    <tr>
      <td><xsl:value-of select="nom"/></td>
      <td><xsl:value-of select="prenom"/></td>
      <td><xsl:value-of select="dateNaisse"/></td>
      <td><xsl:value-of select="Filliere"/></td>
      <td><xsl:value-of select="@sexe"/></td>
      <td><xsl:value-of select="nationalite"/></td>
    </tr>
    </xsl:for-each>
  </table>
    <br/>
  <h4 style="text-align:justify;"><strong>Liste des étudiants admis en cité de Nasso</strong></h4>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Nom</th>
      <th style="text-align:left">Prenom</th>
      <th style="text-align:left">Date de naissance</th>
      <th style="text-align:left">Filliere</th>
      <th style="text-align:left">Sexe</th>
      <th style="text-align:left">Nationalite</th>
    </tr>   
  
    <xsl:for-each select="hebergement/beneficiaire/etudiant[@readmission='non']">
    <tr>
      <td><xsl:value-of select="nom"/></td>
      <td><xsl:value-of select="prenom"/></td>
      <td><xsl:value-of select="dateNaisse"/></td>
      <td><xsl:value-of select="Filliere"/></td>
      <td><xsl:value-of select="@sexe"/></td>
      <td><xsl:value-of select="nationalite"/></td>
    </tr>
    </xsl:for-each>
  </table>
						
		</div>
	</div>
							
						</div><!-- end title -->
						
						
							

							
						</div><!-- end how-its-work -->
					</div><!-- end container -->
				</div><!-- end section -->
			
				<section class="section nopad cac text-center">
					<a href="#"><h3><xsl:apply-templates select="hebergement/footer"/></h3></a>
				</section>
				
				<div class="copyrights">
					<div class="container">
						<div class="footer-distributed">
							<div class="footer-left">
								 Copyright © 2019. All Rights Reserved.
							</div>
			
							<div class="footer-right">
								<form method="get" action="#">
									<input placeholder="Subscribe our newsletter.." name="search"/>
									<i class="fa fa-envelope-o"></i>
								</form>
							</div>
						</div>
					</div><!-- end container -->
				</div><!-- end copyrights -->
			
				<a href="#" id="scroll-to-top" class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>
				
			
				<!-- ALL JS FILES -->
				<script src="js/scroll.js"></script>
				<script src="js/all.js"></script>
				<!-- ALL PLUGINS -->
				<script src="js/custom.js"></script>
			
			</body>
			</html>
	</xsl:template>
	
	<xsl:template match="hebergement/header/header-menu">		     
			   <li><a  href="{@url}"><xsl:value-of select="titre"/></a></li> 
	</xsl:template>
		
</xsl:stylesheet>
