<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" encoding="utf-8"/>

<xsl:template match="/">
Exos 13 Section-TreeTagger XSLT Question 2 : 
Les trois patrons qu'on extrait sont: NOM-ADJ, VER-DET-NOM et NOM-PRP-NOM-PRP:
<xsl:apply-templates select=".//element"/>
<xsl:apply-templates select=".//article"/>
</xsl:template>

<xsl:template match="element">

<xsl:choose>

<xsl:when test="(./data[contains(text(),'NOM')]) and (following-sibling::element[1][./data[contains(text(),'ADJ')]])">
    NOM-ADJ:<xsl:text> </xsl:text>
    <xsl:value-of select="./data[3]"/><xsl:text> </xsl:text>
    <xsl:value-of select="following-sibling::element[1]/data[3]"/><xsl:text> </xsl:text>
    <xsl:text> 
    </xsl:text>
    </xsl:when>
    
<xsl:when test="(./data[contains(text(),'DET')]) and (following-sibling::element[1][./data[contains(text(),'NOM')]]) and (preceding-sibling::element[1][./data[contains(text(),'VER')]])">
    VER-DET-NOM:<xsl:text> </xsl:text>
    <xsl:value-of select="preceding-sibling::element[1]/data[3]"/> <xsl:text> </xsl:text>
    <xsl:value-of select="./data[3]"/><xsl:text> </xsl:text>
    <xsl:value-of select="following-sibling::element[1]/data[3]"/> <xsl:text> </xsl:text>
    <xsl:text> 
    </xsl:text>
    </xsl:when>

    <xsl:when test="(./data[contains(text(),'PRP')]) and (preceding-sibling::element[1][./data[contains(text(),'NOM')]]) and (following-sibling::element[1][./data[contains(text(),'NOM')]]) and (following-sibling::element[2][./data[contains(text(),'PRP')]])">
    NOM-PRP-NOM-PRP:<xsl:text> </xsl:text>
    <xsl:value-of select="preceding-sibling::element[1]/data[3]"/><xsl:text> </xsl:text>
    <xsl:value-of select="./data[3]"/><xsl:text> </xsl:text>
    <xsl:value-of select="following-sibling::element[1]/data[3]"/><xsl:text> </xsl:text>
    <xsl:value-of select="following-sibling::element[2]/data[3]"/><xsl:text> </xsl:text>
    <xsl:text> 
    </xsl:text>
    </xsl:when>
    
</xsl:choose>
</xsl:template>
</xsl:stylesheet>
