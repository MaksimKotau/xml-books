<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="utf-8" indent="yes" />
	<xsl:template match="/">
		<html>
			<head>
				<title>Projet xml 1</title>
				<link rel = "stylesheet" type = "text/css" href = "styles/main.css" />
			</head>
			<body>
				<div id="mainConteineur">
					<nav class="mobil">
						<div class="dropdown">
							<span>=</span>
							<div class="dropdown-content">
								<p>Hello World!</p>
								<p>Hello World!</p>
								<p>Hello World!</p>
							  </div>
							</div>
					</nav>
					<header title="Autumn sunny day">
						<h1>Projet 1</h1>
						<h3>Outils de communication client-serveur</h3>
						<nav>
							<ul id="menu">
								<li><a href="javascript:void(0);" class="currentPage">ACCUEIL</a></li>
								<li><a href="javascript:void(0);" class="otherPage">PAGE 1</a></li>
								<li><a href="javascript:void(0);" class="otherPage">PAGE 2</a></li>
								<li><a href="javascript:void(0);" class="otherPage">PAGE 3</a></li>
								<li><a href="javascript:void(0);" class="otherPage">NOUS JOINDRE</a></li>
							</ul>
						</nav>
					</header>
					<section>
						<h2>Mon inventaire</h2>
						<xsl:for-each select="catalog/book">
							<article>
								<h3 class="bookTitle"><xsl:value-of select="title"/></h3>
								<div class="commeTable">
									<div class="commeRow">
										<div class="commeCell firstColoumn">No.d'inventaire</div>
										<div class="commeCell secondColoumn"><xsl:value-of select="@id"/></div>
									</div>
									<div class="commeRow">
										<div class="commeCell firstColoumn">Auteur</div>
										<div class="commeCell secondColoumn"><xsl:value-of select="author"/></div>
									</div>
									<div class="commeRow">
										<div class="commeCell firstColoumn">Date de publication</div>
										<div class="commeCell secondColoumn"><xsl:value-of select="publish_date"/></div>
									</div>
									<div class="commeRow">
										<div class="commeCell firstColoumn">Prix</div>
										<div class="commeCell secondColoumn"><xsl:value-of select="price"/></div>
									</div>
									<div class="commeRow">
										<div class="commeCell firstColoumn">Description</div>
										<div class="commeCell secondColoumn"><xsl:value-of select="description"/></div>
									</div>
								</div>
							</article>
						</xsl:for-each>
						<div class="forAside">
							<aside>
								<h3> Liens utiles</h3>
								<ul id="liens_utils">
									<li>
										<a href="javascript:void(0);" class="liens" title="Staple">Lien 1</a>
									</li>
									<li>
										<a href="javascript:void(0);" class="liens" title="Staple">Lien 2</a>
									</li>
									<li>
										<a href="javascript:void(0);" class="liens" title="Staple">Lien 3</a>
									</li>
									<li>
										<a href="javascript:void(0);" class="liens" title="Staple">Lien 4</a>
									</li>
								</ul>
							</aside>
							<aside>
								<h3>Recherche</h3>
								<form action="" id="formRecherche">
									<input type="text" class="textInput" placeholder="Rechercher..."></input>
									<input type="image" class="imgSubmit" src="images/lens.png" alt="Lens" align="top"></input>
								</form>
							</aside>
						</div>
					</section>
					<footer>
						<p>COPYRIGHT MAKSIM KOTAU - TOUS DROITS RESERVES</p>
					</footer>
				</div>	
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>