<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="utf-8"/>
    
    <xsl:template match="/">
        <xsl:text>
</xsl:text>
        <xsl:apply-templates select="//titre"/>
        <xsl:text>
</xsl:text>
        <xsl:apply-templates select="//description"/>
        <xsl:text>
</xsl:text>
    </xsl:template>
    
    <xsl:template match="titre">
        <xsl:for-each select="./p/item">
            <xsl:if test="./a[8][text()='obj']">
                <xsl:variable name="id_gov" select="./a[7]"/>
                <xsl:variable name="pos_obj" select="./a[4]"/>
                <xsl:variable name="id_mot" select="./a[1]"/>
                <xsl:variable name="itemGov" select="$id_mot - $id_gov"/>
                
                <xsl:if test="$itemGov > 0"><!--gouverneur AVANT l'objet-->
                    <xsl:value-of select="preceding-sibling::item[$itemGov]/a[4]"/>	<xsl:text> </xsl:text>
                    <xsl:value-of select="$pos_obj"/>
                </xsl:if>
                <xsl:text>
</xsl:text>
                <xsl:if test="$itemGov &lt;0"><!--gouverneur APRES l'objet-->
                    <xsl:value-of select="$pos_obj"/><xsl:text> </xsl:text>
                    <xsl:value-of select="following-sibling::item[-$itemGov]/a[4]"/>	
                </xsl:if>
                <xsl:text>
</xsl:text>
            </xsl:if>
        </xsl:for-each>    
    </xsl:template>
    
    <xsl:template match="description">
        <xsl:for-each select="./p/item">
            <xsl:if test="./a[8][text()='obj']">
                <xsl:variable name="id_gov" select="./a[7]"/>
                <xsl:variable name="pos_obj" select="./a[4]"/>
                <xsl:variable name="id_mot" select="./a[1]"/>
                <xsl:variable name="itemGov" select="$id_mot - $id_gov"/>
                
                <xsl:if test="$itemGov > 0"><!--gouverneur AVANT l'objet-->
                    <xsl:value-of select="preceding-sibling::item[$itemGov]/a[4]"/>	<xsl:text> </xsl:text>
                    <xsl:value-of select="$pos_obj"/>
                </xsl:if>
                <xsl:text>
</xsl:text>
                <xsl:if test="$itemGov &lt;0"><!--gouverneur APRES l'objet-->
                    <xsl:value-of select="$pos_obj"/><xsl:text> </xsl:text>
                    <xsl:value-of select="following-sibling::item[-$itemGov]/a[4]"/>	
                </xsl:if>
                <xsl:text>
</xsl:text>
            </xsl:if>
        </xsl:for-each>    
    </xsl:template>
    
</xsl:stylesheet>