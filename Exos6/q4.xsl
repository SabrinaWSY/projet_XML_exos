<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8"/>
    <xsl:template match="/">
        <html>
            <body>
                <xsl:apply-templates select="TEI/text/group/text/body/lg"/>
            </body>
        </html>
        
    </xsl:template>
    
    <xsl:template match="lg">
        <xsl:value-of select="lg[1]/l[1]"/><br/>
        <xsl:value-of select="lg[1]/l[2]"/><br/>
        <xsl:value-of select="lg[1]/l[3]"/><br/>
        <xsl:value-of select="lg[1]/l[4]"/><br/>
    </xsl:template>
    
</xsl:stylesheet>