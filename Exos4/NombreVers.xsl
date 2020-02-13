<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"
                encoding="UTF-8"
                doctype-system="about:legacy-compat"
                indent="yes"/>
<!-- commencer par la racine -->
    <xsl:template match="/">
        <!-- la structure html -->
        <html>
            <head><title>EXERCICE 4 : QUESTION 2</title><etudiants>Lara, Siyu</etudiants></head>
            <body>
                <p><strong>Nombre de vers : </strong><xsl:value-of select="count(.//l)"/></p>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>