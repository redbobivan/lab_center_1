<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

<xsl:template match="/">
<newpeople>
  <xsl:for-each select="people/person">
 <person>
  <name>
  <xsl:value-of select="name"/>
  </name>
  </person>
  </xsl:for-each>

</newpeople>
</xsl:template>


</xsl:stylesheet>
