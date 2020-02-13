<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" encoding="utf-8" indent="yes"/>
    
    <xsl:template match="/">
        <xsl:element name="doc">
            <xsl:for-each select="//taggersent">
                <xsl:element name="taggersent">
                    <xsl:for-each select="./taggertoken">
                        
                        <xsl:if test="contains(@pos,':')">
                            <xsl:variable name="pos">
                                <xsl:value-of select="substring-before(@pos, ':')"/>
                            </xsl:variable>
                            <xsl:element name="{$pos}">
                                <xsl:attribute name="gram">
                                    <xsl:value-of select="substring-after(@pos,':')"/>
                                </xsl:attribute>
                                <xsl:value-of select="./@wordform"/> 
                            </xsl:element>
                        </xsl:if>
                        
                        <xsl:if test="(not(contains(@pos,':'))) and (not(@pos=''))">
                            <xsl:variable name="pos2">	
                                <xsl:value-of select="./@pos"/>
                            </xsl:variable>
                            <xsl:element name="{$pos2}">
                                <xsl:value-of select="./@wordform"/>
                            </xsl:element>
                        </xsl:if>
                        
                        <xsl:if test="@pos=''">
                            <xsl:element name="UNDEF">
                                <xsl:value-of select="./@wordform"/>
                            </xsl:element>
                        </xsl:if>
                    </xsl:for-each>
                    
                </xsl:element>
            </xsl:for-each>	
        </xsl:element>
    </xsl:template>
    </xsl:stylesheet>