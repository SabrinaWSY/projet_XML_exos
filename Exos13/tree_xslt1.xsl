<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="utf-8"/>
    
    <xsl:template match="/">
        <xsl:text>
                Exos 13 Section-TreeTagger XSLT Question 1:
                Voici les contenus étiquetés avec TreeTagger de la rubrique «A la Une»: </xsl:text><xsl:text>
            	Affichage en texte simple</xsl:text><xsl:text> </xsl:text><xsl:text>
	
        </xsl:text>
        <xsl:apply-templates select="//item"/>
    </xsl:template>
    
    <xsl:template match="item">
        <xsl:text>Item n°</xsl:text><xsl:value-of select="./@number"/><xsl:text>
	
	</xsl:text>
        <xsl:for-each select="./titre/article/element">
            <xsl:text>&lt;pos&gt;</xsl:text>
            <xsl:value-of select="./data[contains(@type,'type')]"/>
            <xsl:text>&lt;/pos&gt;&lt;lemme&gt;</xsl:text>
            <xsl:value-of select="./data[contains(@type,'lemma')]"/>
            <xsl:text>&lt;/lemme&gt;&lt;mot&gt;</xsl:text>
            <xsl:value-of select="./data[contains(@type,'string')]"/>
            <xsl:text>&lt;/mot&gt;	
	</xsl:text>
        </xsl:for-each>
        <xsl:text>
	</xsl:text>
        <xsl:for-each select="./description/article/element">
            <xsl:text>&lt;pos&gt;</xsl:text>
            <xsl:value-of select="./data[contains(@type,'type')]"/>
            <xsl:text>&lt;/pos&gt;&lt;lemme&gt;</xsl:text>
            <xsl:value-of select="./data[contains(@type,'lemma')]"/>
            <xsl:text>&lt;/lemme&gt;&lt;mot&gt;</xsl:text>
            <xsl:value-of select="./data[contains(@type,'string')]"/>
            <xsl:text>&lt;/mot&gt;	
	</xsl:text>
        </xsl:for-each>
        <xsl:text>
</xsl:text>
        
        
    </xsl:template>
    
    
</xsl:stylesheet>