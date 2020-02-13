<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="iso-8859-1"/>
<xsl:template match="/">
    <html>
        <body style="font-family: 'Times New Roman', sans-serif">
            <xsl:for-each select="/teiCorpus.2/EXOS9/TEI.2/text/group/text/body/div/u">
                <xsl:if test="self::u[contains(text(), 'quand')]">
                    <h3>
                        <b>
                            <xsl:value-of select="../head"/>
                            <xsl:text>, n = </xsl:text>
                            <xsl:value-of select="@n"/>
                            <xsl:text>, locuteur = </xsl:text>
                            <xsl:value-of select="@who"/>
                        </b>
                    </h3>
                    <p>
                        <i>
                            <xsl:text>precedant: </xsl:text>
                            <xsl:value-of select="preceding-sibling::u[1]"/>
                        </i>
                    </p>
                    <p>
                        <b>
                            <xsl:text/>
                            <xsl:value-of select="substring-before(string(.),'quand')"/>
                            <font color="#8A2BE2" align="center">
                                <xsl:text>quand</xsl:text>
                            </font>
                            <xsl:value-of select="substring-after(string(.),'quand')"/>
                        </b>
                    </p>
                    <p>
                        <i>
                            <xsl:text>suivant:    </xsl:text>
                            <xsl:value-of select="following-sibling::u[1]"/>
                        </i>
                        <br/>
                    </p>
                    <br/>
                </xsl:if>
            </xsl:for-each>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>