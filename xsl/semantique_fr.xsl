<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"/>
    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                <title>Web Sémantique - Sidane ALP</title>
                <link rel="stylesheet" type="text/css" href="../css/cv.css"/>
            </head>
            <body>
                <div id="header">
                    <img src="../img/logo.png" alt="Logo"/>
                    <ul>
                        <li><a href="./index.xml">Accueil</a></li>
                        <li><a href="./cv.xml">CV</a></li>
                        <li><a href="./projets.xml">Projets</a></li>
                        <li><a href="./semantique.xml" class="active">Sémantique</a></li>
                        <li><a href="./about.xml">À propos</a></li>
                    </ul>
                </div>
                <div id="content">
                    <h1 style="text-align:center;">Web Sémantique</h1>
                    <p><xsl:value-of select="SemantiquePage/introduction"/></p>
                    <h2>Formation au Web Sémantique</h2>
                    <ul>
                        <xsl:for-each select="SemantiquePage/formation/item">
                            <li><xsl:value-of select="."/></li>
                        </xsl:for-each>
                    </ul>
                    <h3><xsl:value-of select="SemantiquePage/mooc/title"/></h3>
                    <p>Enseignants : <xsl:value-of select="SemantiquePage/mooc/teachers"/></p>
                    <ul>
                        <xsl:for-each select="SemantiquePage/mooc/weeks/week">
                            <li><xsl:value-of select="."/></li>
                        </xsl:for-each>
                    </ul>
                    <h3>Liens</h3>
                    <ul>
                        <xsl:for-each select="SemantiquePage/links/link">
                            <li><a href="{@url}"><xsl:value-of select="."/></a></li>
                        </xsl:for-each>
                    </ul>
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

