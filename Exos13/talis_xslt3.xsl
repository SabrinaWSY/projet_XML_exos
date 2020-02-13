<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="utf-8"/>
    
    <xsl:template match="/">
        <xsl:text>Voici les 3 patrons morpho-syntaxiques sur les contenus étiquetés avec Talisman de la rubrique «A la Une» 2018: </xsl:text><xsl:text>
	Affichage en texte simple</xsl:text><xsl:text>
	    </xsl:text>
        <xsl:text>Titre:
                </xsl:text>
        <xsl:apply-templates select="//titre"/>
        <xsl:text>
        </xsl:text>
        <xsl:text>Description:
                </xsl:text>
        <xsl:apply-templates select="//description"/>
    </xsl:template>
    
    <xsl:template match="titre">
        <xsl:for-each select="./p/item">
            
            <xsl:if test="./a[4][text()='NC'] and following-sibling::item[1]/a[4][text()='ADJ']">
                <xsl:text>NC-ADJ : </xsl:text>
                <xsl:value-of select="./a[2]"/><xsl:text> </xsl:text>
                <xsl:value-of select="following-sibling::item[1]/a[2]"/><xsl:text>		
		</xsl:text>		
            </xsl:if>
            <xsl:if test="./a[4][text()='DET'] and preceding-sibling::item[1]/a[4][text()='V'] and following-sibling::item[1]/a[4][text()='NC']">
                <xsl:text>V-DET-NC : </xsl:text>
                <xsl:value-of select="preceding-sibling::item[1]/a[2]"/><xsl:text> </xsl:text>
                <xsl:value-of select="./a[2]"/><xsl:text> </xsl:text>
                <xsl:value-of select="following-sibling::item[1]/a[2]"/><xsl:text> 
		</xsl:text>		
            </xsl:if>
            <xsl:if test="./a[4][text()='P'] and preceding-sibling::item[1]/a[4][text()='NC'] and following-sibling::item[1]/a[4][text()='NC'] and following-sibling::item[2]/a[4][text()='P']">
                <xsl:text>NC-P-NC-P : </xsl:text>
                <xsl:value-of select="preceding-sibling::item[1]/a[2]"/><xsl:text> </xsl:text>
                <xsl:value-of select="./a[2]"/><xsl:text> </xsl:text>
                <xsl:value-of select="following-sibling::item[1]/a[2]"/><xsl:text> </xsl:text>
                <xsl:value-of select="following-sibling::item[2]/a[2]"/><xsl:text> 
		</xsl:text>		
            </xsl:if>
        </xsl:for-each>    
    </xsl:template>
    
    <xsl:template match="description">
        <xsl:for-each select="./p/item">
            
            <xsl:if test="./a[4][text()='NC'] and following-sibling::item[1]/a[4][text()='ADJ']">
                <xsl:text>NC-ADJ : </xsl:text>
                <xsl:value-of select="./a[2]"/><xsl:text> </xsl:text>
                <xsl:value-of select="following-sibling::item[1]/a[2]"/><xsl:text>		
		</xsl:text>		
            </xsl:if>
            <xsl:if test="./a[4][text()='DET'] and preceding-sibling::item[1]/a[4][text()='V'] and following-sibling::item[1]/a[4][text()='NC']">
                <xsl:text>V-DET-NC : </xsl:text>
                <xsl:value-of select="preceding-sibling::item[1]/a[2]"/><xsl:text> </xsl:text>
                <xsl:value-of select="./a[2]"/><xsl:text> </xsl:text>
                <xsl:value-of select="following-sibling::item[1]/a[2]"/><xsl:text> 
		</xsl:text>		
            </xsl:if>
            <xsl:if test="./a[4][text()='P'] and preceding-sibling::item[1]/a[4][text()='NC'] and following-sibling::item[1]/a[4][text()='NC'] and following-sibling::item[2]/a[4][text()='P']">
                <xsl:text>NC-P-NC-P : </xsl:text>
                <xsl:value-of select="preceding-sibling::item[1]/a[2]"/><xsl:text> </xsl:text>
                <xsl:value-of select="./a[2]"/><xsl:text> </xsl:text>
                <xsl:value-of select="following-sibling::item[1]/a[2]"/><xsl:text> </xsl:text>
                <xsl:value-of select="following-sibling::item[2]/a[2]"/><xsl:text> 
		</xsl:text>		
            </xsl:if>
        </xsl:for-each>    
    </xsl:template>
    
</xsl:stylesheet>