<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" encoding="utf-8"/>

<xsl:template match="/">Voici les contenus étiquetés avec TreeTagger :
<xsl:text>
</xsl:text>

<xsl:apply-templates select="//element"/>
</xsl:template>

<xsl:template match="element">

<xsl:value-of select="./data[1]"/><xsl:text>	</xsl:text><xsl:value-of select="./data[2]"/><xsl:text>	</xsl:text><xsl:value-of select="./data[3]"/><xsl:text> 
</xsl:text>

</xsl:template>




</xsl:stylesheet>
