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
            <head><title>EXERCICE 4 : QUESTION 1</title><etudiants>Lara, Siyu</etudiants></head>
            <body>
                <!-- récupérer les contenus demandés -->
                <p><strong>Auteur : </strong><xsl:value-of select="TEI.2/teiHeader/fileDesc/titleStmt/author"/></p>
                <p><strong>Recueil: </strong><xsl:value-of select="TEI.2/teiHeader/fileDesc/titleStmt/title"/></p>
                <p><strong>Premier vers : </strong><xsl:value-of select="TEI.2/text/group/text/body/lg[1]/l[1]"></xsl:value-of></p>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>