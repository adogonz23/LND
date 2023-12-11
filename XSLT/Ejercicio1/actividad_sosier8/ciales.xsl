<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml"/>
<xsl:template match="/">
<carta> 
<xsl:apply-templates select="/instituto/curso/alumno[apellidos[contains(text(),'Pérez')]]"/>
</carta>
</xsl:template> 
<xsl:template match="alumno">
<invitacion>
<destinatario> <xsl:value-of select="nombre"/> <xsl:text> - </xsl:text>
<xsl:value-of select="apellidos"/></destinatario>
<eventos><xsl:text>1º Congregacion de los Pérez</xsl:text></eventos>
</invitacion>
</xsl:template> 
</xsl:stylesheet>