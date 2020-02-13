<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8"/> 
    
    <xsl:template match="/">
        <html>
            <style>
                table,tr,td {
                border: 2px solid black;
                border-spacing: 1px;
                }
                td {
                align: left;
                }
            </style>
            <body>
                <table width="25%" align="center">
                    <xsl:apply-templates select="/TEI/text/group/text/body/lg/lg"/>
                </table>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="lg">
        <xsl:apply-templates select="./l"/>
        <tr><td>_________________________________________</td></tr>
    </xsl:template>
    
    <xsl:template match="l">
        <tr><td style="background-color: #E6E6FF"><xsl:value-of select="."/></td></tr>
    </xsl:template>
    
</xsl:stylesheet>