<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" encoding="iso-8859-1"/>
     
    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>
     
    <xsl:template match="//u">
        <xsl:for-each select=".">
            <xsl:element name="u">
                <xsl:attribute name="who"><xsl:value-of select="./@who"/></xsl:attribute>
                <xsl:attribute name="n"><xsl:value-of select="./@n"/></xsl:attribute>
                 <xsl:choose>                       
                    <xsl:when test="contains(text(),'ah bon')">
                        <xsl:value-of select="substring-before(text(),'ah bon')"/>
                        <xsl:element name="inj">
                            <xsl:attribute name="form">ah bon</xsl:attribute>
                        </xsl:element>
                        <xsl:value-of select="substring-after(text(),'ah bon')"/>
                    </xsl:when>
                    <xsl:when test="contains(text(),'ah oui')">
                        <xsl:value-of select="substring-before(text(),'ah oui')"/>
                        <xsl:element name="inj">
                            <xsl:attribute name="form">ah oui</xsl:attribute>
                        </xsl:element>
                        <xsl:value-of select="substring-after(text(),'ah oui')"/>
                    </xsl:when>
                    <xsl:when test="contains(text(),'ah')">
                        <xsl:value-of select="substring-before(text(),'ah')"/>
                        <font color="#FF7F50" align="center">
                        <xsl:element name="inj">
                            <xsl:attribute name="form">ah</xsl:attribute>
                        </xsl:element>
                        <xsl:text>ah</xsl:text>
                        </font>
                        <xsl:value-of select="substring-after(text(),'ah')"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="."/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:element>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
