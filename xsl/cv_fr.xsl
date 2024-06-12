<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html" doctype-public="-//W3C//DTD XHTML+RDFa 1.0//EN" doctype-system="http://www.w3.org/MarkUp/DTD/xhtml-rdfa-1.dtd"/>
	<xsl:template match="/">
		<html xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:foaf="http://xmlns.com/foaf/0.1/" xml:lang="fr">
			<head>
				<meta http-equiv="Content-Type" content="text/html" charset="utf-8"/>
				<meta http-equiv="Content-Language" content="fr"/>
				<link rel="alternate" type="text/html" title="Portfolio de Sidane ALP - CV" hreflang="fr" href="/fr/"/>
				<link rel="alternate" type="text/html" title="Sidane ALP' Portfolio - CV" hreflang="en" href="/en/"/>
				<title>Portfolio de Sidane ALP - CV</title>
				<meta name="author" content="Sidane ALP"/>
				<link rel="stylesheet" type="text/css" href="../css/style.css" media="screen"/>
				<link rel="stylesheet" type="text/css" href="../css/cv.css" media="screen"/>
				<meta name="keywords" xml:lang="fr" content="Alp Sidane, Portfolio, Web Sémantique, Ingénieur, Informatique, Java, J2EE, Base de données, ETL, Entrepôt de données, gestion de projet, planning"/>
				<meta name="description" content="CV, Curiculum Vitae"/>
				<meta rel="dc:subject" href="http://dbpedia.org/resource/Semantic_Web"/>
				<link rel="shortcut icon" href="../img/logo_2.ico" type="image/x-icon"/>
			</head>
			<body>
				<div id="header">
					<div id="logo">
						<a href="../index.html">
							<img src="../img/logo.png" name="logo"/>
						</a>
					</div>
					<div id="menu">
						<ul>
							<li>
								<a href="../index.html">
									<span>ACCUEIL</span>
								</a>
							</li>
							<li class="selected">
								<a href="./cv.xml">
									<span>CV</span>
								</a>
							</li>
							<li>
								<a href="./websem.html">
									<span>WEB SEMANTIQUE</span>
								</a>
							</li>
							<li>
								<a href="../projets.html">
									<span>PROJETS</span>
								</a>
							</li>
							<li>
								<a href="./contact.html">
									<span>A PROPOS</span>
								</a>
							</li>
						</ul>
					</div>
					<div id="ss_menu">
						<ul>
							<li>
								<a href="http://fr.linkedin.com/in/sidane-alp-53660a179">
									<img src="../img/linkedin.png" alt="linkedin"/>
								</a>
							</li>
							<li>
								<a href="./cv.xml">
									<img src="../img/france.png" alt="fr_flag"/>
								</a>
							</li>
							<li>
								<a href="../en/cv.xml">
									<img src="../img/english.png" alt="en_flag"/>
								</a>
							</li>
							<li>
								<a href="../jp/cv.xml">
									<img src="../img/japan.png" alt="jp_flag"/>
								</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="sep">
					<img src="../img/bar_sep.png" name="bar_sep"/>
				</div>
				<div id="body_content_cv">
					<div id="cv">
						<H1 align="center" property="dc:title">
							<xsl:value-of select="CV/intitule/titre"/>
						</H1>
						<H4 class="description" align="center" property="dc:title">
							<xsl:value-of select="CV/intitule/commentaire"/>
						</H4>
						<br/>
						<!--  Intitule  -->
						<div id="intitule" typeof="foaf:person" about="#me">
							<div id="photo_cv">
								<img src="../img/sidane.png" name="photo_id"/>
							</div>
							<div id="ident">
								<p>
									<span>
										<xsl:value-of select="CV/etat_civil/@nom"/>
									</span>
									<xsl:text> </xsl:text>
									<span property="foaf:firstName">
										<xsl:value-of select="CV/etat_civil/@prenom"/>
									</span>
								</p>
								<p>
									<span property="foaf:age">
										<xsl:value-of select="CV/etat_civil/@age"/>
									</span>
									<xsl:text> ans</xsl:text>
								</p>
								<xsl:choose>
									<xsl:when test="CV/etat_civil/permis/@titulaire='oui'">
										<p>
											<xsl:text>Titulaire du permis </xsl:text>
											<xsl:value-of select="CV/etat_civil/permis/@type"/>
										</p>
									</xsl:when>
								</xsl:choose>
								<p>
									<xsl:text>Tel : </xsl:text>
									<span property="foaf:phone">
										<xsl:value-of select="CV/etat_civil/telephone"/>
									</span>
								</p>
								<p>
									<xsl:text>Email : </xsl:text>
									<span property="foaf:mbox">
										<xsl:value-of select="CV/etat_civil/email"/>
									</span>
								</p>
							</div>
						</div>
						<!--  Formation  -->
						<br/>
						<div class="rubriques">
							<div class="ss_titre">
								<H3 property="dc:title">
									<xsl:text>Formation </xsl:text>
								</H3>
							</div>
							<br/>
							<xsl:for-each select="CV/formations/formation">
								<table style="width:100%">
									<tr>
										<td class="date">
											<xsl:choose>
												<xsl:when test="annee/@fin">
													<span property="dc:date">
														<xsl:value-of select="annee/@debut"/>
													</span>
													<xsl:text> / </xsl:text>
													<span property="dc:date">
														<xsl:value-of select="annee/@fin"/>
													</span>
												</xsl:when>
												<xsl:otherwise>
													<xsl:text>Depuis </xsl:text>
													<span property="dc:date">
														<xsl:value-of select="annee/@debut"/>
													</span>
												</xsl:otherwise>
											</xsl:choose>
										</td>
										<td>
											<p class="intitule">
												<xsl:value-of select="@diplome"/>
												<xsl:text> à </xsl:text>
												<xsl:value-of select="ecole"/>
											</p>
											<p class="description">
												<xsl:text>Principaux enseignements : </xsl:text>
												<span property="dc:description">
													<xsl:value-of select="description"/>
												</span>
											</p>
											<p>
												<p>
													<xsl:text>Principaux projets : </xsl:text>
												</p>
												<xsl:for-each select="projets/projet">
													<li class="description_projet">
														<span typeof="foaf:Project">
															<xsl:value-of select="."/>
														</span>
													</li>
												</xsl:for-each>
											</p>
										</td>
									</tr>
								</table>
								<br/>
							</xsl:for-each>
						</div>
						<br/>
						<!--  Experience Pro  -->
						<div class="rubriques">
							<div class="ss_titre">
								<H3 property="dc:title">
									<xsl:text>Expériences professionnelles </xsl:text>
								</H3>
							</div>
							<br/>
							<xsl:for-each select="CV/expPro/exp">
								<table style="width:100%">
									<tr>
										<td class="date_e">
											<xsl:choose>
												<xsl:when test="@dateFin">
													<xsl:text>Du </xsl:text>
													<span property="dc:date">
														<xsl:value-of select="@dateDebut"/>
													</span>
													<xsl:text> au </xsl:text>
													<span property="dc:date">
														<xsl:value-of select="@dateFin"/>
													</span>
												</xsl:when>
												<xsl:otherwise>
													<xsl:text>Depuis </xsl:text>
													<span property="dc:date">
														<xsl:value-of select="@dateDebut"/>
													</span>
												</xsl:otherwise>
											</xsl:choose>
										</td>
										<td>
											<p class="intitule">
												<xsl:value-of select="poste"/>
												<xsl:text> chez </xsl:text>
												<xsl:value-of select="entreprise"/>
											</p>
											<p class="description">
												<span property="dc:description">
													<xsl:value-of select="description"/>
												</span>
											</p>
										</td>
									</tr>
								</table>
							</xsl:for-each>
						</div>
						<br/>
						<!--  Compétences informatique  -->
						<div class="rubriques">
							<div class="ss_titre">
								<H3 property="dc:title">
									<xsl:text>Compétences Informatiques</xsl:text>
								</H3>
							</div>
							<xsl:for-each select="CV/competencesInfo/intituleComp">
								<li class="description_comp">
									<span property="dc:subject">
										<xsl:value-of select="@nom"/>
									</span>
									<xsl:text> : </xsl:text>
									<span property="dc:description">
										<xsl:value-of select="@list"/>
									</span>
								</li>
							</xsl:for-each>
						</div>
						<br/>
						<!--  Compétences logiciel  -->
						<div class="rubriques">
							<div class="ss_titre">
								<H3 property="dc:title">
									<xsl:text>Compétences Logiciel </xsl:text>
								</H3>
							</div>
							<xsl:for-each select="CV/competencesLogiciel/intituleComp">
								<li class="description_comp">
									<span property="dc:subject">
										<xsl:value-of select="@type"/>
									</span>
									<xsl:text> : </xsl:text>
									<span property="dc:description">
										<xsl:value-of select="@list"/>
									</span>
								</li>
							</xsl:for-each>
						</div>
						<br/>
						<div id="rubriques_group">
							<!--  Langues  -->
							<div class="rubriques_pl">
								<div class="ss_titre">
									<H3 property="dc:title">
										<xsl:text>Langues </xsl:text>
									</H3>
								</div>
								<xsl:for-each select="CV/langues/langue">
									<li class="description_comp">
										<xsl:value-of select="@lg"/>
										<xsl:text> ( </xsl:text>
										<xsl:value-of select="@niveau"/>
										<xsl:text> ) </xsl:text>
									</li>
								</xsl:for-each>
							</div>
							<br/>
							<!--  centre dinterets  -->
							<div class="rubriques_pr">
								<div class="ss_titre">
									<H3 property="dc:title">
										<xsl:text>Centre d'intérêt </xsl:text>
									</H3>
								</div>
								<xsl:for-each select="CV/centreDinterets/centreDinteret">
									<li class="description_comp">
										<span typeof="foaf:interest" about="#me">
											<xsl:value-of select="@nom"/>
										</span>
									</li>
								</xsl:for-each>
							</div>
						</div>
					</div>
				</div>
				<div class="sep">
					<img src="../img/bar_sep.png" name="bar_sep"/>
				</div>
				<div id="foot">
					<div id="li_foot">
						<ul>
							<li>
								<a href="../index.html">
									<span>Accueil</span>
								</a>
							</li>
							<li>
								<a href="./cv.xml">
									<span>CV</span>
								</a>
							</li>
						</ul>
						<ul>
							<li>
								<a href="./websem.html">
									<span>Web Sémantique</span>
								</a>
							</li>
							<li>
								<span>Java</span>
							</li>
						</ul>
						<ul>
							<li>
								<a href="../projets.html">
									<span>Projets</span>
								</a>
							</li>
							<li>
								<a href="./contact.html">
									<span>Contact</span>
								</a>
							</li>
						</ul>
					</div>
					<div id="valid">
						<ul>
							<li>
								<span xmlns:dc="http://purl.org/dc/terms/" resource="http://www.w3.org/TR/rdfa-syntax" rel="dc:conformsTo">
									<a href="http://validator.w3.org/check?uri=referer">
										<img src="../img/valxrdfa.png" alt="valide xhtml et rdfa"/>
									</a>
								</span>
							</li>
							<li>
								<a href="http://jigsaw.w3.org/css-validator/check/referer">
									<img src="../img/valid-css.png" alt="valide css3"/>
								</a>
							</li>
						</ul>
					</div>
					<div id="copyright">
						<p property="dc:rights">
							Copyright
							<span property="dc:creator">Sidane ALP</span>
							- Tous droits réservés
						</p>
					</div>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
