<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
<table border="1">
    <tr>
        <th>Toodenimi</th>
        <th>Kogus</th>
        <th>Arve</th>
        <th>Tellija Nimi</th>
        <th>Tellija Perenimi</th>
        <th>Tellija Isikukood</th>
        <th>Tellija Address</th>
        <th>Kuupäev</th>
    </tr>
    <xsl:for-each select="tellimused/arve">
        <tr>
            <td>
              <xsl:value-of select="toodenimi"/>
            </td>
            <td>
              <xsl:value-of select="kogus"/>
            </td>
            <td>
              <xsl:value-of select="hind"/>
            </td>
            <td>
              <xsl:value-of select="tellija/nimi"/>
            </td>
            <td>
              <xsl:value-of select="tellija/perenimi"/>
            </td>
            <td>
              <xsl:value-of select="tellija/isikukood"/>
            </td>
            <td>
              <xsl:value-of select="tellija/address"/>
            </td>
            <td>
              <xsl:value-of select="kuupaev"/>
            </td>
        </tr>
    </xsl:for-each>
</table>
</xsl:template>
</xsl:stylesheet>