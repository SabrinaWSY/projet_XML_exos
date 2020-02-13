<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="iso-8859-1"/>
<xsl:template match="/teiCorpus.2">
    <html>
        <head>
            <title>EXOS 9: clientèle Air France</title>
        </head>
        <body>
            <h2>EXOS 9: clientèle Air France</h2>
            <br/>
            <xsl:apply-templates/>
            <br/>
        </body>
    </html>
</xsl:template>

<xsl:template match="nom">
    <xsl:value-of select="."/>
</xsl:template>

<xsl:template match="prenom">
    <xsl:value-of select="."/>
    <br/>
</xsl:template>

<xsl:template match="email">
    <xsl:value-of select="."/>
    <br/>
</xsl:template>

<xsl:template match="teiHeader">
    <xsl:for-each select="*/*">
        <br/>
        <xsl:value-of select="." disable-output-escaping="yes"/>
        <br/>
    </xsl:for-each>
</xsl:template>

<xsl:template match="head">
    <br/>
    <b>
        <xsl:value-of select="."/>
    </b>
    <br/>
    <br/>
</xsl:template>
<xsl:template match="u">
    <xsl:value-of select="."/>
    <br/>
</xsl:template>
</xsl:stylesheet>