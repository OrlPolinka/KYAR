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
						<th>Фильм</th>
						<th>Жанр</th>
					</tr>
					<xsl:for-each select="table/row">
					<xsl:sort order="ascending" select="film"/>
						<tr>
							<td>
								<xsl:value-of select="film" />
							</td>

							<td>
								<xsl:value-of select="genre" />
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>