<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"/>
    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                <title>CV de Sidane ALP</title>
                <link rel="stylesheet" type="text/css" href="../css/cv.css"/>
            </head>
            <body>
                <div id="header">
                    <img src="../img/logo.png" alt="Logo"/>
                    <ul>
                        <li><a href="./index.xml">Accueil</a></li>
                        <li><a href="./cv.xml">CV</a></li>
                        <li><a href="./projets.xml">Projets</a></li>
                        <li><a href="./semantique.xml">Sémantique</a></li>
                        <li><a href="./about.xml">À propos</a></li>
                    </ul>
                </div>
                <div id="content">
                    <!-- Informations Personnelles -->
                    <table id="infoTable">
                        <tr>
                            <th colspan="2">Informations Personnelles</th>
                        </tr>
                        <tr>
                            <td>Nom</td>
                            <td><xsl:value-of select="CV/etat_civil/@nom"/> <xsl:value-of select="CV/etat_civil/@prenom"/></td>
                        </tr>
                        <tr>
                            <td>Âge</td>
                            <td><xsl:value-of select="CV/etat_civil/@age"/> ans</td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td><xsl:value-of select="CV/etat_civil/email"/></td>
                        </tr>
                        <tr>
                            <td>Téléphone</td>
                            <td><xsl:value-of select="CV/etat_civil/telephone"/></td>
                        </tr>
                    </table>

                    <!-- Formations -->
                    <table id="formationTable">
                        <tr>
                            <th colspan="2">Formations</th>
                        </tr>
                        <xsl:for-each select="CV/formations/formation">
                            <tr>
                                <td>Diplôme</td>
                                <td><xsl:value-of select="@diplome"/> à <xsl:value-of select="ecole"/></td>
                            </tr>
                            <tr>
                                <td>Année</td>
                                <td>De <xsl:value-of select="annee/@debut"/> à <xsl:value-of select="annee/@fin"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>

                    <!-- Expérience Professionnelle -->
                    <table id="experienceTable">
                        <tr>
                            <th colspan="2">Expérience Professionnelle</th>
                        </tr>
                        <xsl:for-each select="CV/expPro/exp">
                            <tr>
                                <td>Poste</td>
                                <td><xsl:value-of select="poste"/> chez <xsl:value-of select="entreprise"/></td>
                            </tr>
                            <tr>
                                <td>Description</td>
                                <td><xsl:value-of select="description"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>

                    <!-- Compétences -->
                    <table id="competencesTable">
                        <tr>
                            <th colspan="2">Compétences</th>
                        </tr>
                        <tr>
                            <td>Développement</td>
                            <td><xsl:value-of select="CV/competencesInfo/intituleComp/@list"/></td>
                        </tr>
                        <tr>
                            <td>Systèmes d'exploitation</td>
                            <td><xsl:value-of select="CV/competencesLogiciel/intituleComp/@list"/></td>
                        </tr>
                    </table>

                    <!-- Langues -->
                    <table id="languesTable">
                        <tr>
                            <th colspan="2">Langues</th>
                        </tr>
                        <xsl:for-each select="CV/langues/langue">
                            <tr>
                                <td><xsl:value-of select="@lg"/></td>
                                <td>Niveau <xsl:value-of select="@niveau"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>

                    <!-- Centres d'Intérêt -->
                    <table id="interetsTable">
                        <tr>
                            <th>Centres d'Intérêt</th>
                        </tr>
                        <xsl:for-each select="CV/centreDinterets/centreDinteret">
                            <tr>
                                <td><xsl:value-of select="@nom"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>
                <div id="footer">
                    <div class="language">
                        <span>🇫🇷</span>
                        <span>🇬🇧</span>
                        <span>🇯🇵</span>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
