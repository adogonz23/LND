<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
<xsl:template match="item">
    <html>
        <head>
            <body>
                <xsl:apply-templates select="Category/Feed/item"/>

            </body>    
        </head>
    </html>
</xsl:template>
<xsl:template match="item">
<titulo><xsl:value-of select="title"/></titulo>
</xsl:template>

</xsl:stylesheet>