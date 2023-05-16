<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:tei="http://www.tei-c.org/ns/1.0"
  xmlns:local="http://mpilhlt.github.io/ns"
  version="3.0">

  <xsl:output method="text" indent="no"/>

  <xsl:function name="local:tag">
    <xsl:param name="node" as="node()"/>
    <xsl:param name="label" as="xs:string"/>
    <xsl:text>(</xsl:text><xsl:value-of select="string-length(string-join($node/preceding::text() intersect $node/ancestor-or-self::tei:text[1]//node()))"/>
    <xsl:text>, </xsl:text><xsl:value-of select="string-length(string-join($node/preceding::text() intersect $node/ancestor-or-self::tei:text[1]//node())) + string-length(string-join($node//text()))"/>
    <xsl:text>, "</xsl:text><xsl:value-of select="upper-case($label)"/><xsl:text>")</xsl:text>
  </xsl:function>

  <xsl:template match="tei:TEI">
    <xsl:choose>
        <xsl:when test="tei:text/tei:group">
          <xsl:for-each select="tei:text/tei:group/tei:text">
            <xsl:variable name="body">
              <xsl:apply-templates select="."/>
            </xsl:variable>
            <xsl:variable name="tags">
              <xsl:apply-templates select="." mode="tags"/>
              </xsl:variable>{ "text": "<xsl:value-of select="translate($body, '&#xA;', ' ')"/>", "tags": <xsl:value-of select="concat('[', replace($tags, '\)\(', '), ('), ']')"/> }
</xsl:for-each>
        </xsl:when>
        <xsl:otherwise>
            <xsl:variable name="body">
              <xsl:apply-templates select="tei:text"/>
            </xsl:variable>
            <xsl:variable name="tags">
              <xsl:apply-templates select="tei:text" mode="tags"/>
            </xsl:variable>{ "text": "<xsl:value-of select="translate($body, '&#xA;', ' ')"/>",
  "tags": <xsl:value-of select="concat('[', replace($tags, '\)\(', '), ('), ']')"/> }
        </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="tei:bibl" mode="tags">
    <xsl:value-of select="local:tag(., 'REF')"/>
    <xsl:apply-templates mode="tags"/>
  </xsl:template>

  <xsl:template match="tei:author[ancestor::tei:bibl]" mode="tags">
    <xsl:value-of select="local:tag(., 'AUT')"/>
    <xsl:apply-templates mode="tags"/>
  </xsl:template>

  <xsl:template match="tei:title[ancestor::tei:bibl]" mode="tags">
    <xsl:value-of select="local:tag(., 'TIT')"/>
    <xsl:apply-templates mode="tags"/>
  </xsl:template>

  <xsl:template match="tei:biblScope[ancestor::tei:bibl]" mode="tags">
    <xsl:value-of select="local:tag(., 'LOC')"/>
    <xsl:apply-templates mode="tags"/>
  </xsl:template>

  <xsl:template match="text()" mode="tags"/>
  <xsl:template match="tei:teiHeader"/>
  <xsl:template match="tei:teiHeader" mode="tags"/>
</xsl:stylesheet>