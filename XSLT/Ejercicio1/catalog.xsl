<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/catalogo">
    <html>
    <body>
        <h2>Mis cds</h2>
        <table border="1">
            <tr>
                <th>titulo</th>
                <th>Artista</th>
            </tr>
            <xsl:for-each select="//cd">
            <tr>
                <td><xsl:value-of select="titulo"/></td>
                <td><xsl:value-of select="artista"/></td>
            </tr>
            </xsl:for-each>
        </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>
