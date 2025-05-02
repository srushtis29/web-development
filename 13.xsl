<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>
<xsl:template match="/">
<html>
<body>
<h2 style="margin-left:40%; margin-left:45%;">Students</h2>
<table border="1" style="margin-left:30%; width:40%; text-align:center;">
<tr bgcolor="#99ffff">
<th>Roll No</th>
<th>First Name</th>
<th>Last Name</th>
<th>Nick Name</th>
<th>Marks</th>
</tr>
<xsl:for-each select="class/student">
<xsl:if test="marks > 90">
<tr>
<td>
<xsl:value-of select="@rollno"/>
</td>
<td>
<xsl:value-of select="firstname"/>
</td>
<td>
<xsl:value-of select="lastname"/>
</td>
<td>
<xsl:value-of select="nickname"/>
</td>
<td>
<xsl:value-of select="marks"/>
</td>
</tr>
</xsl:if>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>