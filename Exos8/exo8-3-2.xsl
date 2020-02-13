<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <title>Exercice 8 : Exploration d’une recommandation W3C taggée</title>
                <style>
                    div.header{
                    margin: auto;
                    text-align: center;
                    border-style: solid;
                    border-top-width: 3px;
                    border-bottom-width: 3px;
                    border-left-width: 0;
                    border-right-width:0;
                    }
                    div.p {
                    margin-left: 10px;
                    text-align: justify;
                    }
                    det.fem{color:red;}
                    det.masc{color:blue;}
                </style>
            </head>
            <body>
                <div class="header">Mise en forme par <xsl:value-of select="./doc/head/prenom[@num=1]"/><xsl:text> </xsl:text><xsl:value-of select="./doc/head/nom[@num=1]"/> et
                    <xsl:value-of select="./doc/head/prenom[@num=2]"/><xsl:text> </xsl:text><xsl:value-of select="./doc/head/nom[@num=2]"/> 
                    , <xsl:value-of select="./doc/head/cursus"/>.</div>
                <h1>Recommandation XSLT 1.0</h1>
                <xsl:for-each select="./doc/taggersent">
                    <div class="p">
                        <xsl:for-each select="./taggertoken">
                            <xsl:choose>
                                <xsl:when test="(self::taggertoken[contains(@pos,'DET')]) and (self::taggertoken[contains(@pos,'masc')])"> <!--DET:masc-->
                                    <det class="masc"><xsl:value-of select="./@wordform"/><xsl:text> </xsl:text></det>
                                </xsl:when>
                                <xsl:when test="(self::taggertoken[contains(@pos,'DET')]) and (self::taggertoken[contains(@pos,'fem')])"> <!--DET:fem-->
                                    <det class="fem"><xsl:value-of select="./@wordform"/><xsl:text> </xsl:text></det>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="./@wordform"/><xsl:text> </xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:for-each>
                    </div>
                </xsl:for-each>
            </body></html>
    </xsl:template>
    
</xsl:stylesheet>