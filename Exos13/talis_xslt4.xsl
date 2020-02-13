<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <title>XML - ex13 - Lara DUNUAN et Siyu WANG</title>
                <style>
                    body {font-family: "Gill Sans", sans-serif;}
                    div.header {text-align:center; font-size:11px;}
                    h5{margin-left:100px;}
                    div.item {text-align:justify; margin-left:150px;margin-right:250px;}
                    p{margin:0px;}
                    patron {background-color: #CEF6F5;}
                    patron2 {background-color: #F3F781;}
                    lemme {font-size:10px;font-weight:bold;color:#74DF00;}
                    pos {font-size: 10px;font-weight:bold;color:#FF8000;}
                    
                </style>
            </head>
            <body>
                <div class="header">
                    <p><xsl:text>Etiquetage Talismane des résultats d'extraction de la rubrique : </xsl:text><xsl:value-of select="extraction/@type"/></p>
                    <p><xsl:text>Affichage en html par Lara et Siyu</xsl:text><xsl:text> </xsl:text></p>
                </div>
                <h3>Patron VER-DET-NOM</h3>	
                <p><patron>patron VER-DET-NOM</patron> (<lemme>lemme</lemme>,<pos>POS</pos>)</p>
                <xsl:apply-templates select="//titre"/>
                <xsl:apply-templates select="//description"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="titre">
        <h5>Titre</h5>
        <div class="titre">
            <p>
            <xsl:for-each select="./p/item">
                        <xsl:choose>
                            <xsl:when test="./a[4][text()='V'] and following-sibling::item[1]/a[4][text()='DET'] and following-sibling::item[2]/a[4][text()='NC']">
                                <patron><xsl:value-of select="./a[2]"/></patron> (<lemme><xsl:value-of select="./a[3]"/></lemme>, <pos><xsl:value-of select="./a[4]"/></pos>)<xsl:text> </xsl:text>
                            </xsl:when>
                            <xsl:when test="./a[4][text()='DET'] and preceding-sibling::item[1]/a[4][text()='V'] and following-sibling::item[1]/a[4][text()='NC']">	
                                <patron><xsl:value-of select="./a[2]"/></patron> (<lemme><xsl:value-of select="./a[3]"/></lemme>, <pos><xsl:value-of select="./a[4]"/></pos>)<xsl:text> </xsl:text>
                            </xsl:when>
                            <xsl:when test="./a[4][text()='NC'] and preceding-sibling::item[1]/a[4][text()='DET'] and preceding-sibling::item[2]/a[4][text()='V']">
                                <patron><xsl:value-of select="./a[2]"/></patron> (<lemme><xsl:value-of select="./a[3]"/></lemme>, <pos><xsl:value-of select="./a[4]"/></pos>)<xsl:text> </xsl:text>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="./a[2]"/><xsl:text> </xsl:text>
                            </xsl:otherwise>
                        </xsl:choose>
            </xsl:for-each>     
            </p>
        </div>
    </xsl:template>
        <xsl:template match="description">     
            <h5>Description</h5>
            <div class="description">
                <p>
                <xsl:for-each select="./p/item">
                    <xsl:choose>
                        <xsl:when test="./a[4][text()='V'] and following-sibling::item[1]/a[4][text()='DET'] and following-sibling::item[2]/a[4][text()='NC']">
                            <patron><xsl:value-of select="./a[2]"/></patron> (<lemme><xsl:value-of select="./a[3]"/></lemme>, <pos><xsl:value-of select="./a[4]"/></pos>)<xsl:text> </xsl:text>
                        </xsl:when>
                        <xsl:when test="./a[4][text()='DET'] and preceding-sibling::item[1]/a[4][text()='V'] and following-sibling::item[1]/a[4][text()='NC']">	
                            <patron><xsl:value-of select="./a[2]"/></patron> (<lemme><xsl:value-of select="./a[3]"/></lemme>, <pos><xsl:value-of select="./a[4]"/></pos>)<xsl:text> </xsl:text>
                        </xsl:when>
                        <xsl:when test="./a[4][text()='NC'] and preceding-sibling::item[1]/a[4][text()='DET'] and preceding-sibling::item[2]/a[4][text()='V']">
                            <patron><xsl:value-of select="./a[2]"/></patron> (<lemme><xsl:value-of select="./a[3]"/></lemme>, <pos><xsl:value-of select="./a[4]"/></pos>)<xsl:text> </xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="./a[2]"/><xsl:text> </xsl:text>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:for-each>
                </p>
        </div>
    </xsl:template>
    
</xsl:stylesheet>