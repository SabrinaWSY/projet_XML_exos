<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="utf-8"/>
    
    <xsl:template match="/">
        <xsl:text>Exo13 XSLT_1: Voici les contenus titres étiquetés avec Talisman de la rubrique «A la Une» de 2018: </xsl:text><xsl:text>
	Affichage en texte simple</xsl:text><xsl:text>
        </xsl:text>
        <xsl:apply-templates select="//titre"/>
    </xsl:template>
    
    <xsl:template match="titre">
                <xsl:for-each select="./p/item">
                    <xsl:value-of select="./a[2]/text()"/><xsl:text> </xsl:text>
                </xsl:for-each>
        <xsl:text>
        </xsl:text>
    </xsl:template>
    
</xsl:stylesheet>