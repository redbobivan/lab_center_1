<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" encoding="UTF-8" indent="yes" />
 <xsl:strip-space elements="*"/>
  <xsl:template match="/">
     <xsl:apply-templates/>
  </xsl:template>
  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>
  <xsl:template match="people">
    <new>
      <xsl:apply-templates select="@*|node()"/>
    </new>
  </xsl:template>
</xsl:stylesheet>