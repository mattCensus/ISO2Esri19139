<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:gco="http://www.isotc211.org/2005/gco" xmlns:gmd="http://www.isotc211.org/2005/gmd"
    xmlns:gmi="http://www.isotc211.org/2005/gmi" xmlns:gmx="http://www.isotc211.org/2005/gmx"
    xmlns:gsr="http://www.isotc211.org/2005/gsr" xmlns:gss="http://www.isotc211.org/2005/gss"
    xmlns:gts="http://www.isotc211.org/2005/gts" xmlns:gml="http://www.opengis.net/gml/3.2"
    xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:gfc="http://www.isotc211.org/2005/gfc" xmlns:vmf="http://www.altova.com/MapForce/UDF/vmf"
    xmlns:fn="http://www.w3.org/2005/xpath-functions"
    xmlns:grp="http://www.altova.com/Mapforce/grouping"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    exclude-result-prefixes="fn grp vmf xs xsi xsl xd" xmlns="http://www.isotc211.org/2005/gmi">
    
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p>gpm2iso/01_gmd_fileIdentifier.xsl</xd:p>
            <xd:p><xd:b>Created on:</xd:b> Jan 3, 2017</xd:p>
            <xd:p><xd:b>Author:</xd:b> mccre004</xd:p>
            <xd:p></xd:p>
        </xd:desc>
    </xd:doc>
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" omit-xml-declaration="no" />
    <xsl:strip-space elements="*"/>
    
    <xsl:template name="dataAndStandVer">
        <xsl:element name="dateStamp">
            <xsl:element name="gco:Date"><xsl:value-of select="/gmi:MI_Metadata/gmd:dateStamp[1]/gco:Date[1]"/></xsl:element>
        </xsl:element>
        
        <xsl:element name="metadataStandardName">
            <xsl:element name="gco:CharacterString"><xsl:value-of select="/gmi:MI_Metadata/gmd:metadataStandardName[1]/gco:CharacterString[1]"></xsl:value-of></xsl:element>
        </xsl:element>
        
        <xsl:element name="metadataStandardVersion">
            <xsl:element name="gco:CharacterString"><xsl:value-of select="/gmi:MI_Metadata/gmd:metadataStandardVersion[1]/gco:CharacterString[1]"></xsl:value-of></xsl:element>
        </xsl:element>
    </xsl:template>
    
</xsl:stylesheet>