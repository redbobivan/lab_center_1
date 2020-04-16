<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

<xsl:template match="/">
<html>
<body>
This is a story about the world.
There are <xsl:value-of select="count(/world/*)"/> countries in the world.
section 1:countries
  <xsl:apply-templates/>
</body>
</html>
</xsl:template>



</xsl:stylesheet>
