<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="1.0">

    <xsl:output method="xml" indent="yes"/>
    <xsl:mode on-no-match="shallow-copy"/>

    <xsl:template match="/">
        <html>
            <head>
                <body>
                <xsl:template match="instituto/curso">
                </xsl:template>
                </body>
            </head>
        </html>
    </xsl:template>

    

</xsl:stylesheet>