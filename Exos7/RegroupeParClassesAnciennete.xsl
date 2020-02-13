<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="iso-8859-1"/>
<xsl:template match="/table">
  <html>
    <style>
      table,tr,td { border: 2px solid black; border-spacing: 1px;} td {align: left;}
    </style>
    <body bgcolor="#FFFFF0">
  <h1 align="center">Infirmières</h1>
    <table width="50%" align="center">
      <tr style="text-align:center">
        <td>Numéro</td>
        <td>Âge</td>
        <td>Années d'études</td>
        <td>Diplôme</td>
        <td>Ancienneté</td>
        <td>Service</td>
      </tr>
        <xsl:for-each select="ligne">
          <xsl:if test="not(preceding-sibling::ligne/classe_anciennete=./classe_anciennete)">
            <tr>
            <td align="center" colspan="6"><b><xsl:value-of select="./classe_anciennete"/></b></td>
            </tr>
          </xsl:if>
          <tr style="text-align:center">
            <td>
              <xsl:value-of select="infirmiere"/>
            </td>
            <td>
              <xsl:value-of select="age"/>
            </td>
            <td>
              <xsl:value-of select="annees_etudes"/>
            </td>
            <td>
              <xsl:value-of select="diplome"/>
            </td>
            <td>
              <xsl:value-of select="anciennete_neonatalite"/>
            </td>
            <td>
              <xsl:value-of select="service"/>
            </td>
          </tr>
        </xsl:for-each>
      
  </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
