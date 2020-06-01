<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <meta name="autor" content="Juan Antonio Cabeza Calvo"/>
                <title>Restaurante Konoa</title>
                <link rel="stylesheet" type="text/css" href="restaurant.css"/>
            </head>
            <body id="body">
                <h1 id="restaurant_tittle">Restaurante Konoa</h1>
                <hr id="linea2"></hr>
                <xsl:for-each select="restaurante/plato">
                    <div class="plato">
                        <h3><xsl:value-of select="nombre"/></h3>
                        <xsl:element name="img">
                            <xsl:attribute name="src">
                                <xsl:value-of select="imagen/@ruta"/>
                            </xsl:attribute>
                            <xsl:attribute name="height">100</xsl:attribute>
                        </xsl:element>
                        <ul>
                            <li><xsl:value-of select="precio"/></li>
                            <li>
                                <a>
                                    <xsl:attribute name="href">
                                        <xsl:value-of select="web/@link"/>
                                    </xsl:attribute>
                                    <xsl:value-of select="web"/>
                                </a>
                            </li>
                        </ul>
                    </div>
                </xsl:for-each>
                <xsl:for-each select="restaurante/plato_combinado">
                    <div class="plato">
                        <h3><xsl:value-of select="nombre"/></h3>
                        <xsl:element name="img">
                            <xsl:attribute name="src">
                                <xsl:value-of select="imagen/@ruta"/>
                            </xsl:attribute>
                            <xsl:attribute name="height">100</xsl:attribute>
                        </xsl:element>
                        <ul>
                            <li>
                                <p>Precio(€):<xsl:value-of select="8 + 12"></xsl:value-of></p>
                            </li>
                            <li>
                                <a>
                                    <xsl:attribute name="href">
                                        <xsl:value-of select="web/@link"/>
                                    </xsl:attribute>
                                    <xsl:value-of select="web"/>
                                </a>
                            </li>
                        </ul>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>