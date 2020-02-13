<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="utf-8"/>
    
    <xsl:template match="/">
        <xsl:apply-templates select="TEI/text/group/text/body/lg/lg/l"/>
    </xsl:template>
    
    <xsl:template match="l">
        <xsl:if test="self::l[contains(text(),':') or contains(text(),';')]">
         
            <xsl:value-of select="."/><xsl:text>
</xsl:text>
        </xsl:if>
    </xsl:template>
    
</xsl:stylesheet>