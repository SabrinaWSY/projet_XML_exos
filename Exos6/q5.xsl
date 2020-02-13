<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8"/>
    <xsl:template match="/">
        <html>
            <body>
                <xsl:apply-templates select="TEI/text/group/text/body/lg/lg"/>
            </body>
        </html>
        
    </xsl:template>
    
    <xsl:template match="lg">
        <ol>
            <xsl:apply-templates select="./l"/><br/>
        </ol>
    </xsl:template>
    
    <xsl:template match="l">
        <li><xsl:value-of select="."/></li>
    </xsl:template>
    
</xsl:stylesheet>
