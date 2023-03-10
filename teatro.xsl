<?xml version="1.0" encoding="utf-8"?>
<!-- 
     * Módulo:  LMSGI - Lenguaje de marcas y sistemas de gestión de la información
     * Unidad:  LMSGI04 - Transformación de datos (20%)
     * Tarea:   TE02 - Tarea evaluativa 2. XSLT (60%)
     * Nombre:  Joseba Ercilla Olabarri
     * Fecha:   2023-03-10
     *
     * Autoevaluación: https://docs.google.com/document/d/1CgTB5schwkzEUxdaq1s9ndUp6tnRnnehjVN_QtCIhTk/edit?usp=sharing
-->


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:output method="html" doctype-system="about:legacy-compat" />
  
<xsl:template match="/reservaeventos" >
    <html lang="es">
      
      <head>
        <link href="../css/estilo.css" rel="stylesheet" type="text/css" />
        <meta charset="utf-8"/>
        <meta name="description" content="Página principal" />
        <title>titulo de la web</title>
      </head>
      
      <body>
        <header>
          <img src= "../img/logotipo.png" alt= "Reservas" />
          <a href="teatro.xml">Teatro</a>
          <a href="restaurante.xml">Restaurante</a>
          <a href="festival.xml">Festival</a>
        </header>
        
        <main class="principal">
          <section class="teatro">
            <h1>PROXIMAS OBRAS DE TEATRO</h1>
            <ul>
            <xsl:for-each select="teatro[starts-with(fechahora/@dia,'2023-01')]">
              <xsl:sort select="fechahora/@dia" order="descending" />
              <xsl:choose>
                <xsl:when test="precio&lt;20">
                  <li class="subrayado"><xsl:value-of select="fechahora/@dia"/>: <xsl:value-of select="obra"/></li>
                </xsl:when>
                <xsl:otherwise>
                    <li><xsl:value-of select="fechahora/@dia"/>: <xsl:value-of select="obra"/></li>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:for-each>
            </ul>
          </section>
        </main>
        
        <footer>
          <address>&#169; 2020 desarrollado por info@birt.eus</address>
        </footer>
      </body>
    </html>
</xsl:template>
</xsl:stylesheet>