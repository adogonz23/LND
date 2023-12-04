<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
    <html>
        <head>
            <title>Alumnos del Instituto</title>
        </head>
        <body>
            <h1>Lista de Alumnos:</h1>
            <ul>
                <xsl:apply-templates select="/instituto/curso[@codigo='2']"/>
            </ul>
    </body>
    </html> 
</xsl:template>
<xsl:template match="alumno">
    <li>
        Curso:<xsl:value-of select="../@nombre"/>
        <br/>
        Nombre: 
        <b>
        <xsl:value-of select="./nombre"/>
        </b>
        <br/>
        Apellidos: <xsl:value-of select="./apellidos"/>

        <br/>
        CIAL: <xsl:value-of select="@cial"/>
        
        
        <hr noshade="noshade"/>

    </li>
</xsl:template>
</xsl:stylesheet>