<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
<h2>Заказы э-магазина:</h2>
<table border="1">
    <tr>
        <th>Toodenimi</th>
        <th>Kogus</th>
        <th>Hind</th>
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
    <br/>
    <h2>Заказы за последние 3 месяца:</h2>
    <table border="1">
      <tr>
        <th>Toodenimi</th>
        <th>Kogus</th>
        <th>Hind</th>
        <th>Tellija Nimi</th>
        <th>Tellija Perenimi</th>
        <th>Tellija Isikukood</th>
        <th>Tellija Address</th>
        <th>Kuupäev</th>
      </tr>
      <xsl:for-each select="tellimused/arve">
        <xsl:if test="contains(kuupaev, '11.2020') or contains(kuupaev, '10.2020') or contains(kuupaev, '09.2020')">
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
        </xsl:if>
      </xsl:for-each>
    </table>
    <br/>
    <h2>Сортировка заказов за 2020 год по цене:</h2>
    <table border="1">
      <tr>
        <th>Toodenimi</th>
        <th>Hind</th>
        <th>Tellija Perenimi</th>
        <th>Kuupäev</th>
      </tr>
      <xsl:for-each select="tellimused/arve">
        <xsl:sort select="hind"  order="descending"/>
         <xsl:if test="contains(kuupaev, '2020')">
          <tr>
            <td>
              <xsl:value-of select="toodenimi"/>
            </td>
            <td>
              <xsl:value-of select="hind"/>
            </td>
            <td>
              <xsl:value-of select="tellija/perenimi"/>
            </td>
            <td>
              <xsl:value-of select="kuupaev"/>
            </td>
          </tr>
        </xsl:if>
      </xsl:for-each>
    </table>
    <br/>
    <h2>Заказы стоящие более 700 долларов, заказанные на улицу Ringi и сделанные в 2020:</h2>
    <table border="1">
      <tr>
        <th>Toodenimi</th>
        <th>Kogus</th>
        <th>Hind</th>
        <th>Tellija Nimi</th>
        <th>Tellija Perenimi</th>
        <th>Tellija Isikukood</th>
        <th>Tellija Address</th>
        <th>Kuupäev</th>
      </tr>
      <xsl:for-each select="tellimused/arve">
        <xsl:if test="tellija[contains(address, 'Ringi')] and contains(kuupaev, '2020')">
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
        </xsl:if>
      </xsl:for-each>
    </table>
</xsl:template>
</xsl:stylesheet>