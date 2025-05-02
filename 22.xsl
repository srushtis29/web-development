<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
<xsl:template match="/">
<html>
<style>

</style>
<body>
  <h2 style="margin-left:40%;  margin-left:45%;">My CD Collection</h2>
  <table border="1" style="margin-left:30%; width:40%; text-align:center;">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Title</th>
      <th style="text-align:left">Artist</th>
    </tr>

    <xsl:for-each select="catalog/cd">

    <tr>
      <td><xsl:value-of select="title"/></td>
      <td><xsl:value-of select="artist"/></td>
    </tr>
    
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>