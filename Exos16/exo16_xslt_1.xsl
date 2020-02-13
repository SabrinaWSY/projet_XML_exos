<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" encoding="iso-8859-1"/>

    <xsl:template match="/">
            <xsl:apply-templates select="//entry"/>
    </xsl:template>

    <xsl:template match="entry">
        <xsl:choose>
            <xsl:when test="position() &gt; 2000 and position() &lt; 2201"><xsl:text>
    </xsl:text>
            <numero>Entry n°: <xsl:value-of select="position()"/></numero><xsl:text> 
</xsl:text>
            <xsl:copy-of select="."/><xsl:text>
    </xsl:text>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>