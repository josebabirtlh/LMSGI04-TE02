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
  
<xsl:variable name="nombre_restaurante" select="'El clarete'"/>
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
        
        <main>
          <xsl:for-each select="restaurante[nombrerestaurante=$nombre_restaurante]">
            <h1><a href="{informacion}"><xsl:value-of select="nombrerestaurante"/>-<xsl:value-of select="ciudad"/></a></h1>
            <xsl:for-each select="menu">
              <article class="restaurante">
                <h3><xsl:value-of select="@tipo"/></h3>
                <xsl:for-each select="plato">
                  <p><xsl:value-of select="."/></p>
                </xsl:for-each>
              </article>  
            </xsl:for-each>              
          </xsl:for-each>
        </main>
        
        <footer>
          <address>&#169; 2020 desarrollado por info@birt.eus</address>
        </footer>
      </body>
    </html>
</xsl:template>
</xsl:stylesheet>