<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="utf-8"/>
    
    <xsl:template match="/">
        <xsl:text>
            Exos 16: Voici une liste de toutes les formes de tous les verbes du dictionnaire</xsl:text><xsl:text> </xsl:text><xsl:text>
	
            </xsl:text>
        <xsl:apply-templates select="//entry"/>
    </xsl:template>
    
    <xsl:template match="entry">
        <xsl:if test="./pos[@name = 'verb']">
            <xsl:value-of select="./lemma"/><xsl:text>
            </xsl:text>
            <xsl:value-of select="./pos"/><xsl:text>
            </xsl:text>
            <xsl:for-each select="./inflected">
                <xsl:value-of select="./form"/><xsl:text>
            </xsl:text>
            </xsl:for-each><xsl:text>
            </xsl:text>
            
        </xsl:if>
    </xsl:template>
    
    
</xsl:stylesheet>