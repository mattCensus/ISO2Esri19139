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
    
    <xsl:template name="contacts">
        <xsl:for-each select="/gmi:MI_Metadata/gmd:contact">
            <xsl:element name="contact">
                <xsl:element name="CI_ResponsibleParty">
                    
                    <xsl:element name="organisationName">
                        <xsl:element name="gco:CharacterString"><xsl:value-of select="./gmd:CI_ResponsibleParty/gmd:organisationName/gco:CharacterString"/></xsl:element>
                    </xsl:element>
                    
                    <xsl:element name="contactInfo">
                        <xsl:element name="CI_Contact">
                            <xsl:element name="phone">
                                <xsl:element name="CI_Telephone">
                                    <xsl:element name="voice">
                                        <xsl:element name="gco:CharacterString"><xsl:value-of select="./gmd:CI_ResponsibleParty[1]/gmd:contactInfo[1]/gmd:CI_Contact[1]/gmd:phone[1]/gmd:CI_Telephone[1]/gmd:voice[1]/gco:CharacterString[1]"/></xsl:element>
                                    </xsl:element>
                                </xsl:element>
                            </xsl:element>
                            <xsl:element name="address">
                                <xsl:element name="CI_Address">
                                    <xsl:element name="deliveryPoint">
                                        <xsl:element name="gco:CharacterString"><xsl:value-of select="./gmd:CI_ResponsibleParty[1]/gmd:contactInfo[1]/gmd:CI_Contact[1]/gmd:address[1]/gmd:CI_Address[1]/gmd:deliveryPoint[1]/gco:CharacterString[1]"></xsl:value-of></xsl:element>
                                    </xsl:element>
                                    <xsl:element name="city">
                                        <xsl:element name="gco:CharacterString"><xsl:value-of select="./gmd:CI_ResponsibleParty[1]/gmd:contactInfo[1]/gmd:CI_Contact[1]/gmd:address[1]/gmd:CI_Address[1]/gmd:city[1]/gco:CharacterString[1]"></xsl:value-of></xsl:element>
                                    </xsl:element>
                                    <xsl:element name="administrativeArea">
                                        <xsl:element name="gco:CharacterString"><xsl:value-of select="./gmd:CI_ResponsibleParty[1]/gmd:contactInfo[1]/gmd:CI_Contact[1]/gmd:address[1]/gmd:CI_Address[1]/gmd:administrativeArea[1]/gco:CharacterString[1]"></xsl:value-of></xsl:element>
                                    </xsl:element>
                                    <xsl:element name="postalCode">
                                        <xsl:element name="gco:CharacterString"><xsl:value-of select="./gmd:CI_ResponsibleParty[1]/gmd:contactInfo[1]/gmd:CI_Contact[1]/gmd:address[1]/gmd:CI_Address[1]/gmd:postalCode[1]/gco:CharacterString[1]"/></xsl:element>
                                    </xsl:element>
                                    <xsl:element name="country">
                                        <xsl:element name="Country">
                                            <xsl:attribute name="codeList">http://www.iso.org/iso/country_codes/iso_3166_code_lists.htm</xsl:attribute>
                                            <xsl:attribute name="codeListValue"><xsl:value-of select="./gmd:CI_ResponsibleParty[1]/gmd:contactInfo[1]/gmd:CI_Contact[1]/gmd:address[1]/gmd:CI_Address[1]/gmd:country[1]/gco:CharacterString[1]"/></xsl:attribute>
                                            <xsl:attribute name="codeSpace">ISO3166-1</xsl:attribute><xsl:value-of select="./gmd:CI_ResponsibleParty[1]/gmd:contactInfo[1]/gmd:CI_Contact[1]/gmd:address[1]/gmd:CI_Address[1]/gmd:country[1]/gco:CharacterString[1]"/>
                                        </xsl:element>
                                    </xsl:element>
                                    <xsl:element name="electronicMailAddress">
                                        <xsl:element name="gco:CharacterString"><xsl:value-of select="./gmd:CI_ResponsibleParty[1]/gmd:contactInfo[1]/gmd:CI_Contact[1]/gmd:address[1]/gmd:CI_Address[1]/gmd:electronicMailAddress[1]/gco:CharacterString[1]"/></xsl:element>
                                    </xsl:element>
                                </xsl:element>
                            </xsl:element>
                        </xsl:element>
                    </xsl:element>
                    <xsl:element name="role">
                        <xsl:attribute name="codeList">http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#CI_RoleCode</xsl:attribute>
                        <xsl:attribute name="codeListValue"><xsl:value-of select="./gmd:CI_ResponsibleParty[1]/gmd:role[1]/gmd:CI_RoleCode[1]/@codeListValue"/></xsl:attribute>
                        <xsl:attribute name="codeSpace">ISOTC211/19115</xsl:attribute><xsl:value-of select="./gmd:CI_ResponsibleParty[1]/gmd:role[1]/gmd:CI_RoleCode[1]/@codeListValue"/>
                    </xsl:element>
                </xsl:element>
            </xsl:element>
            
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>