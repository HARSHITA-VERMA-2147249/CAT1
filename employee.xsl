<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
	<html>
		<body>
			<h1 style="text-align:center">Employee Management System</h1>
			<table border="2" align="center">
				<tr>
					<th>ID</th>
					<th>NAME</th>
					<th>AGE</th>
					<th>SALARY</th>
					<th>EMAIL</th>
					<th>MOBILE NO</th>
					<th>DESIGNATION</th>
					<th>PROMOTION</th>
				</tr>
				<xsl:for-each select="Company/Employee">
					<xsl:sort select="id" order="ascending"/>
						<tr>
							<td>
								<xsl:value-of select="Emp-id"/>
							</td>
							<td>
								<xsl:value-of select="Emp-name"/>
							<td>
								<xsl:value-of select="Emp-age"/>
							</td>
							<td>
								<xsl:value-of select="Emp-salary"/>
						    </td>
						    <td>
						    	<xsl:value-of select="Emp-emailid"/>
						    </td>
						    <td>
                                <xsl:value-of select="Emp-phonenum"/>
                            </td>
                            <td>
                                <xsl:value-of select="Emp-designation"/>
                            </td>
							 <td>
		                        	<xsl:choose>
		                        		<xsl:when test="Emp-age &gt;= 50">Associate Project manager</xsl:when>
									    <xsl:when test="Emp-age &gt;=40 and Emp-age &lt;=49">Team Leader</xsl:when>
									    <xsl:otherwise>Developer</xsl:otherwise>
							        </xsl:choose>
						        </td>
                        </tr>
               </xsl:for-each>
        </table>
    </body>
</html>

</xsl:template>
<!-- <xsl:template match="name ">
<span style="font-size = 22px;">
<xsl:value-of select="."/>
</span>
<br/>
</xsl:template> -->
</xsl:stylesheet>