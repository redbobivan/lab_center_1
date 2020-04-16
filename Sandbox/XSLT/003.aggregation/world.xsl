<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

<xsl:template match="/">
This is a story about the world.
There are <xsl:value-of select="count(/world/*)"/> countries in the world.
section 1:countries
  <xsl:apply-templates/>
</xsl:template>

<xsl:template match="country">
  <p><xsl:value-of select="@countryID"/> :
  <name><xsl:value-of select="name"/></name>
  <xsl:apply-templates select="provinces"/>
  </p>
</xsl:template>

<xsl:template match="provinces">
 <p>  
 There are <xsl:value-of select="count(*)"/> provinces in <xsl:value-of select="../name"/>.
 <xsl:apply-templates select="province"/>
  </p>
</xsl:template>

<xsl:template match="province">
  <p><xsl:value-of select="../../@countryID"/>_<xsl:value-of select="@provinceID"/> :
province name is 
  <name><xsl:value-of select="name"/></name>.
 <xsl:apply-templates select="cities"/>
  </p>
</xsl:template>
<xsl:template match="cities">
  <p>
  There are <xsl:value-of select="count(*)"/> cities in <xsl:value-of select="../name"/>.
 <xsl:apply-templates select="city"/>
  </p>
</xsl:template>
<xsl:template match="city">
  <p><xsl:value-of select="../../../../@countryID"/>_<xsl:value-of select="../../@provinceID"/>_<xsl:value-of select="@cityID"/> :
city name is 
  <name><xsl:value-of select="name"/></name>.
  </p>
</xsl:template>

</xsl:stylesheet>
