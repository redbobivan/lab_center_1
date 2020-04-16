<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

<xsl:template match="/">
<html>
<body>
 <table border="1">
  <tr>
   <th>Name</th>
  </tr>
  <xsl:for-each select="people/person">
  <tr>
  <td> <xsl:value-of select="name"/>
  </td>
  </tr>
  </xsl:for-each>
 </table>
</body>
</html>

</xsl:template>
</xsl:stylesheet>
