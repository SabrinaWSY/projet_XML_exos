<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <title>Exercice 8 : Exploration d’une recommandation W3C taggée</title>
            </head>
            <body>
                <div class="header">Mise en forme par <xsl:value-of select="./doc/head/prenom[@num=1]"/><xsl:text> </xsl:text><xsl:value-of select="./doc/head/nom[@num=1]"/> et
                    <xsl:value-of select="./doc/head/prenom[@num=2]"/><xsl:text> </xsl:text><xsl:value-of select="./doc/head/nom[@num=2]"/> 
                    , <xsl:value-of select="./doc/head/cursus"/>.</div>
                <h1>Recommandation XSLT 1.0</h1>
                <xsl:for-each select="./doc/taggersent">
                    <div class="p"><xsl:for-each select="./taggertoken"><xsl:value-of select="./@wordform"/><xsl:text> </xsl:text></xsl:for-each></div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>

