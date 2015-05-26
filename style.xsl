<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" >

<xsl:template match="/">
  <html>
    <head>
      <meta name="viewport" content="width=device-width, initial-scale=1"/>
      <link type="text/css" href="css/bootstrap.min.css" rel="stylesheet" />
      <link type="text/css" href="css/custom.css" rel="stylesheet" />
    </head>
    <body>
      <div class="container">
        <div class="row">
          <div class="col-md-8">
            <h1><xsl:value-of select="/book/title"/></h1>
          </div>  
          <div class="col-md-5">
            <h3><xsl:value-of select="/book/authors"/></h3>
          </div>
          <div class="col-md-3">
            <xsl:if test="/book/source">
              <h4>Source: <xsl:value-of select="/book/source"/></h4>
            </xsl:if> 
          </div>  
        </div>

        <div class="row spacer">
          <div class="span4"></div>
        </div> 
             
        
        <xsl:for-each select="book/highlights/highlight">
        <div class="row">   
          <div class="col-md-1">
              <p><strong><xsl:value-of select="highlightID"/></strong></p>
          </div>           
          <div class="col-md-9">
            <p><xsl:value-of select="text"/></p>
          </div>      
          <div class="col-md-2">
            <p>pg. <xsl:value-of select="location"/></p>
          </div>    
          <xsl:if test="note">
              <div class="col-md-9 col-md-offset-1">
              <p><strong>Note: <xsl:value-of select="note"/></strong></p>
              </div>
          </xsl:if>
             
          <xsl:if test="reference">
            <div class="col-md-9 col-md-offset-1">
              <p><small><em><strong>Reference: </strong><xsl:value-of select="reference"/></em></small></p>
            </div>       
          </xsl:if>
          <xsl:if test="referenceauthors">
            <div class="col-md-9 col-md-offset-1">
              <p><small><em><strong>Reference Author: </strong><xsl:value-of select="referenceauthors"/></em></small></p>
            </div>       
          </xsl:if>
          <xsl:if test="toRead">
            <div class="col-md-9 col-md-offset-1">
              <p><small><em><strong>Read Book in Future: </strong><xsl:value-of select="toRead"/></em></small></p>
            </div>       
          </xsl:if>        
          <!--<div class="clearfix visible-xs-block visible-md-block visible-lg-block"></div>-->
        </div>
        <div class="row spacer">
          <div class="span4"></div>
        </div>
        </xsl:for-each>
        
      </div>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>