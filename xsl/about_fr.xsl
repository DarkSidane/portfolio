<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"/>
    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                <title>À propos - Sidane ALP</title>
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
                        <li><a href="./about.xml" class="active">À propos</a></li>
                    </ul>
                </div>
                <div id="content">
                    <h1><xsl:value-of select="AboutPage/section/title"/></h1>
                    <p><xsl:value-of select="AboutPage/section/content"/></p>
                    <h2><xsl:value-of select="AboutPage/contact/title"/></h2>
                    <form method="post" action="mailto:sidanealp0@gmail.com">
                        <label for="name">Votre nom :</label>
                        <input type="text" id="name" name="name" required="required"/><br/>
                        <label for="email">Votre email :</label>
                        <input type="email" id="email" name="email" required="required"/><br/>
                        <label for="message">Message :</label>
                        <textarea id="message" name="message" required="required"></textarea><br/>
                        <input type="submit" value="Envoyer"/>
                    </form>
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

