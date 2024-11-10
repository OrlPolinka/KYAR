<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<title>XSLT</title>
			</head>
			<body>
				<table border="1">
					<tr>
						<th>ПИ 1-9</th>
						<th>Результат аттестации</th>
					</tr>
					<xsl:for-each select="table/row">
						<tr>
							<td>
								<xsl:value-of select="student" />
							</td>
							<xsl:choose>
 								<xsl:when test="progress &gt; 8">
 									<td bgcolor="green">
 										<xsl:value-of select="progress"/>
									</td>
 								</xsl:when>
								 <xsl:when test="progress &lt; 4">
									<td bgcolor="red">
										<xsl:value-of select="progress"/>
								   </td>
								</xsl:when>
 								<xsl:otherwise>
 									<td>
										<xsl:value-of select="progress" />
									</td>
 								</xsl:otherwise>
							</xsl:choose>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>