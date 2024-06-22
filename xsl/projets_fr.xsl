<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"/>
    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                <title>Projets - Sidane ALP</title>
                <link rel="stylesheet" type="text/css" href="../css/cv.css"/>
            </head>
            <body>
                <div id="header">
                    <img src="../img/logo.png" alt="Logo"/>
                    <ul>
                        <li><a href="./index.xml">Accueil</a></li>
                        <li><a href="./cv.xml">CV</a></li>
                        <li><a href="./projets.xml" class="active">Projets</a></li>
                        <li><a href="./semantique.xml">Sémantique</a></li>
                        <li><a href="./about.xml">À propos</a></li>
                    </ul>
                </div>
                <div id="content">
                    <h1>Mes Projets</h1>
                    <xsl:for-each select="ProjectsPage/project">
                        <div class="project">
                            <h2><xsl:value-of select="title"/></h2>
                            <p><xsl:value-of select="summary"/></p>
                            <p>Plus d'infos: <a href="{link}">Cliquez ici</a></p>
                        </div>
                    </xsl:for-each>
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

