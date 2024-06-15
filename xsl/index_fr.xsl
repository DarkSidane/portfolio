<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"/>
    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                <title>Accueil - Sidane ALP</title>
                <link rel="stylesheet" type="text/css" href="../css/cv.css"/>
            </head>
            <body>
                <div id="header">
                    <img src="../img/logo.png" alt="Logo"/>
                    <ul>
                        <li><a href="./index.xml" class="active">Accueil</a></li>
                        <li><a href="./cv.xml">CV</a></li>
                        <li><a href="./projets.html">Projets</a></li>
                        <li><a href="./semantique.html">Sémantique</a></li>
                        <li><a href="./about.html">À propos</a></li>
                    </ul>
                </div>
                <div id="content">
                    <h1>Bienvenue sur mon portfolio en ligne!</h1>
                    <p><xsl:value-of select="HomePage/introduction"/></p>
                    <h2>À propos de moi</h2>
                    <p><xsl:value-of select="HomePage/about"/></p>
                    <h2>Derniers projets</h2>
                    <xsl:for-each select="HomePage/latestProjects/project">
                        <h3><xsl:value-of select="title"/></h3>
                        <p><xsl:value-of select="summary"/></p>
                    </xsl:for-each>
                    <h2>Contact</h2>
                    <p>Email: <xsl:value-of select="HomePage/contactInfo/email"/></p>
                    <p>Téléphone: <xsl:value-of select="HomePage/contactInfo/phone"/></p>
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


