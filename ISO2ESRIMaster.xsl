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
    <xsl:import href="../ISO2ESRI19139/BeginningElements.xsl"/>
    <xsl:import href="../ISO2ESRI19139/contacts.xsl"/>
    <xsl:import href="../ISO2ESRI19139/dataAndStandVer.xsl"/>
    <xsl:import href="../ISO2ESRI19139/IdentificationInfo.xsl"/>
    <xsl:template match="/">
       
        
        <xsl:text>&#10;</xsl:text>
        <xsl:element name="MD_Metadata">
            
            <!-- inserts the xlinx namspace -->
            <xsl:copy-of select="document('')/*/namespace::*[name()='xlink']"/>
            <!-- inserts the gmd namespace -->
            <xsl:copy-of select="document('')/*/namespace::*[name()='gmd']"/>
            <!-- inserts the gco namespace -->
            <xsl:copy-of select="document('')/*/namespace::*[name()='gco']"/>
            <!-- inserts the gml namespace -->
            <xsl:copy-of select="document('')/*/namespace::*[name()='gml']"/>
            <!-- inserts the xsi namespace -->
            <xsl:copy-of select="document('')/*/namespace::*[name()='xsi']"/>
            <!-- inserts the xmlns="http://www.isotc211.org/2005/gmi namespace -->
            <xsl:copy-of select="document('')/*/namespace::*[name()='gmi']"/>
            <!-- inserts the srv namespace -->
            <xsl:copy-of select="document('')/*/namespace::*[name()='srv']"/>
            
            <xsl:attribute name="xsi:schemaLocation">http://www.isotc211.org/2005/gmi http://www.ngdc.noaa.gov/metadata/published/xsd/schema.xsd</xsl:attribute>
           <xsl:call-template name="begElements"/>
            <xsl:call-template name="contacts"/>
           <xsl:call-template name="dataAndStandVer"/>
            <xsl:call-template name="IdInfo"/>
        </xsl:element>
    </xsl:template>
    
</xsl:stylesheet>