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
     <xsl:template name="IdInfo">
         <xsl:element name="identificationInfo">
             <xsl:element name="MD_DataIdentification">
                 <xsl:element name="citation">
                     <xsl:element name="CI_Citation">
                         <xsl:element name="title">
                             <xsl:element name="gco:CharacterString"><xsl:value-of select="/gmi:MI_Metadata/gmd:identificationInfo[1]/gmd:MD_DataIdentification[1]/gmd:citation[1]/gmd:CI_Citation[1]/gmd:title[1]/gco:CharacterString[1]"></xsl:value-of></xsl:element>
                         </xsl:element>
                         
                         
                         <xsl:for-each select="/gmi:MI_Metadata/gmd:identificationInfo[1]/gmd:MD_DataIdentification[1]/gmd:citation[1]/gmd:CI_Citation[1]/gmd:date">
                             <xsl:element name="date">
                                 <xsl:element name="CI_Date">
                                     <xsl:element name="date">
                                         <xsl:element name="gco:Date"><xsl:value-of select="./gmd:CI_Date[1]/gmd:date[1]/gco:Date[1]"/></xsl:element>
                                     </xsl:element>
                                     <xsl:element name="dateType">
                                         <xsl:element name="CI_DateTypeCode">
                                             <xsl:attribute name="codeList">"http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#CI_DateTypeCode</xsl:attribute>
                                             <xsl:attribute name="codeListValue"><xsl:for-each select="./gmd:CI_Date[1]/gmd:dateType[1]/gmd:CI_DateTypeCode[1]/@codeListValue"/></xsl:attribute>
                                         </xsl:element>
                                     </xsl:element>
                                 </xsl:element>
                             </xsl:element>
                         </xsl:for-each>
                         
                         <xsl:element name="edition">
                             <xsl:element name="gco:CharacterString"><xsl:value-of select="/gmi:MI_Metadata/gmd:identificationInfo[1]/gmd:MD_DataIdentification[1]/gmd:citation[1]/gmd:CI_Citation[1]/gmd:edition[1]/gco:CharacterString[1]"></xsl:value-of></xsl:element>
                         </xsl:element>
                         
                         
                     </xsl:element>
                 </xsl:element>
                 <xsl:element name="abstract">
                     <xsl:element name="gco:CharacterString"><xsl:value-of select="/gmi:MI_Metadata/gmd:identificationInfo[1]/gmd:MD_DataIdentification[1]/gmd:abstract[1]/gco:CharacterString[1]"></xsl:value-of></xsl:element>
                 </xsl:element>
                 
                 <xsl:element name="purpose">
                     <xsl:element name="gco:CharacterString"><xsl:value-of select="/gmi:MI_Metadata/gmd:identificationInfo[1]/gmd:MD_DataIdentification[1]/gmd:abstract[1]/gco:CharacterString[1]"></xsl:value-of></xsl:element>
                 </xsl:element>
                 
                 <xsl:element name="status">
                     <xsl:element name="MD_ProgressCode">
                         <xsl:attribute name="codeList">http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#MD_ProgressCode</xsl:attribute>
                         <xsl:attribute name="codeListValue"><xsl:value-of select="/gmi:MI_Metadata/gmd:identificationInfo[1]/gmd:MD_DataIdentification[1]/gmd:status[1]/gmd:MD_ProgressCode[1]/@codeListValue"></xsl:value-of></xsl:attribute>
                         <xsl:attribute name="codeSpace">ISOTC211/19115</xsl:attribute>
                     </xsl:element>
                 </xsl:element>
                 
                 <xsl:for-each select="/gmi:MI_Metadata/gmd:identificationInfo[1]/gmd:MD_DataIdentification[1]/gmd:pointOfContact">
                     <xsl:element name="pointOfContact">
                         <xsl:element name="CI_ResponsibleParty">
                             <xsl:element name="organisationName">
                                 <xsl:element name="gco:CharacterString"><xsl:value-of select="./gmd:CI_ResponsibleParty[1]/gmd:organisationName[1]/gco:CharacterString[1]"></xsl:value-of></xsl:element>
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
                                                 <xsl:element name="gco:CharacterString"><xsl:value-of select="./gmd:CI_ResponsibleParty[1]/gmd:contactInfo[1]/gmd:CI_Contact[1]/gmd:address[1]/gmd:CI_Address[1]/gmd:deliveryPoint[1]/gco:CharacterString[1]"/></xsl:element>
                                             </xsl:element>
                                             <xsl:element name="city">
                                                 <xsl:element name="gco:CharacterString"><xsl:value-of select="./gmd:CI_ResponsibleParty[1]/gmd:contactInfo[1]/gmd:CI_Contact[1]/gmd:address[1]/gmd:CI_Address[1]/gmd:city[1]/gco:CharacterString[1]"></xsl:value-of></xsl:element>
                                             </xsl:element>
                                             <xsl:element name="administrativeArea">
                                                 <xsl:element name="gco:CharacterString"><xsl:value-of select="./gmd:CI_ResponsibleParty[1]/gmd:contactInfo[1]/gmd:CI_Contact[1]/gmd:address[1]/gmd:CI_Address[1]/gmd:administrativeArea[1]/gco:CharacterString[1]"/></xsl:element>
                                             </xsl:element>
                                             <xsl:element name="postalCode">
                                                 <xsl:element name="gco:CharacterString"><xsl:value-of select="./gmd:CI_ResponsibleParty[1]/gmd:contactInfo[1]/gmd:CI_Contact[1]/gmd:address[1]/gmd:CI_Address[1]/gmd:postalCode[1]/gco:CharacterString[1]"></xsl:value-of></xsl:element>
                                             </xsl:element>
                                             <xsl:element name="country">
                                                 <xsl:element name="Country">
                                                     <xsl:attribute name="codeList">http://www.iso.org/iso/country_codes/iso_3166_code_lists.htm</xsl:attribute>
                                                     <xsl:attribute name="codeListValue"><xsl:value-of select="./gmd:CI_ResponsibleParty[1]/gmd:contactInfo[1]/gmd:CI_Contact[1]/gmd:address[1]/gmd:CI_Address[1]/gmd:country[1]/gco:CharacterString[1]"></xsl:value-of></xsl:attribute>
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
                                 <xsl:element name="CI_RoleCode">
                                     <xsl:attribute name="codeList">http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#CI_RoleCode</xsl:attribute>
                                     <xsl:attribute name="codeListValue"><xsl:value-of select="./gmd:CI_ResponsibleParty[1]/gmd:role[1]/gmd:CI_RoleCode[1]/@codeListValue"/></xsl:attribute>
                                     <xsl:attribute name="codeSpace">ISOTC211/19115</xsl:attribute>
                                 </xsl:element>
                             </xsl:element>
                         </xsl:element>
                     </xsl:element>
                 </xsl:for-each>
                 
                 <xsl:element name="resourceMaintenance">
                     <xsl:element name="MD_MaintenanceInformation">
                         <xsl:element name="maintenanceAndUpdateFrequency">
                             <xsl:attribute name="codeList">http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#MD_MaintenanceFrequencyCode</xsl:attribute>
                             <xsl:attribute name="codeListValue"><xsl:value-of select="./gmi:MI_Metadata/gmd:identificationInfo[1]/gmd:MD_DataIdentification[1]/gmd:resourceConstraints[1]/gmd:MD_LegalConstraints[1]/gmd:accessConstraints[1]"/></xsl:attribute>
                             <xsl:attribute name="codeSpace">ISOTC211/19115</xsl:attribute>
                         </xsl:element>
                     </xsl:element>
                 </xsl:element>
                 
                 <xsl:for-each select="./gmi:MI_Metadata/gmd:identificationInfo/gmd:MD_DataIdentification/gmd:descriptiveKeywords">
                     <xsl:element name="descriptiveKeywords">
                         <xsl:element name="MD_Keywords">
                             <xsl:for-each select="./gmd:MD_Keywords/gmd:keyword/gco:CharacterString">
                                 <xsl:element name="keyword">
                                     <xsl:element name="gco:CharacterString"><xsl:value-of select="."/></xsl:element>
                                 </xsl:element>
                             </xsl:for-each>
                             
                             <xsl:element name="type">
                                 <xsl:element name="MD_KeywordTypeCode">
                                     <xsl:attribute name="codeList">http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#MD_KeywordTypeCode</xsl:attribute>
                                     <xsl:attribute name="codeListValue"><xsl:value-of select="./gmd:MD_Keywords[1]/gmd:type[1]/gmd:MD_KeywordTypeCode[1]/@codeListValue"/></xsl:attribute>
                                 </xsl:element>
                             </xsl:element>
                             
                             <xsl:element name="thesaurusName">
                                 <xsl:element name="CI_Citation">
                                     <xsl:element name="title">
                                         <xsl:element name="gco:CharacterString"><xsl:value-of select="./gmd:MD_Keywords/gmd:thesaurusName/gmd:CI_Citation/gmd:title/gco:CharacterString"/></xsl:element>
                                     </xsl:element>
                                 </xsl:element>
                             </xsl:element>
                             
                         </xsl:element>
                     </xsl:element>
                 </xsl:for-each>
                 
                 <xsl:element name="resourceConstraints">
                     <xsl:element name="MD_LegalConstraints">
                         
                         <xsl:element name="useConstraints">
                             <xsl:element name="MD_RestrictionCode">
                                 <xsl:attribute name="codeList">http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#MD_RestrictionCode</xsl:attribute>
                                 <xsl:attribute name="codeListValue"><xsl:value-of select="/gmi:MI_Metadata/gmd:identificationInfo[1]/gmd:MD_DataIdentification[1]/gmd:resourceConstraints[1]/gmd:MD_LegalConstraints[1]/gmd:useConstraints[1]/gmd:MD_RestrictionCode[1]/@codeListValue"/></xsl:attribute>
                             </xsl:element>
                         </xsl:element>
                         
                         <xsl:element name="otherConstraints">
                             <xsl:element name="gco:CharacterString"><xsl:value-of select="/gmi:MI_Metadata/gmd:identificationInfo[1]/gmd:MD_DataIdentification[1]/gmd:resourceConstraints[1]/gmd:MD_LegalConstraints[1]/gmd:otherConstraints[1]/gco:CharacterString[1]"/></xsl:element>
                         </xsl:element>
                     </xsl:element>
                 </xsl:element>
                 
                 <xsl:element name="spatialRepresentationType">
                     <xsl:element name="MD_SpatialRepresentationTypeCode">
                         <xsl:attribute name="codeList">http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#MD_SpatialRepresentationTypeCode</xsl:attribute>
                         <xsl:attribute name="codeListValue"><xsl:value-of select=""></xsl:value-of></xsl:attribute>
                     </xsl:element>
                 </xsl:element>
                 
                 
             </xsl:element>
         </xsl:element>
                 
                 
             
        
     </xsl:template>
    
</xsl:stylesheet>