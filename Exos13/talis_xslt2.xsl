<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <body  bgcolor="FBF9DC">
                <table align="center" width="90%"  bgcolor="white" bordercolor="2C2906" border="1">
                    <tr bgcolor="black">
                        <td colspan="3\" width="90%" valign="top" align="center"><font color="white"><h1>Alignement de titre et description</h1></font></td>
                    </tr>
                    <tr bgcolor="#4E3A4A">
                        <td width="40%" valign="top" bgcolor="black" align="center"><font color="white"><i>Titre</i></font></td><td width="60%" valign="top" bgcolor="black" align="center"><font color="white"><b>Description</b></font></td>
                    </tr>
                    <xsl:apply-templates select="//titre" />
                    
                </table>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="titre">
        <tr bgcolor="FBFAEF">
            <td width="40%" valign="top"><xsl:for-each select="./p/item"><xsl:value-of select="./a[2]/text()"/><xsl:text> </xsl:text></xsl:for-each></td>
            <td width="60%" valign="top"><xsl:for-each select="following-sibling::description[1]/p/item"><xsl:value-of select="./a[2]/text()"/><xsl:text> </xsl:text></xsl:for-each>
            </td>
        </tr>
    </xsl:template>
 
    
    
</xsl:stylesheet>