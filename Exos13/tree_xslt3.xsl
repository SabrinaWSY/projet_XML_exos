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
                    <p><xsl:text>Etiquetage TreeTagger des résultats d'extraction de la rubrique : </xsl:text><xsl:value-of select="extraction/@type"/></p>
                    <p><xsl:text>Affichage en html par Lara et Siyu</xsl:text><xsl:text> </xsl:text></p>
                </div>
                <h3>Patron VER-DET-NOM</h3>	
                <p><patron>patron VER-DET-NOM</patron> (<lemme>lemme</lemme>,<pos>POS</pos>)</p>
                <xsl:apply-templates select="//item"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="item">
        <h5>Item n°<xsl:value-of select="./@number"/></h5>
        <div class="item">
            <xsl:for-each select="./titre">
                <p>
                    <xsl:for-each select="./article/element">
                        <xsl:choose>
                            <xsl:when test="./data[contains(@type,'type')][contains(text(),'VER')] and following-sibling::element[1]/data[contains(@type,'type')][contains(text(),'DET')] and following-sibling::element[2]/data[contains(@type,'type')][contains(text(),'NOM')]">
                                <patron><xsl:value-of select="./data[contains(@type,'string')]"/></patron> (<lemme><xsl:value-of select="./data[contains(@type,'lemma')]"/></lemme>, <pos><xsl:value-of select="./data[contains(@type,'type')]"/></pos>)<xsl:text> </xsl:text>		
                            </xsl:when>
                            <xsl:when test="./data[contains(@type,'type')][contains(text(),'DET')] and preceding-sibling::element[1]/data[contains(@type,'type')][contains(text(),'VER')] and following-sibling::element[1]/data[contains(@type,'type')][contains(text(),'NOM')]">
                                <patron><xsl:value-of select="./data[contains(@type,'string')]"/></patron> (<lemme><xsl:value-of select="./data[contains(@type,'lemma')]"/></lemme>, <pos><xsl:value-of select="./data[contains(@type,'type')]"/></pos>)<xsl:text> </xsl:text>		
                            </xsl:when>
                            <xsl:when test="./data[contains(@type,'type')]='NOM' and preceding-sibling::element[1]/data[contains(@type,'type')][contains(text(),'DET')] and preceding-sibling::element[2]/data[contains(@type,'type')][contains(text(),'VER')]">
                                <patron><xsl:value-of select="./data[contains(@type,'string')]"/></patron> (<lemme><xsl:value-of select="./data[contains(@type,'lemma')]"/></lemme>, <pos><xsl:value-of select="./data[contains(@type,'type')]"/></pos>)<xsl:text> </xsl:text>		
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="./data[contains(@type,'string')]"/><xsl:text> </xsl:text>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                </p>
            </xsl:for-each>
            
            <xsl:for-each select="./description">
                <p>
                    <xsl:for-each select="./article/element">
                        <xsl:choose>
                            <xsl:when test="./data[contains(@type,'type')][contains(text(),'VER')] and following-sibling::element[1]/data[contains(@type,'type')][contains(text(),'DET')] and following-sibling::element[2]/data[contains(@type,'type')][contains(text(),'NOM')]">
                                <patron><xsl:value-of select="./data[contains(@type,'string')]"/></patron> (<lemme><xsl:value-of select="./data[contains(@type,'lemma')]"/></lemme>, <pos><xsl:value-of select="./data[contains(@type,'type')]"/></pos>)<xsl:text> </xsl:text>		
                            </xsl:when>
                            <xsl:when test="./data[contains(@type,'type')][contains(text(),'DET')] and preceding-sibling::element[1]/data[contains(@type,'type')][contains(text(),'VER')] and following-sibling::element[1]/data[contains(@type,'type')][contains(text(),'NOM')]">
                                <patron><xsl:value-of select="./data[contains(@type,'string')]"/></patron> (<lemme><xsl:value-of select="./data[contains(@type,'lemma')]"/></lemme>, <pos><xsl:value-of select="./data[contains(@type,'type')]"/></pos>)<xsl:text> </xsl:text>		
                            </xsl:when>
                            <xsl:when test="./data[contains(@type,'type')]='NOM' and preceding-sibling::element[1]/data[contains(@type,'type')][contains(text(),'DET')] and preceding-sibling::element[2]/data[contains(@type,'type')][contains(text(),'VER')]">
                                <patron><xsl:value-of select="./data[contains(@type,'string')]"/></patron> (<lemme><xsl:value-of select="./data[contains(@type,'lemma')]"/></lemme>, <pos><xsl:value-of select="./data[contains(@type,'type')]"/></pos>)<xsl:text> </xsl:text>		
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="./data[contains(@type,'string')]"/><xsl:text> </xsl:text>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                </p>
            </xsl:for-each>
        </div>
    </xsl:template>
    
</xsl:stylesheet>