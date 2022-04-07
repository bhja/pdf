<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
	<xsl:template match="DocumentElement">
		<fo:root>
			<fo:layout-master-set>
				<!-- <fo:simple-page-master master-name="first"   
                                       page-width="8.27in"
									   page-height="11.69in"
                                       margin-top="0.5in"
                                       margin-bottom="0.005in"
                                       margin-left="1in"
                                       margin-right="1in">
					<fo:region-body  margin-top="1.2cm" margin-bottom="2cm" font-family="sans-serif" font-weight="bold"/>
					    <fo:region-before extent="1.2cm"/>
                    <fo:region-after extent="1cm"/>
				</fo:simple-page-master> -->
				<fo:simple-page-master master-name="main"  
                                       page-width="8.3in"
									   page-height="11.7in"
									   margin-bottom="1in"
									   margin-left="0.0in"
									   margin-right="0.5in"
                                      >
					<fo:region-body  font-family="sans-serif" font-weight="bold"/>
					    <fo:region-before region-name="xsl-region-before"  extent="2in"/>
				</fo:simple-page-master>
				<fo:simple-page-master master-name="mainPage2"  
                                       page-width="8.3in"
									   page-height="11.7in"
                                       margin-left="0.5in"
									  
                                       
                                      >
					<fo:region-body  font-family="sans-serif" margin-bottom="2cm"  font-weight="bold"/>
					    <fo:region-before region-name="xsl-region-before"  extent="2in"/>
						  <fo:region-after extent="0.4in"/>
				</fo:simple-page-master>
				<fo:simple-page-master master-name="first"  
                                       page-width="8.3in"
									   page-height="11.69in"
                                       margin-left="0.5in"
									   margin-right="0.5in"
									  
                                      >
					<fo:region-body  font-family="sans-serif"  margin-bottom="1in" font-weight="bold"/>
					    <fo:region-before region-name="xsl-region-before"  extent="2in"/>
						  <fo:region-after extent="1cm"/>
				</fo:simple-page-master>
				<fo:simple-page-master master-name="mainReportPage"  
                                       page-width="8.27in"
									   page-height="11.69in"
                                       margin-left="0.4in"
									   margin-right="0.3in"
									   
									  
                                      >
					<fo:region-body  font-family="Lucida Sans Unicode"  font-weight="bold" />
					    <fo:region-before region-name="xsl-region-before"  extent="1in" />
						  <fo:region-after extent="1cm"/>
				</fo:simple-page-master>
				<fo:simple-page-master master-name="limitationsPage"  
                                       page-width="8.27in"
									   page-height="11.69in"
									   background-color=""
                                      >
					<fo:region-body  font-family="sans-serif" font-weight="bold"   background-color=""/>
					    <fo:region-before region-name="xsl-region-before" extent="2in"  background-color=""/>
						  <fo:region-after extent="1cm" background-color=""/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			
			
			
		
			<fo:page-sequence master-reference="main">
			
			
					
                <fo:flow flow-name="xsl-region-body">
                    <xsl:apply-templates select=".//DocumentElement"/>
					<fo:block id="TheVeryLastPage"> </fo:block>
			
					
					
					<fo:table   width="8.27in" height="11.69in" >
						<fo:table-column column-width="8.27in" />
						<fo:table-body background-image="D:/AnimalReport/MainPage8.jpg"   background-repeat="no-repeat" background-position="center"  padding-left="0.0mm" >
							
							<fo:table-row>
							<fo:table-cell padding-right="0.5in" padding-left="4.5in" padding-top="1.1in">
							<fo:block  font-size="10px" color="red">
							
							</fo:block>
							
							 </fo:table-cell>
							 
							  </fo:table-row>
							
							<fo:table-row>
							<fo:table-cell padding-left="5.0in" padding-top="4.5in" padding-bottom="9in">
							<fo:block  >
							<fo:table border="0.001px solid" padding-top="0.05in" border-color="black">
							 <fo:table-column column-width="2.5in" />
							 <!-- <fo:table-column column-width="1.3in" />
							 <fo:table-column column-width="1.1in" />
							 <fo:table-column column-width="0.8in" /> -->
							 <fo:table-body >
							   <fo:table-row height="15px" padding-bottom="0.5in" >
							    <fo:table-cell font-size="12px" border-color="black"  text-align="justify" padding-left="0.25in">
							  <fo:block padding-bottom="0.02in" > REPORT FOR  <fo:inline color="red" padding-left="2px"> <xsl:value-of select="CoverPage/AnimalName"/> </fo:inline> </fo:block>
							  </fo:table-cell>
							   <!--<fo:table-cell  font-size="7px"  border-color="#e34627" text-align="justify"  >
							  <fo:block padding-bottom="0.02in"  > <xsl:value-of select="ReportFooter/Name"/> </fo:block>
							  </fo:table-cell>
							  <fo:table-cell  font-size="7px" border-color="#e34627"  text-align="justify">
							  <fo:block padding-bottom="0.02in"   color="#e34627"  >Age / Sex:</fo:block>
							  </fo:table-cell>
							   <fo:table-cell  font-size="7px" border-color="#e34627"  text-align="justify" >
							  <fo:block padding-bottom="0.02in" > <xsl:value-of select="BasicDetails/Age"/>&#xA0;/&#xA0;<xsl:value-of select="BasicDetails/Sex"/>  </fo:block>
							  </fo:table-cell>
							 </fo:table-row>
							  <fo:table-row height="15px" padding-bottom="0.5in">
							   <fo:table-cell  font-size="7px" border-color="#e34627"  text-align="justify" padding-left="0.1in">
							  <fo:block padding-bottom="0.02in" color="#e34627" > Sample Type</fo:block>
							  </fo:table-cell>
							   <fo:table-cell  font-size="7px" border-color="#e34627" text-align="justify" >
							  <fo:block padding-bottom="0.02in" > <xsl:value-of select="CustomerTestDetails/SampleType"/> </fo:block>
							  </fo:table-cell>
							  <fo:table-cell  font-size="7px" border-color="#e34627"  text-align="justify">
							  <fo:block padding-bottom="0.02in" color="#e34627" > Sample ID:</fo:block>
							  </fo:table-cell>
							   <fo:table-cell  font-size="7px" border-color="#e34627"  text-align="justify" >
							  <fo:block padding-bottom="0.02in" > <xsl:value-of select="CustomerTestDetails/SampleID"/> </fo:block>
							  </fo:table-cell>
							 </fo:table-row>
							  <fo:table-row height="15px">
							   <fo:table-cell font-size="7px" border-color="#e34627"  text-align="justify" padding-left="0.1in">
							  <fo:block padding-bottom="0.02in" color="#e34627" > Collected Date: </fo:block>
							  </fo:table-cell>
							   <fo:table-cell  font-size="7px" border-color="#e34627"  text-align="justify">
							  <fo:block padding-bottom="0.02in" > <xsl:value-of select="CustomerTestDetails/SampleCollectionDate"/></fo:block>
							  </fo:table-cell>
							  <fo:table-cell font-size="7px" border-color="#e34627"  text-align="justify">
							  <fo:block padding-bottom="0.02in" color="#e34627">Received Date:  </fo:block>
							  </fo:table-cell>
							   <fo:table-cell  font-size="7px" border-color="#e34627"  text-align="justify">
							  <fo:block padding-bottom="0.02in" > <xsl:value-of select="CustomerTestDetails/SampleReceivedDate"/></fo:block>
							  </fo:table-cell>
							 </fo:table-row>
							  <fo:table-row height="15px">
							   <fo:table-cell  font-size="7px" border-color="#e34627"  text-align="justify" padding-left="0.1in">
							  <fo:block padding-bottom="0.01in" color="#e34627" > Report Date: </fo:block>
							  </fo:table-cell>
							   <fo:table-cell  font-size="7px" border-color="#e34627"   text-align="justify">
							  <fo:block padding-bottom="0.01in" > <xsl:value-of select="CustomerTestDetails/ReportDate"/> </fo:block>
							  </fo:table-cell>
							  <fo:table-cell  font-size="7px" border-color="#e34627"   text-align="justify" >
							  <fo:block padding-bottom="0.01in" color="#e34627" > Sample&#xA0;Barcode&#xA0;: </fo:block>
							  </fo:table-cell>
							   <fo:table-cell  font-size="7px" border-color="#e34627"  text-align="justify">
							  <fo:block padding-bottom="0.01in" > <xsl:value-of select="CustomerTestDetails/SampleBarcodeNumber"/> </fo:block>
							  < /fo:table-cell>-->
							 </fo:table-row>
							 </fo:table-body>
							</fo:table>
							</fo:block>
							</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					</fo:flow>
	
	</fo:page-sequence>
					
					<fo:page-sequence master-reference="mainPage2">
					<fo:static-content flow-name="xsl-region-after">
					 <fo:table text-align="left" padding-bottom="0in">
					  <fo:table-column column-width="5.8in"/>
					 <fo:table-column column-width="1.2in"/>
					    <fo:table-body>
					<fo:table-row height="2px" >
						<fo:table-cell >
						 <fo:block font-size="8px"  >
					    <fo:inline  color="#C00000"> Name:</fo:inline> <fo:inline color="#080808">&#xA0;<xsl:value-of select="ReportFooter/Name"/></fo:inline> &#xA0;<fo:inline color="#C00000" >&#xA0;Age/Sex:</fo:inline><fo:inline color="#080808"><xsl:value-of select="BasicDetails/Age"/>/<xsl:value-of select="BasicDetails/Sex"/>&#xA0;</fo:inline> 
						  <fo:inline  color="#C00000" >Sample ID:&#xA0;</fo:inline><fo:inline color="#080808"><xsl:value-of select="ReportFooter/SampleID"/> </fo:inline>&#xA0;
						   <fo:inline  color="#C00000" > Report Date:&#xA0;</fo:inline><fo:inline color="#080808" ><xsl:value-of select="ReportFooter/ReportDate"/> </fo:inline>
						</fo:block>
					</fo:table-cell>
						<fo:table-cell padding-left="0.1in" >
					<fo:block font-family="Helvetica" font-size="6px" text-align="right">
						Page &#xA0;| &#xA0;<fo:page-number />
					</fo:block>
					</fo:table-cell>
					</fo:table-row>
					 </fo:table-body>
					</fo:table>
					</fo:static-content>
					
					 <fo:flow flow-name="xsl-region-body">
                    <xsl:apply-templates select=".//DocumentElement"/>
					<fo:block id="TheSecondPage"> </fo:block>
			       <fo:table text-align="right"  width="7.6in"  >
					<fo:table-column column-width="3in" />
					<fo:table-column column-width="4in" />
						<fo:table-body>
							<fo:table-row>
							   <fo:table-cell text-align="left" font-family="Lucida Sans Unicode,Lucida Grande,sans-serif" padding-top="0.5in">
							   
							   
							   
							    <fo:table text-align="right"  width="7.6in"  >
					<fo:table-column column-width="1.2in" />
					<fo:table-column column-width="1.8in" />
						<fo:table-body>
							<fo:table-row>
							    <fo:table-cell text-align="left" font-family="Lucida Sans Unicode,Lucida Grande,sans-serif" padding-top="0.1in">
							   <fo:external-graphic  src="D:/AnimalReport/urbanlogosmall4.jpg" width="1in" height="1in" ></fo:external-graphic>
								</fo:table-cell>
								
								<fo:table-cell  align="left" text-align="left" font-family="Lucida Sans Unicode,Lucida Grande,sans-serif" padding-top="0.1in">
							   
								
								</fo:table-cell>
								</fo:table-row>
								
								<fo:table-row>
							   
								
								<fo:table-cell text-align="left" number-columns-spanned="2" font-family="Lucida Sans Unicode,Lucida Grande,sans-serif" padding-top="0.01in">
							   
								<fo:block padding-top="0.1in" font-weight="bold" font-size="14px" ><xsl:value-of select="CoverPage/TestName"/></fo:block>
								</fo:table-cell>
								</fo:table-row>
								
								
								<fo:table-row>
							   
								
								<fo:table-cell text-align="left" number-columns-spanned="2" font-family="Lucida Sans Unicode,Lucida Grande,sans-serif" padding-top="0.1in">
							   
								 <fo:block font-size="8px"  >Report for</fo:block>
							   <fo:block font-size="18px" font-weight="bold" color="#E86034" ><xsl:value-of select="ReportFooter/Name"/></fo:block>
								</fo:table-cell>
								</fo:table-row>
								
								
					 </fo:table-body>
					</fo:table>
								
								
								</fo:table-cell>
								<fo:table-cell  text-align="right" >
									<fo:block><fo:external-graphic  src="D:/AnimalReport/dogwithchildren.jpg" ></fo:external-graphic></fo:block>
								</fo:table-cell>
							</fo:table-row>
							
							
							</fo:table-body>
					</fo:table>
					<fo:table  padding-top="0.05in" border-color="">
							 <fo:table-column column-width="7.6in" />
							 
							 <fo:table-body >
							   <fo:table-row height="15px" padding-bottom="0.5in" >
							   <fo:table-cell  font-size="12px" border-color=""  text-align="justify">
							  <fo:block padding-bottom="0.01in" color="#E86034"> Basic Details </fo:block>
							  </fo:table-cell>
							 </fo:table-row>
							 </fo:table-body>
							</fo:table>
					<fo:table border="0.5px solid"  border-color="#959296" padding-top="0.02in" padding-bottom="0.02in" padding-left="0.02in" padding-right="0.02in" >
							 <fo:table-column column-width="1in" />
							 <fo:table-column column-width="1.6in" />
							 <fo:table-column column-width="0.8in" />
							 <fo:table-column column-width="1.6in" />
							 <fo:table-column column-width="1.0in" />
							 <fo:table-column column-width="1.0in" />
							 <fo:table-body >
							   <fo:table-row height="15px" padding-bottom="0.0in" >
							    <fo:table-cell background-color="#E7E7E7" font-size="10px" border-color="#959296"  text-align="justify" padding-left="0.1in">
							  <fo:block  padding-bottom="0.00in" > Breed: </fo:block>
							  </fo:table-cell>
							   <fo:table-cell  font-size="10px" background-color="#E7E7E7" border-color="#959296" text-align="justify"  >
							  <fo:block padding-bottom="0.02in" font-weight="bold" >  <xsl:value-of select="ReportFooter/Name"/> </fo:block>
							  </fo:table-cell>
							  <fo:table-cell  font-size="10px" background-color="#E7E7E7" border-color="#959296"  text-align="justify">
							  <fo:block padding-bottom="0.02in"    >Sex :</fo:block>
							  </fo:table-cell>
							   <fo:table-cell  font-size="10px" background-color="#E7E7E7" border-color="#959296"  text-align="justify" >
							  <fo:block padding-bottom="0.02in" font-weight="bold">  <xsl:value-of select="BasicDetails/Sex"/> </fo:block>
							  </fo:table-cell>
							  <fo:table-cell  font-size="10px" background-color="#E7E7E7" border-color="#959296"  text-align="justify">
							  <fo:block padding-bottom="0.02in"     >Age :</fo:block>
							  </fo:table-cell>
							   <fo:table-cell background-color="#E7E7E7" font-size="10px" border-color="#959296"  text-align="justify" >
							  <fo:block padding-bottom="0.02in"  font-weight="bold">  <xsl:value-of select="BasicDetails/Age"/> </fo:block>
							  </fo:table-cell>
							 </fo:table-row>
							   <fo:table-row height="15px" padding-bottom="0.5in">
							   <fo:table-cell padding-top="0.02in" border-top="0.5px solid" border-color="#959296" font-size="10px"   text-align="justify" padding-left="0.1in">
							  <fo:block padding-bottom="0.02in"  > Parents:</fo:block>
							  </fo:table-cell>
							   <fo:table-cell padding-top="0.02in" border-top="0.5px solid" font-size="10px" text-align="justify" border-color="#959296" >
							  <fo:block padding-bottom="0.02in"  font-weight="bold" >  <xsl:value-of select="BasicDetails/ParentBreedMother"/>  </fo:block>
							  <fo:block padding-bottom="0.02in"  font-weight="bold" >   <xsl:value-of select="BasicDetails/ParentBreedFather"/> </fo:block>
							  </fo:table-cell>
							  <fo:table-cell padding-top="0.02in" border-top="0.5px solid" font-size="10px"  border-color="#959296" text-align="justify">
							  <fo:block padding-bottom="0.02in"  > Weight:</fo:block>
							  </fo:table-cell>
							   <fo:table-cell padding-top="0.02in" border-top="0.5px solid" font-size="10px" border-color="#959296"  text-align="justify" >
							  <fo:block padding-bottom="0.02in"  font-weight="bold" ><xsl:value-of select="BasicDetails/Weight"/> </fo:block>
							  </fo:table-cell>
							  <fo:table-cell padding-top="0.02in" border-top="0.5px solid" font-size="10px" border-color="#959296"  text-align="justify">
							  <fo:block padding-bottom="0.02in"     >Height:</fo:block>
							  </fo:table-cell>
							   <fo:table-cell padding-top="0.02in" border-top="0.5px solid" font-size="10px"  text-align="justify" border-color="#959296" >
							  <fo:block padding-bottom="0.02in"  font-weight="bold"> <xsl:value-of select="BasicDetails/Height"/> </fo:block>
							  </fo:table-cell>
							 </fo:table-row>
							 <fo:table-row height="15px" padding-top="0.02in" >
							    <fo:table-cell background-color="#E7E7E7" font-size="10px" padding-top="0.02in" border-top="0.5px solid" border-color="#959296" text-align="justify" padding-left="0.1in">
							  <fo:block  padding-bottom="0.00in" > Known health</fo:block>
							  
							  </fo:table-cell>
							   
							    <fo:table-cell background-color="#E7E7E7" font-size="10px" padding-top="0.02in" border-top="0.5px solid" border-color="#959296" text-align="justify" padding-left="0.1in">
							  <fo:block  padding-bottom="0.00in" > Conditions :</fo:block>
							  
							  </fo:table-cell>
							   <fo:table-cell  font-size="10px" background-color="#E7E7E7" border-color="#959296" text-align="justify" padding-top="0.02in" border-top="0.5px solid" number-columns-spanned="4" >
							  <fo:block padding-bottom="0.02in" font-weight="bold" > <xsl:value-of select="BasicDetails/KnownHealthConditions"/> </fo:block>
							  </fo:table-cell>
							 
							 </fo:table-row>
							
							 </fo:table-body>
							</fo:table>
							<fo:table  padding-top="0.1in" border-color="">
							 <fo:table-column column-width="7.6in" />
							 
							 <fo:table-body >
							   <fo:table-row height="15px" padding-bottom="0.5in" >
							   <fo:table-cell  font-size="12px" border-color=""  text-align="justify">
							  <fo:block padding-bottom="0.01in" color="#E86034"> Sample  Details </fo:block>
							  </fo:table-cell>
							 </fo:table-row>
							 </fo:table-body>
							</fo:table>
					<fo:table border="0.5px solid"  border-color="#959296" padding-top="0.02in" padding-bottom="0.02in" padding-left="0.02in" padding-right="0.02in" >
							 <fo:table-column column-width="1in" />
							 <fo:table-column column-width="1.3in" />
							 <fo:table-column column-width="1.1in" />
							 <fo:table-column column-width="1.6in" />
							 <fo:table-column column-width="1.0in" />
							 <fo:table-column column-width="1.0in" />
							 <fo:table-body >
							   <fo:table-row height="15px" padding-bottom="0.0in" >
							    <fo:table-cell background-color="#E7E7E7" font-size="10px" border-color="#959296"  text-align="justify" padding-left="0.1in">
							  <fo:block  padding-bottom="0.00in" >Reference Id: </fo:block>
							  </fo:table-cell>
							   <fo:table-cell  font-size="10px" background-color="#E7E7E7" border-color="#959296" text-align="justify"  >
							  <fo:block padding-bottom="0.02in" font-weight="bold" > <xsl:value-of select="SampleDetails/ReferenceID"/> </fo:block>
							  </fo:table-cell>
							  <fo:table-cell  font-size="10px" background-color="#E7E7E7" border-color="#959296"  text-align="justify">
							  <fo:block padding-bottom="0.02in"    >Collected:</fo:block>
							  </fo:table-cell>
							   <fo:table-cell  font-size="10px" background-color="#E7E7E7" border-color="#959296"  text-align="justify" >
							  <fo:block padding-bottom="0.02in" font-weight="bold"><xsl:value-of select="SampleDetails/CollectedDate"/> </fo:block>
							  </fo:table-cell>
							  <fo:table-cell  font-size="10px" background-color="#E7E7E7" border-color="#959296"  text-align="justify">
							  <fo:block padding-bottom="0.02in"     >Sample Type:</fo:block>
							  </fo:table-cell>
							   <fo:table-cell background-color="#E7E7E7" font-size="10px" border-color="#959296"  text-align="justify" >
							  <fo:block padding-bottom="0.02in"  font-weight="bold">  <xsl:value-of select="SampleDetails/SampleType"/>  </fo:block>
							  </fo:table-cell>
							 </fo:table-row>
							   <fo:table-row height="15px" padding-bottom="0.5in">
							   <fo:table-cell padding-top="0.02in" border-top="0.5px solid" border-color="#959296" font-size="10px"   text-align="justify" padding-left="0.1in">
							  <fo:block padding-bottom="0.02in"  > Lab Ref Id:</fo:block>
							  </fo:table-cell>
							   <fo:table-cell padding-top="0.02in" border-top="0.5px solid" font-size="10px" text-align="justify" border-color="#959296" >
							  <fo:block padding-bottom="0.02in"  font-weight="bold" > <xsl:value-of select="SampleDetails/LabReferenceID"/>  </fo:block>
							  </fo:table-cell>
							  <fo:table-cell padding-top="0.02in" border-top="0.5px solid" font-size="10px"  border-color="#959296" text-align="justify">
							  <fo:block padding-bottom="0.02in"  >Received:</fo:block>
							  </fo:table-cell>
							   <fo:table-cell padding-top="0.02in" border-top="0.5px solid" font-size="10px" border-color="#959296"  text-align="justify" >
							  <fo:block padding-bottom="0.02in"  font-weight="bold" >  <xsl:value-of select="SampleDetails/ReceivedDate"/>  </fo:block>
							  </fo:table-cell>
							  <fo:table-cell padding-top="0.02in" border-top="0.5px solid" font-size="10px" border-color="#959296"  text-align="justify">
							  <fo:block padding-bottom="0.02in"     >Reported:</fo:block>
							  </fo:table-cell>
							   <fo:table-cell padding-top="0.02in" border-top="0.5px solid" font-size="10px"  text-align="justify" border-color="#959296" >
							  <fo:block padding-bottom="0.02in"  font-weight="bold"> <xsl:value-of select="SampleDetails/ReportedDate"/></fo:block>
							  </fo:table-cell>
							 </fo:table-row>
							 </fo:table-body>
							</fo:table>
							<fo:table  padding-top="0.1in" border-color="">
							 <fo:table-column column-width="7.6in" />
							 
							 <fo:table-body >
							   <fo:table-row height="15px" padding-bottom="0.5in" >
							   <fo:table-cell  font-size="12px" border-color=""  text-align="justify">
							  <fo:block padding-bottom="0.01in" color="#E86034"> Reference Details   </fo:block>
							  </fo:table-cell>
							 </fo:table-row>
							 </fo:table-body>
							</fo:table>
					<fo:table border="0.5px solid"  border-color="#959296" padding-top="0.02in" padding-bottom="0.02in" padding-left="0.02in" padding-right="0.02in" >
							 <fo:table-column column-width="1.3in" />
							 <fo:table-column column-width="2.2in" />
							 <fo:table-column column-width="1.3in" />
							 <fo:table-column column-width="2.2in" />
							 <!-- <fo:table-column column-width="1.0in" />
							 <fo:table-column column-width="1.0in" /> -->
							 <fo:table-body >
							   <fo:table-row height="15px" padding-bottom="0.0in" >
							    <fo:table-cell background-color="#E7E7E7" font-size="10px" border-color="#959296"  text-align="justify" padding-left="0.1in">
							  <fo:block  padding-bottom="0.00in" >Referring Vet: </fo:block>
							  </fo:table-cell>
							   <fo:table-cell  font-size="10px" background-color="#E7E7E7" border-color="#959296" text-align="justify"  >
							  <fo:block padding-bottom="0.02in" font-weight="bold" > <xsl:value-of select="ReferenceDetails/ReferringVet"/> </fo:block>
							  </fo:table-cell>
							  <fo:table-cell  font-size="10px" background-color="#E7E7E7" border-color="#959296"  text-align="justify">
							  <fo:block padding-bottom="0.02in"    >Clinic’s Name:</fo:block>
							  </fo:table-cell>
							   <fo:table-cell  font-size="10px" background-color="#E7E7E7" border-color="#959296"  text-align="justify" >
							  <fo:block padding-bottom="0.02in" font-weight="bold"><xsl:value-of select="ReferenceDetails/ClinicName"/> </fo:block>
							  </fo:table-cell>
							 </fo:table-row>
							   <fo:table-row height="15px" padding-bottom="0.5in">
							   <fo:table-cell padding-top="0.02in" border-top="0.5px solid" border-color="#959296" font-size="10px"   text-align="justify" padding-left="0.1in">
							  <fo:block padding-bottom="0.02in"  > Clinic Address:</fo:block>
							  </fo:table-cell>
							   <fo:table-cell padding-top="0.02in" border-top="0.5px solid" font-size="10px" text-align="justify" border-color="#959296" number-columns-spanned="2">
							  <fo:block padding-bottom="0.02in"  >  <xsl:value-of select="ReferenceDetails/ClinicAddress"/></fo:block>
							  </fo:table-cell>
							 
							   <fo:table-cell padding-top="0.02in" border-top="0.5px solid" font-size="10px" border-color="#959296"  text-align="justify" >
							  <fo:block padding-bottom="0.02in"  > <!-- <xsl:value-of select="ReferenceDetails/OwnerName"/> --> </fo:block>
							  </fo:table-cell>
							 </fo:table-row>
							 <fo:table-row height="15px" padding-bottom="0.0in" >
							    <fo:table-cell background-color="#E7E7E7" font-size="10px" border-color="#959296"  text-align="justify" padding-left="0.1in">
							  <fo:block  padding-bottom="0.00in" >Owner name: </fo:block>
							  </fo:table-cell>
							   <fo:table-cell  font-size="10px" background-color="#E7E7E7" border-color="#959296" text-align="justify"  >
							  <fo:block padding-bottom="0.02in" font-weight="bold" > <xsl:value-of select="ReportFooter/OwnerName"/>  </fo:block>
							  </fo:table-cell>
							  <fo:table-cell  font-size="10px" background-color="#E7E7E7" border-color="#959296"  text-align="justify">
							  <fo:block padding-bottom="0.02in"    >Email Address:</fo:block>
							  </fo:table-cell>
							   <fo:table-cell  font-size="10px" background-color="#E7E7E7" border-color="#959296"  text-align="justify" >
							  <fo:block padding-bottom="0.02in" font-weight="bold"> <xsl:value-of select="ReferenceDetails/EmailAddress"/> </fo:block>
							  </fo:table-cell>
							 </fo:table-row>
							   <fo:table-row height="15px" padding-bottom="0.5in">
							   <fo:table-cell padding-top="0.02in" border-top="0.5px solid" border-color="#959296" font-size="10px"   text-align="justify" padding-left="0.1in" >
							  <fo:block padding-bottom="0.02in"  > Owner Address:</fo:block>
							  </fo:table-cell>
							   <fo:table-cell padding-top="0.02in" border-top="0.5px solid" font-size="10px" text-align="justify" border-color="#959296" number-columns-spanned="5">
							  <fo:block padding-bottom="0.02in"  >  <xsl:value-of select="ReferenceDetails/OwnerAddress"/> </fo:block>
							  </fo:table-cell>
							 
							   <fo:table-cell number-columns-spanned="4" padding-top="0.02in" border-top="0.5px solid" font-size="10px" border-color="#959296"  text-align="justify" >
							  <fo:block padding-bottom="0.02in"  >  </fo:block>
							  </fo:table-cell>
							 </fo:table-row>
							 </fo:table-body>
							</fo:table>
							<fo:table  padding-top="0.1in" border-color="">
							 <fo:table-column column-width="7.6in" />
							 
							 <fo:table-body >
							   <fo:table-row height="15px" padding-bottom="0.5in" >
							   <fo:table-cell  font-size="12px" border-color=""  text-align="justify">
							  <fo:block padding-bottom="0.01in" color="#E86034"> Genomics Test Details   </fo:block>
							  </fo:table-cell>
							 </fo:table-row>
							 </fo:table-body>
							</fo:table>
					<fo:table border="0.5px solid"  border-color="#959296" padding-top="0.02in" padding-bottom="0.02in" padding-left="0.02in" padding-right="0.02in" >
							 <fo:table-column column-width="1.3in" />
							 <fo:table-column column-width="2.2in" />
							 <fo:table-column column-width="1.3in" />
							 <fo:table-column column-width="2.2in" />
							 <!-- <fo:table-column column-width="1.0in" />
							 <fo:table-column column-width="1.0in" /> -->
							 <fo:table-body >
							   <fo:table-row height="15px" padding-bottom="0.0in" >
							    <fo:table-cell background-color="#E7E7E7" font-size="10px" border-color="#959296"  text-align="justify" padding-left="0.1in">
							  <fo:block  padding-bottom="0.00in" >Panel: </fo:block>
							  </fo:table-cell>
							   <fo:table-cell number-columns-spanned="3" font-size="10px" background-color="#E7E7E7" border-color="#959296" text-align="justify"  >
							  <fo:block padding-bottom="0.02in" font-weight="bold" >  <xsl:value-of select="GenomicTestDetails/Panel"/> </fo:block>
							  </fo:table-cell>
							  
							 </fo:table-row>
							   <fo:table-row height="15px" padding-bottom="0.5in">
							   <fo:table-cell padding-top="0.02in" border-top="0.5px solid" border-color="#959296" font-size="10px"   text-align="justify" padding-left="0.1in">
							  <fo:block padding-bottom="0.02in"  > Laboratory:</fo:block>
							  </fo:table-cell>
							   <fo:table-cell padding-top="0.02in" border-top="0.5px solid" font-size="10px" text-align="justify" border-color="#959296" number-columns-spanned="">
							  <fo:block padding-bottom="0.02in" font-weight="bold" ><xsl:value-of select="GenomicTestDetails/Laboratory"/></fo:block>
							  </fo:table-cell>
							  <fo:table-cell padding-top="0.02in" border-top="0.5px solid" font-size="10px"  border-color="#959296" text-align="justify" >
							  <fo:block padding-bottom="0.02in"  >Technology:</fo:block>
							  </fo:table-cell>
							   <fo:table-cell padding-top="0.02in" border-top="0.5px solid" font-size="10px" border-color="#959296"  text-align="justify" >
							  <fo:block padding-bottom="0.02in" font-weight="bold" ><xsl:value-of select="GenomicTestDetails/Technology"/>  </fo:block>
							  </fo:table-cell>
							 </fo:table-row>
							 <fo:table-row height="15px" padding-bottom="0.0in" >
							    <fo:table-cell background-color="#E7E7E7" font-size="10px" border-color="#959296"  text-align="justify" padding-left="0.1in">
							  <fo:block  padding-bottom="0.00in" >Machine: </fo:block>
							  </fo:table-cell>
							   <fo:table-cell  font-size="10px" background-color="#E7E7E7" border-color="#959296" text-align="justify"  >
							  <fo:block padding-bottom="0.02in" font-weight="bold" >  <xsl:value-of select="GenomicTestDetails/Machine"/>  </fo:block>
							  </fo:table-cell>
							  <fo:table-cell  font-size="10px" background-color="#E7E7E7" border-color="#959296"  text-align="justify">
							  <fo:block padding-bottom="0.02in"    >LibPrep Solution:</fo:block>
							  </fo:table-cell>
							   <fo:table-cell  font-size="10px" background-color="#E7E7E7" border-color="#959296"  text-align="justify" >
							  <fo:block padding-bottom="0.02in" font-weight="bold"> <xsl:value-of select="GenomicTestDetails/LibPrepSolution"/>  </fo:block>
							  </fo:table-cell>
							 </fo:table-row>
							   <fo:table-row height="15px" padding-bottom="0.5in">
							   <fo:table-cell padding-top="0.02in" border-top="0.5px solid" border-color="#959296" font-size="10px"   text-align="justify" padding-left="0.1in" >
							  <fo:block padding-bottom="0.02in"  > Panel size:</fo:block>
							  </fo:table-cell>
							   <fo:table-cell padding-top="0.02in" border-top="0.5px solid" font-size="10px" text-align="justify" border-color="#959296" number-columns-spanned="">
							  <fo:block padding-bottom="0.02in" font-weight="bold" >  <xsl:value-of select="GenomicTestDetails/PanelSize"/> </fo:block>
							  </fo:table-cell>
							  <fo:table-cell  padding-top="0.02in" border-top="0.5px solid" font-size="10px"  border-color="#959296" text-align="justify">
							  <fo:block padding-bottom="0.02in"  >Marker Coverage: </fo:block>
							  </fo:table-cell>
							   <fo:table-cell padding-top="0.02in" border-top="0.5px solid" font-size="10px" border-color="#959296"  text-align="justify" >
							  <fo:block padding-bottom="0.02in" font-weight="bold" ><xsl:value-of select="GenomicTestDetails/MarkerCoverage"/> </fo:block> 
							  </fo:table-cell>
							 </fo:table-row>
							 </fo:table-body>
							</fo:table>
							<fo:table  padding-top="0.2in"  border-color="">
							 <fo:table-column column-width="7.6in" />
							 <fo:table-body >
							   <fo:table-row height="15px" padding-bottom="0.2in" >
							   <fo:table-cell  font-size="12px" border-color=""  text-align="justify">
							  <fo:block padding-bottom="0.1in" color="rgb(33,73,156)" font-weight="bold"> SUMMARY OF RESULTS   </fo:block>
							  </fo:table-cell>
							 </fo:table-row>
							 </fo:table-body>
							</fo:table>
							<fo:table  padding-top="0.01in" >
							<fo:table-column column-width="1.2in"/>
					        <fo:table-column column-width="0.5in"/>
							<fo:table-column column-width="0.3in"/>
					        <fo:table-column column-width="5.0in"/>
							 <fo:table-body >
					 <fo:table-row >
					<fo:table-cell background-color="#E7E7E7" border-color="#959296" border-top="0.01px solid" border-left="0.01px solid"  >
					 <fo:block>  </fo:block>
					</fo:table-cell>
					<fo:table-cell background-color="#E7E7E7" border-color="#959296" border-top="0.01px solid"  border-right="0.01px solid">
					 <fo:block>  </fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="#959296" border-bottom="none" border-top="none" border-right="none" border-left="none">
					 <fo:block>  </fo:block>
					</fo:table-cell>
					<fo:table-cell  border-color="#959296" padding-bottom="0.02in" padding-left="0.08in" padding-top="0.02in" background-color="#E7E7E7" border="0.01px solid">
					 <fo:block font-size="10px"> DISORDERS IDENTIFIED </fo:block>
					</fo:table-cell>
					</fo:table-row>
					<fo:table-row >
					<fo:table-cell background-color="#E7E7E7" border-top="none" border-right="none" border="0.01px solid" border-color="#959296" >
					 <fo:block   font-size="12px" color="#E86034" text-align="center" padding-top="0.02in" > Disorders </fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="#959296" border-bottom="0.01px solid" border-right="0.01px solid" background-color="#E7E7E7" >
					 <fo:block font-size="18px" font-weight="bold" color="#E86034">  <xsl:value-of select="ResultSummaryPage/Disorders/DisorderCount"/> </fo:block>
					</fo:table-cell>
					<fo:table-cell  border-color="#959296" border-bottom="none" border-top="none" border-right="none" border-left="none">
					 <fo:block>  </fo:block>
					</fo:table-cell>
					<fo:table-cell   padding-left="0.08in" padding-top="0.02in" border="0.01px solid">
					
					
					<fo:table  padding-top="0.05in" >
							<fo:table-column/>
							 <fo:table-body >

<xsl:for-each select="ResultSummaryPage/Disorders">
				<xsl:for-each select="DisorderList">
				<xsl:for-each select="DisorderListItem" >
							 
					 <fo:table-row >
					<fo:table-cell   >
					  <fo:block color="#f59607" font-size="11px" > <xsl:value-of select=".//DisorderName"/>  </fo:block>
					</fo:table-cell>
						 </fo:table-row >	
						 
						 
						 </xsl:for-each>
						 </xsl:for-each>
						 </xsl:for-each>
						 
					 </fo:table-body >
					 </fo:table>
					 
					</fo:table-cell>
					</fo:table-row>
							 </fo:table-body>
							</fo:table>
							<fo:table  padding-top="0.07in" >
							<fo:table-column column-width="1.2in"/>
					        <fo:table-column column-width="0.5in"/>
							<fo:table-column column-width="0.3in"/>
					        <fo:table-column column-width="5.0in"/>
							 <fo:table-body >
					 <fo:table-row >
					<fo:table-cell background-color="#E7E7E7" border-color="#959296" border-top="0.01px solid" border-left="0.01px solid"  >
					 <fo:block>  </fo:block>
					</fo:table-cell>
					<fo:table-cell background-color="#E7E7E7" border-color="#959296" border-top="0.01px solid"  border-right="0.01px solid">
					 <fo:block>  </fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="#959296" border-bottom="none" border-top="none" border-right="none" border-left="none">
					 <fo:block>  </fo:block>
					</fo:table-cell>
					<fo:table-cell  border-color="#959296" padding-bottom="0.02in" padding-left="0.08in" padding-top="0.02in" background-color="#E7E7E7" border="0.01px solid">
					 <fo:block font-size="10px"> CARRIER STATUS IDENTIFIED </fo:block>
					</fo:table-cell>
					</fo:table-row>
					<fo:table-row >
					<fo:table-cell background-color="#E7E7E7" border-top="none" border-right="none" border="0.01px solid" border-color="#959296" >
					 <fo:block  font-size="12px" color="#070257" text-align="center" padding-top="0.02in" padding-bottom="0.02in"> Carrier </fo:block>
					</fo:table-cell>
					<fo:table-cell background-color="#E7E7E7" border-color="#959296" border-bottom="0.01px solid" border-right="0.01px solid"  >
					 <fo:block  font-size="18px" font-weight="bold" color="#070257"><xsl:value-of select="ResultSummaryPage/Carriers/CarrierCount"/></fo:block>
					</fo:table-cell>
					<fo:table-cell  border-color="#959296" border-bottom="none" border-top="none" border-right="none" border-left="none">
					 <fo:block>  </fo:block>
					</fo:table-cell>
					<fo:table-cell    border-right="0.01px solid" border-top="0.01px solid" border-bottom="0.01px solid">
					 
					 
					 
					 <fo:table   >
							<fo:table-column/>
							 <fo:table-body >

<xsl:for-each select="ResultSummaryPage/Carriers">
				<xsl:for-each select="CarrierList">
				<xsl:for-each select="CarrierListItem" >
							 
					 <fo:table-row >
					<fo:table-cell  border-color="#959296" padding-bottom="0.02in" padding-left="0.08in" padding-top="0.02in"  border="0.01px solid">
					  <fo:block color="#070257" font-size="11px" > <xsl:value-of select=".//CarrierName"/>  </fo:block>
					</fo:table-cell>
						 </fo:table-row >	
						 
						 
						 </xsl:for-each>
						 </xsl:for-each>
						 </xsl:for-each>
						 
					 </fo:table-body >
					 </fo:table>
					 
					 
					 
					</fo:table-cell>
					</fo:table-row>
					
							 </fo:table-body>
							</fo:table>
							<fo:table  padding-top="0.07in" >
							<fo:table-column column-width="1.2in"/>
					        <fo:table-column column-width="0.5in"/>
							<fo:table-column column-width="0.3in"/>
					        <fo:table-column column-width="5.0in"/>
							 <fo:table-body >
					 <fo:table-row >
					<fo:table-cell background-color="#E7E7E7" border-color="#959296" border-top="0.01px solid" border-left="0.01px solid"  >
					 <fo:block>  </fo:block>
					</fo:table-cell>
					<fo:table-cell background-color="#E7E7E7" border-color="#959296" border-top="0.01px solid"  border-right="0.01px solid">
					 <fo:block>  </fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="#959296" border-bottom="none" border-top="none" border-right="none" border-left="none">
					 <fo:block>  </fo:block>
					</fo:table-cell>
					<fo:table-cell  border-color="#959296" padding-bottom="0.02in" padding-left="0.08in" padding-top="0.02in02in" background-color="#E7E7E7" border="0.01px solid">
					 <fo:block font-size="10px"> TRAITS IDENTIFIED </fo:block>
					</fo:table-cell>
					</fo:table-row>
					<fo:table-row >
					<fo:table-cell background-color="#E7E7E7" border-top="none" border-right="none" border="0.01px solid" border-color="#959296" >
					 <fo:block  font-size="12px" color="#070257" text-align="center" padding-top="0.02in" padding-bottom="0.02in"> Traits </fo:block>
					</fo:table-cell>
					<fo:table-cell border-color="#959296" border-bottom="0.01px solid" border-right="0.01px solid" background-color="#E7E7E7" >
					 <fo:block font-size="18px" color="#070257"> <xsl:value-of select=".//TraitCount"/>  </fo:block>
					</fo:table-cell>
					<fo:table-cell  border-color="#959296" border-bottom="none" border-top="none" border-right="none" border-left="none">
					 <fo:block>  </fo:block>
					</fo:table-cell>
					<fo:table-cell  border-color="#959296" padding-bottom="0.02in"   border="0.01px solid" padding-top="0.02in" >
					 
					 
					  <fo:table    >
							<fo:table-column/>
							 <fo:table-body >

<xsl:for-each select="ResultSummaryPage/Traits">
				<xsl:for-each select="TraitList">
				<xsl:for-each select="TraitListItem" >
							 
					 <fo:table-row >
					<fo:table-cell  border-color="#959296"  padding-left="0.08in" padding-top="0.02in"  >
					  <fo:block color="#070257" font-size="10px" > <xsl:value-of select=".//TraitName"/>  </fo:block>
					</fo:table-cell>
						 </fo:table-row >	
						 
						 
						 </xsl:for-each>
						 </xsl:for-each>
						 </xsl:for-each>
						 
					 </fo:table-body >
					 </fo:table>
					 
					
					</fo:table-cell>
					</fo:table-row>
					
					
					
					
							 </fo:table-body>
							</fo:table>
					</fo:flow>
					</fo:page-sequence>
					<fo:page-sequence master-reference="mainPage2">
					<fo:static-content flow-name="xsl-region-after">
					 <fo:table text-align="left" padding-bottom="0.8in">
					 <fo:table-column column-width="5.8in"/>
					 <fo:table-column column-width="1.2in"/>
					    <fo:table-body>
					<fo:table-row height="2px" >
					<fo:table-cell >
						 <fo:block font-size="8px"  >
					    <fo:inline  color="#C00000"> Name:</fo:inline> <fo:inline color="#080808">&#xA0;<xsl:value-of select="ReportFooter/Name"/></fo:inline> &#xA0;<fo:inline color="#C00000" >&#xA0;Age/Sex:</fo:inline><fo:inline color="#080808"><xsl:value-of select="BasicDetails/Age"/>/<xsl:value-of select="BasicDetails/Sex"/>&#xA0;</fo:inline> 
						  <fo:inline  color="#C00000" >Sample ID:&#xA0;</fo:inline><fo:inline color="#080808"><xsl:value-of select="ReportFooter/SampleID"/> </fo:inline>&#xA0;
						   <fo:inline  color="#C00000" > Report Date:&#xA0;</fo:inline><fo:inline color="#080808" ><xsl:value-of select="ReportFooter/ReportDate"/> </fo:inline>
						</fo:block>
					</fo:table-cell>
						<fo:table-cell padding-left="0.1in" >
					<fo:block font-family="Helvetica" font-size="6px" text-align="right">
						Page &#xA0;| &#xA0;<fo:page-number />
					</fo:block>
					</fo:table-cell>
					</fo:table-row>
					 </fo:table-body>
					</fo:table>
					</fo:static-content>
					
					
					 <fo:flow flow-name="xsl-region-body">
                    <xsl:apply-templates select=".//DocumentElement"/>
			
			
			<fo:table  padding-top="0.2in" padding-bottom="0.2in">
					<fo:table-column column-width="0.4in" />
					<fo:table-column column-width="6.2in" />
					<fo:table-column column-width="0.4in" />
					<fo:table-body>
					<fo:table-row >
					<fo:table-cell align="bottom" 	 number-columns-spanned="3"  padding-left="0.1in" padding-bottom="0.001in" font-family="Arial, Helvetica, sans-serif" >
					
					
					
					<fo:table  padding-top="0.2in" padding-bottom="0.2in">
					<fo:table-column column-width="0.7in" />
					<fo:table-column column-width="2.0in" />
					<fo:table-column column-width="3.8in" />
					
					<fo:table-body>
					<fo:table-row >
					
					<fo:table-cell align="bottom">
					<fo:block  color="#0070C0"  font-weight="bold"><fo:external-graphic  src="D:/AnimalReport/doghexagonreddish3.jpg" width="0.62in" height="0.7in"  ></fo:external-graphic>						
					 </fo:block>     
					</fo:table-cell>
					
					<fo:table-cell align="left">
					<fo:block  color="#0070C0" padding-top="0.3in" font-weight="bold">
					TABLE OF CONTENTS    </fo:block>     
					</fo:table-cell>
					
					<fo:table-cell>					
					<fo:block  color="#0070C0"   margin-left="2.5in" font-weight="bold"><fo:external-graphic  src="D:/AnimalReport/dogkid3.jpg"   ></fo:external-graphic>						
					</fo:block>
					
					</fo:table-cell>
					
					<!-- <fo:table-cell align="right" number-columns-spanned="2" padding-left="0.3in" padding-bottom="0.001in" font-family="Arial, Helvetica, sans-serif" >
					
					<fo:external-graphic  src="D:/AnimalReport/dogkid.jpg" ></fo:external-graphic>	
					</fo:table-cell> -->
					</fo:table-row>
					
			</fo:table-body>
					
			</fo:table>
			</fo:table-cell>
					</fo:table-row>	
					
					<xsl:for-each select="TableOfContents">
				<xsl:for-each select="TableOfContentsList">
				<xsl:for-each select="TableOfContentsListItem" >
					<fo:table-row >
					<fo:table-cell   padding-top="0.2in" font-family="Arial, Helvetica, sans-serif" ><fo:block font-size="12px"></fo:block></fo:table-cell>
					
					<fo:table-cell  border-bottom="0.1px solid"     padding-top="0.05in" font-family="Arial, Helvetica, sans-serif" text-align="justify" line-height="0.2in">
					<fo:block font-size="10px" color="#E86034" font-weight="bold"><xsl:value-of select=".//HeadingName"/> </fo:block>
					
					</fo:table-cell>
					<fo:table-cell align="right" border-bottom="0.1px solid"   padding-top="0.05in" font-family="Arial, Helvetica, sans-serif" text-align="justify" line-height="0.2in">
					<fo:block font-size="10px" ><xsl:value-of select=".//PageNumber"/> </fo:block>
					</fo:table-cell>
					</fo:table-row>
					
					
					
					<xsl:for-each select="SubHeadingList" >
					<xsl:for-each select="SubHeadingListItem" >
					
					<fo:table-row >
					<fo:table-cell padding-top="0.2in" font-family="Arial, Helvetica, sans-serif" padding-left="0.1in"><fo:block font-size="12px"></fo:block></fo:table-cell>
					<fo:table-cell  border-bottom="0.1px solid"  border-top="0.1px solid"  padding-top="0.05in" font-family="Arial, Helvetica, sans-serif" text-align="justify" line-height="0.2in">
					<fo:block font-size="10px" ><xsl:value-of select=".//SubHeadingName"/>  </fo:block>
					
					</fo:table-cell>
					<fo:table-cell align="right" border-bottom="0.1px solid"  border-top="0.1px solid" padding-top="0.05in" font-family="Arial, Helvetica, sans-serif" text-align="justify" line-height="0.2in">
					<fo:block font-size="10px" ><xsl:value-of select=".//PageNumber"/> </fo:block></fo:table-cell>

					</fo:table-row>
					
					</xsl:for-each>
					</xsl:for-each>
					
					
					</xsl:for-each>
					</xsl:for-each>
					</xsl:for-each>
					
					
					
					
					
						</fo:table-body>
					</fo:table>
			
			
					
					</fo:flow>
					</fo:page-sequence>
					
					
					
					
					<fo:page-sequence master-reference="mainPage2">
					<fo:static-content flow-name="xsl-region-after">
					 <fo:table text-align="left" padding-bottom="0.2in">
					 <fo:table-column column-width="5.8in"/>
					 <fo:table-column column-width="1.2in"/>
					    <fo:table-body>
					<fo:table-row  >
						<fo:table-cell >
						 <fo:block font-size="8px"  >
					    <fo:inline  color="#C00000"> Name:</fo:inline> <fo:inline color="#080808">&#xA0;<xsl:value-of select="ReportFooter/Name"/></fo:inline> &#xA0;<fo:inline color="#C00000" >&#xA0;Age/Sex:</fo:inline><fo:inline color="#080808"><xsl:value-of select="BasicDetails/Age"/>/<xsl:value-of select="BasicDetails/Sex"/>&#xA0;</fo:inline> 
						  <fo:inline  color="#C00000" >Sample ID:&#xA0;</fo:inline><fo:inline color="#080808"><xsl:value-of select="ReportFooter/SampleID"/> </fo:inline>&#xA0;
						   <fo:inline  color="#C00000" > Report Date:&#xA0;</fo:inline><fo:inline color="#080808" ><xsl:value-of select="ReportFooter/ReportDate"/> </fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="0.8in" >
					<fo:block font-family="Helvetica" font-size="6px" text-align="right">
						Page &#xA0;| &#xA0;<fo:page-number />
					</fo:block>
					</fo:table-cell>
					</fo:table-row>
					 </fo:table-body>
					</fo:table>
					</fo:static-content>
					
					 <fo:flow flow-name="xsl-region-body">
                    <xsl:apply-templates select=".//DocumentElement"/>
					<fo:block id="TheSecondPage2"> </fo:block>
			       <fo:table text-align="right"  width="7.5in"  padding-top="0.25in" >
					<fo:table-column column-width="0.6in" />
					<fo:table-column column-width="3in" />
					<fo:table-column column-width="3.3in" />
						<fo:table-body >
							<fo:table-row  >
							   <fo:table-cell text-align="left" font-family="Arial, Helvetica, sans-serif" padding-top="0.5in">
								<fo:external-graphic  src="D:/AnimalReport/doghexagonreddish3.jpg" width="0.62in" height="0.7in"></fo:external-graphic>
								
								</fo:table-cell>
								<fo:table-cell text-align="left" font-family="Arial, Helvetica, sans-serif" padding-top="0.75in"  padding-left="0.05in">
								
								<fo:block font-size="18px" font-weight="bold"  font-family="Helvetica" color="rgb(0, 125, 191)" >Introduction</fo:block>
								</fo:table-cell>
								<fo:table-cell  text-align="right" >
									<fo:block><fo:external-graphic  src="D:/AnimalReport/urbanlogosmall4.jpg" width="1in" height="1in" ></fo:external-graphic></fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					
						
					<fo:table>
					<fo:table-column column-width="1.625in"/>
					<fo:table-column column-width="1.625in"/>
					<fo:table-column column-width="1.625in"/>
					<fo:table-column column-width="2in"/>
					<fo:table-body>
					<fo:table-row>
					<fo:table-cell padding-left="0.3in"  number-columns-spanned="4" font-family="Arial, Helvetica, sans-serif"  text-align="justify" line-height="0.225in" padding-top="0.2in">
					 
					 <fo:block font-size="10px">Dogs are true companions of humans. There are many health issues that can affect dogs starting from
common infections and allergies to complex genetic conditions which may set in early or could be late
onset. It is vital to be aware of the health risks to the dog and provide care necessary for its healthier life and
overall well-being.</fo:block>
					</fo:table-cell>
					</fo:table-row>
					
					</fo:table-body>
					</fo:table>
					 <fo:table>
					 <fo:table-column column-width="0.5in"/>
					 <fo:table-column column-width="6.5in"/>
					  <fo:table-body>
					   <fo:table-row>
					    <fo:table-cell number-columns-spanned="2" padding-top="0.2in" padding-left="0.3in">
						 <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px" color="rgb(33,73,156)" font-weight="bold">About Canine DNA Screen</fo:block>
						</fo:table-cell>
					   </fo:table-row>
					    <fo:table-row line-height="0.2in">
						<fo:table-cell number-columns-spanned="2" padding-top="0.2in" text-align="justify" padding-left="0.3in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px"><fo:inline>Canine DNA screen is a genomics test for dogs offered to pet owners and veterinarians. It allows
identification of multiple diseases in a single test and makes it possible to profile the pets in advance, and
provide better management and care for the pet. GeneTech’s Canine DNA Screen genetic panel is based
on Thermofisher’s Canine Disorders and Traits Panel which was developed based on extensive research in
Canine Genomics and Veterinary Science.</fo:inline> </fo:block> 
					   </fo:table-cell>
					   </fo:table-row>
					   
					   <fo:table-row line-height="0.2in">
						<fo:table-cell number-columns-spanned="2" padding-top="0.2in" text-align="justify" padding-left="0.3in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">
						
						The genomics panel offers screening for diseases recommended by ISAG (International Society for Animal
Genetics) and more. The panel identifies selected 134 gene variants that are associated with common
inherited conditions in different dog breeds along with 20 different variants associated with breed traits
related to coat, hair and tail. Next generation sequencing (NGS) is used by the laboratory to identify gene
variations or mutations.
						</fo:block>
					   </fo:table-cell>
					   </fo:table-row>
					    <fo:table-row line-height="0.2in">
						<fo:table-cell number-columns-spanned="2" padding-top="0.2in" text-align="justify" padding-left="0.3in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">						
						Canine DNA Screen is a screening test and further confirmatory tests may be required based on clinical
correlation and veterinarian’s recommendations.
						</fo:block>
					   </fo:table-cell>
					   </fo:table-row>
					  </fo:table-body>
					 </fo:table>
					 
					 
					  <fo:table>
					 <fo:table-column column-width="0.5in"/>
					 <fo:table-column column-width="6.5in"/>
					  <fo:table-body>
					   <fo:table-row>
					    <fo:table-cell number-columns-spanned="2" padding-top="0.2in" padding-left="0.3in">
						 <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px" color="rgb(33,73,156)" font-weight="bold">What is a Genetic Disorder?</fo:block>
						</fo:table-cell>
					   </fo:table-row>
					    <fo:table-row line-height="0.2in">
						<fo:table-cell number-columns-spanned="2" padding-top="0.2in" text-align="justify" padding-left="0.3in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px"><fo:inline>A genetic disorder is a health condition caused by an abnormal genetic change usually called as mutation.
Although some of these mutations occur spontaneously, a majority of them are inherited and are
hereditary. Around 400 hereditary diseases known in canines are caused by mutations in 19,000 genes
spread across 78 chromosomes. Genetic disorders either result in multi organ defects and metabolic
dysfunction or may alter only one functional system of dog’s health such a vision, skin, immune system,
nerve and muscular function etc.</fo:inline> </fo:block> 
					   </fo:table-cell>
					   </fo:table-row>
					   
					   <fo:table-row line-height="0.2in">
						<fo:table-cell number-columns-spanned="2" padding-top="0.2in" text-align="justify" padding-left="0.3in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">
						
						These genetic disorders are not uncommon and are not exclusive to pure breeds although they might be
extensively reported in few selected breeds.
						</fo:block>
					   </fo:table-cell>
					   </fo:table-row>
					    
					  </fo:table-body>
					 </fo:table>
					 
					 
					   <fo:table>
					 <fo:table-column column-width="0.5in"/>
					 <fo:table-column column-width="6.5in"/>
					  <fo:table-body>
					   <fo:table-row>
					    <fo:table-cell number-columns-spanned="2" padding-top="0.2in" padding-left="0.3in">
						 <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px" color="rgb(33,73,156)" font-weight="bold">How is a genetic disorder inherited from a parent to the pup?</fo:block>
						</fo:table-cell>
					   </fo:table-row>
					    <fo:table-row line-height="0.2in">
						<fo:table-cell number-columns-spanned="2" padding-top="0.2in" text-align="justify" padding-left="0.3in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px"><fo:inline>Inheritance is the process by which genetic information is passed on from parent to offspring. Nature
provides two copies of gene for all bodily functions of which one copy comes from father and other from
mother. Every genetic disorder inherits in a specific manner as given below:</fo:inline> </fo:block> 
					   </fo:table-cell>
					   </fo:table-row>
					   
					  
					    
					  </fo:table-body>
					 </fo:table>
					 
					 
					 
					 
					  <fo:table>
					 <fo:table-column column-width="0.5in"/>
					 <fo:table-column column-width="6.5in"/>
					  <fo:table-body>
					 
					   <fo:table-row line-height="0.19in" >
					   <fo:table-cell padding-top="0.2in" padding-left="0.3in">
					    <fo:block  fontsize="11"  type="fragment" font="symbol" color="rgb(33,73,156)">&#8226;</fo:block>
					   </fo:table-cell>
						<fo:table-cell padding-top="0.1in" line-height="0.225in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px"><fo:inline color="rgb(33,73,156)" font-weight="bold">Autosomal Dominant:</fo:inline> 
						If a disease is expressed in a dog with one copy of abnormal gene and one copy of normal gene. The risk on passing on such a disease to offspring is 50%.</fo:block>
					   </fo:table-cell>
					   </fo:table-row>
					    <fo:table-row line-height="0.2in">
					   <fo:table-cell padding-left="0.3in">
					    <fo:block  fontsize="11" color="#006FC0" >&#8226;</fo:block>
					   </fo:table-cell>
						<fo:table-cell line-height="0.225in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px"> <fo:inline color="rgb(33,73,156)" font-weight="bold">Autosomal Recessive: </fo:inline>If a disease is expressed in a dog only if both copies of the gene are abnormal.
							Such a pattern is common with 25% risk to offspring if both parents are unaffected carriers with one
							abnormal gene copy each.</fo:block>
					   </fo:table-cell>
					   </fo:table-row>
					    <fo:table-row line-height="0.225in" >
					   <fo:table-cell padding-left="0.3in">
					    <fo:block  fontsize="11" color="#006FC0">&#8226;</fo:block>
					   </fo:table-cell>
						<fo:table-cell line-height="0.225in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px"><fo:inline color="rgb(33,73,156)" font-weight="bold">X-linked: </fo:inline> The disease is expressed only in male dogs and female dogs are unaffected carriers.</fo:block>
					   </fo:table-cell>
					   </fo:table-row>
					    <fo:table-row line-height="0.19in">
					   <fo:table-cell padding-left="0.3in" >
					    <fo:block  fontsize="11" color="#006FC0" >&#8226;</fo:block>
					   </fo:table-cell>
						<fo:table-cell>
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px"><fo:inline color="rgb(33,73,156)" font-weight="bold">Complex:</fo:inline> The inheritance of disease is called complex when it results due to multiple genes and their
						interaction with environmental factors.</fo:block>
					   </fo:table-cell>
					   </fo:table-row>
					   <fo:table-row line-height="0.2in">
						<fo:table-cell number-columns-spanned="2" padding-top="0.2in" text-align="justify" padding-left="0.3in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">There are some disorders for which the inheritance pattern is unknown and a few with more than one
						inheritance pattern associated.</fo:block>
					   </fo:table-cell>
					   </fo:table-row>
					  </fo:table-body>
					 </fo:table>
					 
					 
					  <fo:table>
					 <fo:table-column column-width="0.5in"/>
					 <fo:table-column column-width="6.5in"/>
					  <fo:table-body>
					  
					  
					   <fo:table-row line-height="0.19in" >
					   
						<fo:table-cell padding-top="0.2in" number-columns-spanned="2"  line-height="0.225in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px"><fo:inline color="rgb(33,73,156)" font-weight="bold">How does Canine DNA Screen help?</fo:inline> 
						</fo:block>
					   </fo:table-cell>
					   </fo:table-row>
					   
					   
					 
					   <fo:table-row line-height="0.19in" >
					   <fo:table-cell padding-top="0.2in" padding-left="0.3in">
					    <fo:block  fontsize="11"  type="fragment" font="symbol" color="rgb(33,73,156)">&#8226;</fo:block>
					   </fo:table-cell>
						<fo:table-cell padding-top="0.2in" line-height="0.225in">
					     <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px"> 
						Early diagnosis and preventive care are possible before the symptoms set inEarly diagnosis and preventive care are possible before the symptoms set in</fo:block>
					   </fo:table-cell>
					   </fo:table-row>
					    <fo:table-row line-height="0.2in">
					   <fo:table-cell padding-left="0.3in">
					    <fo:block  fontsize="11" color="#006FC0" >&#8226;</fo:block>
					   </fo:table-cell>
						<fo:table-cell line-height="0.225in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px"> Potential dog owners may choose to adopt a dog based on test result
						
						</fo:block>
					   </fo:table-cell>
					   </fo:table-row>
					    <fo:table-row line-height="0.225in" >
					   <fo:table-cell padding-left="0.3in">
					    <fo:block  fontsize="11" color="#006FC0">&#8226;</fo:block>
					   </fo:table-cell>
						<fo:table-cell line-height="0.225in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">
						Carrier status for diseases can be identified, which allows choice of right parents in breeding
programs to reduce disease risk in pups
						</fo:block>
					   </fo:table-cell>
					   </fo:table-row>
					    <fo:table-row line-height="0.19in">
					   <fo:table-cell padding-left="0.3in" >
					    <fo:block  fontsize="11" color="#006FC0" >&#8226;</fo:block>
					   </fo:table-cell>
						<fo:table-cell>
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">Veterinarians can offer evidence based, effective management and treatment to the dog</fo:block>
					   </fo:table-cell>
					   </fo:table-row>
					   
					   
					    <fo:table-row line-height="0.19in">
					   <fo:table-cell padding-left="0.3in" >
					    <fo:block  fontsize="11" color="#006FC0" ></fo:block>
					   </fo:table-cell>
						<fo:table-cell padding-top="2in" padding-left="3in">
					    <fo:block><fo:external-graphic  src="D:/AnimalReport/dogkidnew.jpg"  width="4in" height="4in" ></fo:external-graphic></fo:block>
					   </fo:table-cell>
					   </fo:table-row>
					   
					  </fo:table-body>
					 </fo:table> 
					
					
					
					</fo:flow>
					</fo:page-sequence>
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
						<fo:page-sequence master-reference="mainPage2">
					<fo:static-content flow-name="xsl-region-after">
					 <fo:table text-align="left" padding-bottom="0.2in">
					 <fo:table-column column-width="5.8in"/>
					 <fo:table-column column-width="1.2in"/>
					    <fo:table-body>
					<fo:table-row  >
							<fo:table-cell >
						 <fo:block font-size="8px"  >
					    <fo:inline  color="#C00000"> Name:</fo:inline> <fo:inline color="#080808">&#xA0;<xsl:value-of select="ReportFooter/Name"/></fo:inline> &#xA0;<fo:inline color="#C00000" >&#xA0;Age/Sex:</fo:inline><fo:inline color="#080808"><xsl:value-of select="BasicDetails/Age"/>/<xsl:value-of select="BasicDetails/Sex"/>&#xA0;</fo:inline> 
						  <fo:inline  color="#C00000" >Sample ID:&#xA0;</fo:inline><fo:inline color="#080808"><xsl:value-of select="ReportFooter/SampleID"/> </fo:inline>&#xA0;
						   <fo:inline  color="#C00000" > Report Date:&#xA0;</fo:inline><fo:inline color="#080808" ><xsl:value-of select="ReportFooter/ReportDate"/> </fo:inline>
						</fo:block>
					</fo:table-cell>
						<fo:table-cell padding-left="0.8in" >
					<fo:block font-family="Helvetica" font-size="6px" text-align="right">
						Page &#xA0;| &#xA0;<fo:page-number />
					</fo:block>
					</fo:table-cell>
					</fo:table-row>
					 </fo:table-body>
					</fo:table>
					</fo:static-content>
					
					 <fo:flow flow-name="xsl-region-body">
                    <xsl:apply-templates select=".//DocumentElement"/>
					<fo:block id="TheSecondPage3"> </fo:block>
			       <fo:table text-align="left"  width="7.5in" padding-top="0.25in" >
					<fo:table-column column-width="0.6in" />
					<fo:table-column column-width="4.6in" />
					<fo:table-column column-width="2.0in" />
						<fo:table-body >
							<fo:table-row  >
							 <fo:table-cell text-align="left" font-family="Arial, Helvetica, sans-serif" padding-top="0.5in">
								<fo:block  ><fo:external-graphic  src="D:/AnimalReport/doghexagonreddish3.jpg" width="0.62in" height="0.7in" ></fo:external-graphic>
								</fo:block>
								</fo:table-cell>
								
							   <fo:table-cell  align="left" padding-left="0.1in"    font-family="Arial, Helvetica, sans-serif" padding-top="0.73in">
								<fo:block font-size="15px"  align="left"  font-family="Helvetica" color="rgb(0, 125, 191)" >
								A GUIDE TO THE DNA SCREENING REPORT</fo:block>
								</fo:table-cell>
								<fo:table-cell  text-align="right" >
									<fo:block><fo:external-graphic  src="D:/AnimalReport/urbanlogosmall4.jpg" width="1in" height="1in" ></fo:external-graphic></fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					
						
					<fo:table>
					<fo:table-column column-width="1.625in"/>
					<fo:table-column column-width="1.625in"/>
					<fo:table-column column-width="1.625in"/>
					<fo:table-column column-width="2.625in"/>
					<fo:table-body>
					<fo:table-row>
					<fo:table-cell padding-left="0.3in"  number-columns-spanned="4" font-family="Arial, Helvetica, sans-serif"  text-align="justify" line-height="0.225in" padding-top="0.2in">
					 
					 <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="12px" color="rgb(33,73,156)" font-weight="bold">Introduction to genetic terms used in the report</fo:block>
					</fo:table-cell>
					</fo:table-row>
					
					</fo:table-body>
					</fo:table>
					 <fo:table>
					 <fo:table-column column-width="0.5in"/>
					 <fo:table-column column-width="6.5in"/>
					  <fo:table-body>
					 
					    <fo:table-row line-height="0.2in">
						<fo:table-cell number-columns-spanned="2" padding-top="0.2in" text-align="justify" padding-left="0.3in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px" ><fo:inline color="rgb(33,73,156)" font-size="11px" font-weight="bold">DNA</fo:inline>
						is the genetic material present in every cell containing a code that controls various functions in your
pet’s body. </fo:block> 
					   </fo:table-cell>
					   </fo:table-row>
					   
					   
					   
					    <fo:table-row line-height="0.2in">
						<fo:table-cell number-columns-spanned="2" padding-top="0.2in" text-align="justify" padding-left="0.3in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px" ><fo:inline color="rgb(33,73,156)" font-size="11px" font-weight="bold">Gene</fo:inline>
						is a unit of DNA with genetic information or code to produce a specific protein or an enzyme in your
pet’s body to perform a specific function. </fo:block> 
					   </fo:table-cell>
					   </fo:table-row>
					   
					   
					   
					   
					    <fo:table-row line-height="0.2in">
						<fo:table-cell number-columns-spanned="2" padding-top="0.2in" text-align="justify" padding-left="0.3in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px" ><fo:inline color="rgb(33,73,156)"  font-size="11px" font-weight="bold">Gene Mutations or Gene Variants</fo:inline>
						are specific changes of the genetic code at specific locations on the
genes. These change of code result in a protein variation resulting in a health issue. </fo:block> 
					   </fo:table-cell>
					   </fo:table-row>
					   
					   
					   
					    <fo:table-row line-height="0.2in">
						<fo:table-cell number-columns-spanned="2" padding-top="0.2in" text-align="justify" padding-left="0.3in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px" ><fo:inline color="rgb(33,73,156)" font-size="11px" font-weight="bold">Genetic Disease or Disorder</fo:inline>
						is a particular abnormal health condition affecting function of a body or a
part of dog’s body due to a genetic change. Based on the organ system involved, dog’s genetic disorders
can be one the following types: </fo:block> 
					   </fo:table-cell>
					   </fo:table-row>
					   
					   
					   

					   
					  
					  </fo:table-body>
					 </fo:table>
					 
					 
					 
					 
					 
					  <fo:table>
					 <fo:table-column column-width="0.5in"/>
					 <fo:table-column column-width="6.5in"/>
					  <fo:table-body>
					  
					  
					  
					   
					   
					 
					   <fo:table-row line-height="0.19in" >
					   <fo:table-cell padding-top="0.2in" padding-left="0.3in">
					    <fo:block  fontsize="11"  type="fragment" font="symbol" color="rgb(33,73,156)">&#8226;</fo:block>
					   </fo:table-cell>
						<fo:table-cell padding-top="0.2in" line-height="0.225in">
					     <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px"> 
						Ophthalmic (Vision problems related to eye)</fo:block>
					   </fo:table-cell>
					   </fo:table-row>
					    <fo:table-row line-height="0.2in">
					   <fo:table-cell padding-left="0.3in">
					    <fo:block  fontsize="11" color="#006FC0" >&#8226;</fo:block>
					   </fo:table-cell>
						<fo:table-cell line-height="0.225in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px"> Dental (Teeth and denture related)
						
						</fo:block>
					   </fo:table-cell>
					   </fo:table-row>
					    <fo:table-row line-height="0.225in" >
					   <fo:table-cell padding-left="0.3in">
					    <fo:block  fontsize="11" color="#006FC0">&#8226;</fo:block>
					   </fo:table-cell>
						<fo:table-cell line-height="0.225in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">
						Neurological (Disorders of the nervous system)
						</fo:block>
					   </fo:table-cell>
					   </fo:table-row>
					    <fo:table-row line-height="0.19in">
					   <fo:table-cell padding-left="0.3in" >
					    <fo:block  fontsize="11" color="#006FC0" >&#8226;</fo:block>
					   </fo:table-cell>
						<fo:table-cell>
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">Immunological (Conditions with immune dysfunction)</fo:block>
					   </fo:table-cell>
					   </fo:table-row>
					   
					    <fo:table-row line-height="0.19in">
					   <fo:table-cell padding-left="0.3in" >
					    <fo:block  fontsize="11" color="#006FC0" >&#8226;</fo:block>
					   </fo:table-cell>
						<fo:table-cell>
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">Endocrine (hormonal or endocrine disorders)</fo:block>
					   </fo:table-cell>
					   </fo:table-row>
					   
					    <fo:table-row line-height="0.19in">
					   <fo:table-cell padding-left="0.3in" >
					    <fo:block  fontsize="11" color="#006FC0" >&#8226;</fo:block>
					   </fo:table-cell>
						<fo:table-cell>
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">Skeletal (Bone defects)</fo:block>
					   </fo:table-cell>
					   </fo:table-row>
					   
					   
					    <fo:table-row line-height="0.19in">
					   <fo:table-cell padding-left="0.3in" >
					    <fo:block  fontsize="11" color="#006FC0" >&#8226;</fo:block>
					   </fo:table-cell>
						<fo:table-cell>
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">Respiratory (Breathing conditions)</fo:block>
					   </fo:table-cell>
					   </fo:table-row>
					   
					    <fo:table-row line-height="0.19in">
					   <fo:table-cell padding-left="0.3in" >
					    <fo:block  fontsize="11" color="#006FC0" >&#8226;</fo:block>
					   </fo:table-cell>
						<fo:table-cell>
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">Hepatological (Liver disorders)</fo:block>
					   </fo:table-cell>
					   </fo:table-row>
					   
					    <fo:table-row line-height="0.19in">
					   <fo:table-cell padding-left="0.3in" >
					    <fo:block  fontsize="11" color="#006FC0" >&#8226;</fo:block>
					   </fo:table-cell>
						<fo:table-cell>
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">Dermatological (Skin conditions)</fo:block>
					   </fo:table-cell>
					   </fo:table-row>
					   
					    <fo:table-row line-height="0.19in">
					   <fo:table-cell padding-left="0.3in" >
					    <fo:block  fontsize="11" color="#006FC0" >&#8226;</fo:block>
					   </fo:table-cell>
						<fo:table-cell>
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">Metabolic (Abnormal body metabolism or enzyme defects)</fo:block>
					   </fo:table-cell>
					   </fo:table-row>
					   
					    <fo:table-row line-height="0.19in">
					   <fo:table-cell padding-left="0.3in" >
					    <fo:block  fontsize="11" color="#006FC0" >&#8226;</fo:block>
					   </fo:table-cell>
						<fo:table-cell>
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">Hematological (Blood tissue related disorders)
</fo:block>
					   </fo:table-cell>
					   </fo:table-row>
					   
					   <fo:table-row line-height="0.19in">
					   <fo:table-cell padding-left="0.3in" >
					    <fo:block  fontsize="11" color="#006FC0" >&#8226;</fo:block>
					   </fo:table-cell>
						<fo:table-cell>
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">Gastrointestinal (Digestive system defects)</fo:block>
					   </fo:table-cell>
					   </fo:table-row>
					   
					   <fo:table-row line-height="0.19in">
					   <fo:table-cell padding-left="0.3in" >
					    <fo:block  fontsize="11" color="#006FC0" >&#8226;</fo:block>
					   </fo:table-cell>
						<fo:table-cell>
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">Muscular (Muscle dysfunction)</fo:block>
					   </fo:table-cell>
					   </fo:table-row>
					   
					   <fo:table-row line-height="0.19in">
					   <fo:table-cell padding-left="0.3in" >
					    <fo:block  fontsize="11" color="#006FC0" >&#8226;</fo:block>
					   </fo:table-cell>
						<fo:table-cell>
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">Renal (Kidney and urinary defects)</fo:block>
					   </fo:table-cell>
					   </fo:table-row>
					   
					   
					   
					   
					     <fo:table-row line-height="0.19in">
					   <fo:table-cell  number-columns-spanned="2" padding-left="0.3in" >
					   
					    <fo:block><fo:external-graphic  src="D:/AnimalReport/dogkid2.JPG" ></fo:external-graphic></fo:block>
					   </fo:table-cell>
					   </fo:table-row>
					   
					   
					   
					   
					  </fo:table-body>
					 </fo:table> 
					
					 
					 
					  
					  
					   <fo:table>
					 <fo:table-column column-width="0.5in"/>
					 <fo:table-column column-width="6in"/>
					  <fo:table-body>
					 
					    <fo:table-row line-height="0.2in">
						<fo:table-cell number-columns-spanned="2" padding-top="0.2in" text-align="justify" padding-left="0.3in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px" ><fo:inline color="rgb(33,73,156)" font-size="11px" font-weight="bold">Genetic Trait</fo:inline>
						is a distinguishing quality or characteristic of the dog determined by genetic factor or
change. </fo:block> 
					   </fo:table-cell>
					   </fo:table-row>
					   
					   
					   
					    <fo:table-row line-height="0.2in">
						<fo:table-cell number-columns-spanned="2" padding-top="0.2in" text-align="justify" padding-left="0.3in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px" ><fo:inline color="rgb(33,73,156)" font-size="11px" font-weight="bold">Autosomal:</fo:inline>
						Dogs have 78 chromosomes (39 pairs) with 38 pairs are autosomes (non-sex chromosomes)
and one pair of sex chromosomes (X and Y). </fo:block> 
					   </fo:table-cell>
					   </fo:table-row>
					   
					   
					   
					   
					    <fo:table-row line-height="0.2in">
						<fo:table-cell number-columns-spanned="2" padding-top="0.2in" text-align="justify" padding-left="0.3in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px" ><fo:inline color="rgb(33,73,156)"  font-size="11px" font-weight="bold">Inheritance</fo:inline>
						is the process by which genetic information is passed on from parent to offspring. Nature
provide two copies of gene for all bodily functions of which one copy comes from father and other from
mother.</fo:block> 
					   </fo:table-cell>
					   </fo:table-row>
					   
					  
					  </fo:table-body>
					 </fo:table>
					 
					 
					</fo:flow>
					</fo:page-sequence>
					
					
					
					
					
					
					

<fo:page-sequence master-reference="mainPage2">
					<fo:static-content flow-name="xsl-region-after">
					 <fo:table text-align="left" padding-bottom="0.2in">
					 <fo:table-column column-width="5.8in"/>
					 <fo:table-column column-width="1.2in"/>
					    <fo:table-body>
					<fo:table-row  >
						<fo:table-cell >
						 <fo:block font-size="8px"  >
					    <fo:inline  color="#C00000"> Name:</fo:inline> <fo:inline color="#080808">&#xA0;<xsl:value-of select="ReportFooter/Name"/></fo:inline> &#xA0;<fo:inline color="#C00000" >&#xA0;Age/Sex:</fo:inline><fo:inline color="#080808"><xsl:value-of select="BasicDetails/Age"/>/<xsl:value-of select="BasicDetails/Sex"/>&#xA0;</fo:inline> 
						  <fo:inline  color="#C00000" >Sample ID:&#xA0;</fo:inline><fo:inline color="#080808"><xsl:value-of select="ReportFooter/SampleID"/> </fo:inline>&#xA0;
						   <fo:inline  color="#C00000" > Report Date:&#xA0;</fo:inline><fo:inline color="#080808" ><xsl:value-of select="ReportFooter/ReportDate"/> </fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="0.8in" >
					<fo:block font-family="Helvetica" font-size="6px" text-align="right">
						Page &#xA0;| &#xA0;<fo:page-number />
					</fo:block>
					</fo:table-cell>
					</fo:table-row>
					 </fo:table-body>
					</fo:table>
					</fo:static-content>
					



 <fo:flow flow-name="xsl-region-body">
                    <xsl:apply-templates select=".//DocumentElement"/>
					<fo:block id="TheSecondPage4"> </fo:block>
			       <fo:table text-align="right"  width="7.5in"  >
					<fo:table-column column-width="4.0in" />
					<fo:table-column column-width="3.0in" />
						<fo:table-body >
						
						<fo:table-row  >
							   <fo:table-cell text-align="left" font-family="Arial, Helvetica, sans-serif" padding-top="0.25in">
								
								
								</fo:table-cell>
								<fo:table-cell  padding-top="0.25in" text-align="right" >
									<fo:block><fo:external-graphic  src="D:/AnimalReport/urbanlogosmall4.jpg" width="1in" height="1in" ></fo:external-graphic></fo:block>
								</fo:table-cell>
							</fo:table-row>
							
							<fo:table-row  >
							   <fo:table-cell text-align="left" font-family="Arial, Helvetica, sans-serif" padding-top="0.3in">
								
								<fo:block font-size="15px"  font-family="Helvetica" color="rgb(0, 125, 191)" >How to read Canine DNA Screen Result?</fo:block>
								</fo:table-cell>
								<fo:table-cell  text-align="right"  >
									
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					
						
					<fo:table>
					<fo:table-column column-width="1.625in"/>
					<fo:table-column column-width="1.625in"/>
					<fo:table-column column-width="1.625in"/>
					<fo:table-column column-width="1.625in"/>
					<fo:table-body>
					<fo:table-row>
					<fo:table-cell padding-left="0.3in"  number-columns-spanned="2" font-family="Arial, Helvetica, sans-serif"  text-align="justify" line-height="0.225in" padding-top="0.2in">
					 
					 <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px"  font-weight="bold">We have designed this report carefully to provide you with as
much information as possible in a simple yet comprehensive
fashion. The detailed Table of Contents page guides you to
various parts of the report.t</fo:block>
					</fo:table-cell>
					
					
					
					<fo:table-cell padding-left="0.3in"  number-columns-spanned="2" font-family="Arial, Helvetica, sans-serif"  text-align="justify" line-height="0.225in" padding-top="0.2in">
					 <fo:block><fo:external-graphic  src="D:/AnimalReport/dogkid33.jpg" content-width="2in" height="2in"></fo:external-graphic></fo:block>
					 
					</fo:table-cell>
					
					
					</fo:table-row>
					
					</fo:table-body>
					</fo:table>
					 <fo:table>
					 <fo:table-column column-width="0.5in"/>
					 <fo:table-column column-width="6in"/>
					  <fo:table-body>
					 
					    <fo:table-row line-height="0.2in">
						<fo:table-cell number-columns-spanned="2" padding-top="0.2in" text-align="justify" padding-left="0.3in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px" >Canine DNA Screen aims at identification of the following by testing 154 genetic markers: </fo:block> 
					   </fo:table-cell>
					   </fo:table-row>
					   
					   
					   
									   
					   
					   

					   
					  
					  </fo:table-body>
					 </fo:table>
					 
					 
					 
					 
					 
					  <fo:table>
					 <fo:table-column column-width="0.5in"/>
					 <fo:table-column column-width="6in"/>
					  <fo:table-body>
					  
					  
					 
					   
					 
					   <fo:table-row line-height="0.19in" >
					   <fo:table-cell padding-top="0.2in" padding-left="0.3in">
					    <fo:block  fontsize="11"  type="fragment" font="symbol" color="rgb(33,73,156)">&#8226;</fo:block>
					   </fo:table-cell>
						<fo:table-cell padding-top="0.2in" line-height="0.225in">
					     <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px"> 
						Is your dog affected with any of the inherited genetic conditions tested?
						</fo:block>

					   </fo:table-cell>
					   </fo:table-row>
					    <fo:table-row line-height="0.2in">
					   <fo:table-cell padding-left="0.3in">
					    <fo:block  fontsize="11" color="#006FC0" >&#8226;</fo:block>
					   </fo:table-cell>
						<fo:table-cell line-height="0.225in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px"> If your dog an unaffected carrier for any of these conditions?
						
						</fo:block>
					   </fo:table-cell>
					   </fo:table-row>
					    <fo:table-row line-height="0.225in" >
					   <fo:table-cell padding-left="0.3in">
					    <fo:block  fontsize="11" color="#006FC0">&#8226;</fo:block>
					   </fo:table-cell>
						<fo:table-cell line-height="0.225in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">
						What are the genetic traits (among those the panel tests) that your dog has inherited?</fo:block>
						
					   </fo:table-cell>
					   </fo:table-row>
					  
					   
					   
					  </fo:table-body>
					 </fo:table> 
					
					 
					 
					
					 <fo:table>
					<fo:table-column column-width="1.625in"/>
					<fo:table-column column-width="1.625in"/>
					<fo:table-column column-width="1.625in"/>
					<fo:table-column column-width="1.625in"/>
					  <fo:table-body>
					 
					    <fo:table-row line-height="0.2in">
						<fo:table-cell  padding-top="0.2in" text-align="justify" padding-left="0.3in">
					  <fo:block><fo:external-graphic  src="D:/AnimalReport/pagesummarynew.JPG" ></fo:external-graphic></fo:block>
					   </fo:table-cell>
					   
					   <fo:table-cell  padding-top="0.2in" text-align="justify" padding-left="0.3in">
					  <fo:block><fo:external-graphic  src="D:/AnimalReport/pagedetailedsummarynew.JPG" ></fo:external-graphic></fo:block>
					   </fo:table-cell>
					   
					   
					   <fo:table-cell  padding-top="0.2in" text-align="justify" padding-left="0.3in">
					  <fo:block><fo:external-graphic  src="D:/AnimalReport/pagetraitsnew.JPG" ></fo:external-graphic></fo:block>
					   </fo:table-cell>
					   
					   
					   <fo:table-cell  padding-top="0.2in" text-align="justify" padding-left="0.3in">
					  <fo:block><fo:external-graphic  src="D:/AnimalReport/pagedisordernew.JPG" ></fo:external-graphic></fo:block>
					   </fo:table-cell>
					   
					   
					   </fo:table-row>
					   
					   
					   
					   
					   <fo:table-row line-height="0.2in">
						<fo:table-cell  padding-top="0.2in" text-align="justify" padding-left="0.3in">
					  <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="8px">Results Summary Page</fo:block>
					   </fo:table-cell>
					   
					   <fo:table-cell  padding-top="0.2in" text-align="justify" padding-left="0.3in">
					  <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="8px">Detailed Results Page</fo:block>
					   </fo:table-cell>
					   
					   
					   <fo:table-cell  padding-top="0.2in" text-align="justify" padding-left="0.3in">
					  <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="8px">List of Traits Tested</fo:block>
					   </fo:table-cell>
					   
					   
					   <fo:table-cell  padding-top="0.2in" text-align="justify" padding-left="0.3in">
					  <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="8px">List of Disorders Tested</fo:block>
					   </fo:table-cell>
					   
					   
					   </fo:table-row>
					   
					   </fo:table-body>
					   
					   
					   </fo:table>
					   
					
					
					
					
					
					
					 
					
					 <fo:table>
					 <fo:table-column column-width="3.5in"/>
					 <fo:table-column column-width="3.5in"/>
					  <fo:table-body>
					 
					    <fo:table-row line-height="0.2in">
						<fo:table-cell  padding-top="0.2in" text-align="justify" padding-left="0.3in">
					  <fo:block><fo:external-graphic  src="D:/AnimalReport/pagedisordernew.jpg" width="3.2in" height="3.2in" ></fo:external-graphic></fo:block>
					   </fo:table-cell>
					   
					   <fo:table-cell  padding-top="0.2in" text-align="justify" padding-left="0.3in">
					  <fo:block><fo:external-graphic  src="D:/AnimalReport/disorderdetailspage.jpg" width="3.2in" height="3.2in"  ></fo:external-graphic></fo:block>
					   </fo:table-cell>
					   
					   
					 
					   
					   
					   </fo:table-row>
					   
					   
					   
					   
					
					   
					   </fo:table-body>
					   
					   
					   </fo:table>
					
					
					
					
					</fo:flow>
					
					</fo:page-sequence>
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					

<fo:page-sequence master-reference="mainPage2">
					<fo:static-content flow-name="xsl-region-after">
					 <fo:table text-align="left" padding-bottom="0.2in">
					 <fo:table-column column-width="5.8in"/>
					 <fo:table-column column-width="1.2in"/>
					    <fo:table-body>
					<fo:table-row  >
						<fo:table-cell >
						 <fo:block font-size="8px"  >
					    <fo:inline  color="#C00000"> Name:</fo:inline> <fo:inline color="#080808">&#xA0;<xsl:value-of select="ReportFooter/Name"/></fo:inline> &#xA0;<fo:inline color="#C00000" >&#xA0;Age/Sex:</fo:inline><fo:inline color="#080808"><xsl:value-of select="BasicDetails/Age"/>/<xsl:value-of select="BasicDetails/Sex"/>&#xA0;</fo:inline> 
						  <fo:inline  color="#C00000" >Sample ID:&#xA0;</fo:inline><fo:inline color="#080808"><xsl:value-of select="ReportFooter/SampleID"/> </fo:inline>&#xA0;
						   <fo:inline  color="#C00000" > Report Date:&#xA0;</fo:inline><fo:inline color="#080808" ><xsl:value-of select="ReportFooter/ReportDate"/> </fo:inline>
						</fo:block>
					</fo:table-cell>
						<fo:table-cell padding-left="0.8in" >
					<fo:block font-family="Helvetica" font-size="6px" text-align="right">
						Page &#xA0;| &#xA0;<fo:page-number />
					</fo:block>
					</fo:table-cell>
					</fo:table-row>
					 </fo:table-body>
					</fo:table>
					</fo:static-content>
					



 <fo:flow flow-name="xsl-region-body">
                    <xsl:apply-templates select=".//DocumentElement"/>
					<fo:block id="TheSecondPage5"> </fo:block>
			       <fo:table text-align="right"  width="7.5in"  padding-top="0.25in">
					<fo:table-column column-width="0.7in" />
					<fo:table-column column-width="3.3in" />
					<fo:table-column column-width="3.0in" />
						<fo:table-body >
							<fo:table-row  >
							   <fo:table-cell text-align="left" font-family="Arial, Helvetica, sans-serif" padding-top="0.3in">
								<fo:external-graphic  src="D:/AnimalReport/doghexagonreddish3.jpg" width="0.62in" height="0.7in" ></fo:external-graphic>
								
								</fo:table-cell>
								
								<fo:table-cell text-align="left" font-family="Arial, Helvetica, sans-serif" padding-top="0.5in">
								
								<fo:block font-size="15px"  font-family="Helvetica" color="rgb(0, 125, 191)" >Limitations of Canine DNA Screen
report</fo:block>
								</fo:table-cell>
								<fo:table-cell  text-align="right" >
									<fo:block><fo:external-graphic  src="D:/AnimalReport/urbanlogosmall4.jpg" width="1in" height="1in" ></fo:external-graphic></fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					
						
					<fo:table>
					<fo:table-column column-width="1.625in"/>
					<fo:table-column column-width="1.625in"/>
					<fo:table-column column-width="1.625in"/>
					<fo:table-column column-width="1.625in"/>
					<fo:table-body>
					<fo:table-row>
					<fo:table-cell padding-left="0.3in"  number-columns-spanned="4" font-family="Arial, Helvetica, sans-serif"  text-align="justify" line-height="0.225in" padding-top="0.2in">
					 
					 <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px"  font-weight="bold">Product and Technology Limitations</fo:block>
					</fo:table-cell>
					
					
					
					<fo:table-cell padding-left="0.3in"  number-columns-spanned="2" font-family="Arial, Helvetica, sans-serif"  text-align="justify" line-height="0.225in" padding-top="0.2in">
					 
					 <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px"  font-weight="bold"></fo:block>
					</fo:table-cell>
					
					
					</fo:table-row>
					
					</fo:table-body>
					</fo:table>
					
					 
					 
					 
					  <fo:table>
					 <fo:table-column column-width="0.5in"/>
					 <fo:table-column column-width="6in"/>
					  <fo:table-body>
					  
					  
					 
					   
					 
					   <fo:table-row line-height="0.19in" >
					   <fo:table-cell padding-top="0.2in" padding-left="0.3in">
					    <fo:block  fontsize="11"  type="fragment" font="symbol" color="rgb(33,73,156)">&#8226;</fo:block>
					   </fo:table-cell>
						<fo:table-cell padding-top="0.2in" line-height="0.225in">
					     <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px"> 
						The test is limited to the genes and diseases tested in the panel. Genetic disorders associated with
genes not included in the panel cannot be diagnosed.
						</fo:block>

					   </fo:table-cell>
					   </fo:table-row>
					    <fo:table-row line-height="0.2in">
					   <fo:table-cell padding-left="0.3in">
					    <fo:block  fontsize="11" color="#006FC0" >&#8226;</fo:block>
					   </fo:table-cell>
						<fo:table-cell line-height="0.225in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px"> A genetic disease can be caused by multiple variants of a gene. However, only selected variants
(which are commonly reported for certain breeds) are included in the panel for testing. In case your
pet is clinically showing symptoms of any genetic condition and your Canine DNA Screen report is
negative for the disease, please consult our geneticist for available confirmatory options.
						
						</fo:block>
					   </fo:table-cell>
					   </fo:table-row>
					    <fo:table-row line-height="0.225in" >
					   <fo:table-cell padding-left="0.3in">
					    <fo:block  fontsize="11" color="#006FC0">&#8226;</fo:block>
					   </fo:table-cell>
						<fo:table-cell line-height="0.225in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">
						The panel is based on current research. More and more genes and their association with diseases are
being discovered. Newer versions of the panel will be released periodically and shall be used. Write to
us if you need more information on this.</fo:block>
						
					   </fo:table-cell>
					   </fo:table-row>
					   
					   
					   
					   
					    <fo:table-row line-height="0.225in" >
					   <fo:table-cell padding-left="0.3in">
					    <fo:block  fontsize="11" color="#006FC0">&#8226;</fo:block>
					   </fo:table-cell>
						<fo:table-cell line-height="0.225in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">
						Complex polygenic genetic disorders caused by multiple genes are not covered in this test.</fo:block>
						
					   </fo:table-cell>
					   </fo:table-row>
					   
					   
					   
					    <fo:table-row line-height="0.225in" >
					   <fo:table-cell padding-left="0.3in">
					    <fo:block  fontsize="11" color="#006FC0">&#8226;</fo:block>
					   </fo:table-cell>
						<fo:table-cell line-height="0.225in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">
						Clinical correlation of the genetic report is strongly recommended.</fo:block>
						
					   </fo:table-cell>
					   </fo:table-row>
					   
					   
					    <fo:table-row line-height="0.225in" >
					   <fo:table-cell padding-left="0.3in">
					    <fo:block  fontsize="11" color="#006FC0">&#8226;</fo:block>
					   </fo:table-cell>
						<fo:table-cell line-height="0.225in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">
						Recommendations provided in the report are general. Veterinarian consultation is mandatory.</fo:block>
						
					   </fo:table-cell>
					   </fo:table-row>
					   
					   
					    <fo:table-row line-height="0.225in" >
					   <fo:table-cell padding-left="0.3in">
					    <fo:block  fontsize="11" color="#006FC0">&#8226;</fo:block>
					   </fo:table-cell>
						<fo:table-cell line-height="0.225in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">
						Next Generation Sequencing technology was used to generate the data for analysis. Next Generation
						Sequencing (NGS) is the latest technology for multi-gene sequencing with 99% accuracy and
						sensitivity.
						</fo:block>
						
					   </fo:table-cell>
					   </fo:table-row>
					   
					   
					   
					  
					   
					   
					  </fo:table-body>
					 </fo:table> 
					
					 
					 
					
					 <fo:table padding-top="3in">
					<fo:table-column column-width="3.25in"/>
					<fo:table-column column-width="3.25in"/>
					
					  <fo:table-body>
					 
					    <fo:table-row line-height="0.2in">
						<fo:table-cell  padding-top="0.2in" text-align="justify" padding-left="0.3in">
					  <fo:block><fo:external-graphic  src="D:/AnimalReport/ion5.JPG" ></fo:external-graphic></fo:block>
					   </fo:table-cell>
					   
					   <fo:table-cell  padding-top="0.2in" text-align="justify" padding-left="0.3in">
					  <fo:block><fo:external-graphic  src="D:/AnimalReport/chef.JPG" ></fo:external-graphic></fo:block>
					   </fo:table-cell>
					   
					   
					 
					   
					   </fo:table-row>
					   
					   
					   
					   
					   </fo:table-body>
					   
					   
					   </fo:table>
					   
					
					
					
					</fo:flow>
					
					</fo:page-sequence>
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
									

<fo:page-sequence master-reference="mainPage2">
					<fo:static-content flow-name="xsl-region-after">
					 <fo:table text-align="left" padding-bottom="0.2in">
					 <fo:table-column column-width="5.8in"/>
					 <fo:table-column column-width="1.2in"/>
					    <fo:table-body>
					<fo:table-row  >
						<fo:table-cell >
						 <fo:block font-size="8px"  >
					    <fo:inline  color="#C00000"> Name:</fo:inline> <fo:inline color="#080808">&#xA0;<xsl:value-of select="ReportFooter/Name"/></fo:inline> &#xA0;<fo:inline color="#C00000" >&#xA0;Age/Sex:</fo:inline><fo:inline color="#080808"><xsl:value-of select="BasicDetails/Age"/>/<xsl:value-of select="BasicDetails/Sex"/>&#xA0;</fo:inline> 
						  <fo:inline  color="#C00000" >Sample ID:&#xA0;</fo:inline><fo:inline color="#080808"><xsl:value-of select="ReportFooter/SampleID"/> </fo:inline>&#xA0;
						   <fo:inline  color="#C00000" > Report Date:&#xA0;</fo:inline><fo:inline color="#080808" ><xsl:value-of select="ReportFooter/ReportDate"/> </fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="0.1in" >
					<fo:block font-family="Helvetica" font-size="6px" text-align="right">
						Page &#xA0;| &#xA0;<fo:page-number />
					</fo:block>
					</fo:table-cell>
					</fo:table-row>
					 </fo:table-body>
					</fo:table>
					</fo:static-content>
					



 <fo:flow flow-name="xsl-region-body">
                    <xsl:apply-templates select=".//DocumentElement"/>
					<fo:block id="TheSecondPage6"> </fo:block>
			       <fo:table text-align="left"  width="7.5in"  >
					<fo:table-column column-width="0.7in" />
					<fo:table-column column-width="4.3in" />
					<fo:table-column column-width="2.0in" />
					
						<fo:table-body >
							<fo:table-row  >
							<fo:table-cell text-align="left" font-family="Arial, Helvetica, sans-serif" padding-top="1in">
								<fo:external-graphic  src="D:/AnimalReport/doghexagonreddish3.jpg" width="0.62in" height="0.7in" ></fo:external-graphic>
								
								</fo:table-cell>
								
								
							   <fo:table-cell text-align="left" font-family="Arial, Helvetica, sans-serif" padding-top="1.2in">
								
								<fo:block font-size="15px"  font-family="Helvetica" color="rgb(0, 125, 191)" >Results Detailed</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-top="0.25in"  text-align="right" >
									<fo:block><fo:external-graphic  src="D:/AnimalReport/urbanlogosmall4.jpg" width="1in" height="1in" ></fo:external-graphic></fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					
						
					<fo:table>
					<fo:table-column column-width="1.625in"/>
					<fo:table-column column-width="1.625in"/>
					<fo:table-column column-width="1.625in"/>
					<fo:table-column column-width="1.625in"/>
					<fo:table-body>
					<fo:table-row>
					<fo:table-cell  padding-left="0.35in" number-columns-spanned="4" font-family="Arial, Helvetica, sans-serif"  text-align="justify" line-height="0.225in" padding-top="0.2in" >
					 
					 <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="12px"  font-weight="bold">Summary of results identified</fo:block>
					</fo:table-cell>
					
					
					
					<fo:table-cell padding-left="0.3in"  number-columns-spanned="2" font-family="Arial, Helvetica, sans-serif"  text-align="justify" line-height="0.225in" padding-top="0.2in">
					 
					 <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px"  font-weight="bold"></fo:block>
					</fo:table-cell>
					
					
					</fo:table-row>
					
					</fo:table-body>
					</fo:table>
					
					 
					 
					 
					  <fo:table padding-top="0.1in" padding-left="0.5in">
					 <fo:table-column column-width="2in"/>
					 <fo:table-column column-width="5in"/>
					  <fo:table-body>
					  
					  
					 
					   
					 
					   <fo:table-row line-height="0.19in" >
					   <fo:table-cell    padding-left="0.35in"  >
					   
					   
								   <fo:table  background-color="rgb(239, 235, 222)">
								 <fo:table-column column-width="1.0in"/>
								 <fo:table-column column-width="0.4in"/>
								  <fo:table-body>
								  
									<fo:table-row line-height="0.5in" >
								   <fo:table-cell  padding-left="0.1in" align="left" padding-top="0.1in" >
								   
								   
									<fo:block  padding-left="0.1in" fontsize="11" font-weight="bold"  type="fragment" color="black" font="symbol">
									 Disorders
									
									</fo:block>
								   </fo:table-cell>
									<fo:table-cell  align="left"  font-weight="bold" padding-top="0.1in"  >
									 <fo:block font-family="Arial, Helvetica, sans-serif"  type="fragment"  color="red" font-weight="bold"  font-size="18px"> 
									<xsl:value-of select=".//DisorderCount"/>
									</fo:block>
									
									   </fo:table-cell>
									</fo:table-row>
									</fo:table-body>
									</fo:table>
					

					   </fo:table-cell>
					   
					   
					   
					    <fo:table-cell   border-bottom="0.1px solid" border-left="0.1px solid" border-top="0.1px solid" border-right="0.1px solid"  align  ="left"  >
					   
					   
								   <fo:table>
								 <fo:table-column column-width="5in"/>
								 
								  <fo:table-body>
								  
									<fo:table-row line-height="0.19in" >
								   <fo:table-cell padding-left="0.1in" background-color="rgb(239, 235, 222)" border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block  fontsize="11"  padding-top="0.1in" type="fragment" font-weight="bold" font="symbol" color="black">Disorders identified</fo:block>
								   </fo:table-cell>
									
									</fo:table-row>
									
									<xsl:for-each select="ResultSummaryPage/Disorders/DisorderList">
				                   <xsl:for-each select="DisorderListItem">
									<fo:table-row line-height="0.19in" >
								   <fo:table-cell padding-top="0.1in"  border-bottom="0.1px solid" border-top="0.1px solid" padding-left="0.1in">
									<fo:block  fontsize="11"  padding-left="0.1in"  type="fragment" font="symbol" color ="red"><xsl:value-of select=".//DisorderName"/></fo:block>
								   </fo:table-cell>
									</fo:table-row>
									
									
									<fo:table-row line-height="0.19in" >
								   <fo:table-cell padding-top="0.1in" padding-left="0.1in">
									<fo:block  padding-left="0.1in" fontsize="11"  type="fragment" font="symbol" >
									<fo:inline font-family="sans-serif" font-weight="bold" color="black">Type: </fo:inline>  <xsl:value-of select="Type"/></fo:block>
								   </fo:table-cell>
									</fo:table-row>
									
									
									<fo:table-row line-height="0.19in" >
								   <fo:table-cell padding-top="0.1in" padding-left="0.1in">
									<fo:block  padding-left="0.1in" fontsize="11"  type="fragment" font="symbol" >
									<fo:inline font-family="sans-serif" font-weight="bold" color="black">Marker: </fo:inline>  <xsl:value-of select="Marker"/></fo:block>
								   </fo:table-cell>
									</fo:table-row>
									
									<fo:table-row line-height="0.19in" >
								   <fo:table-cell padding-top="0.1in" padding-left="0.1in">
									<fo:block  padding-left="0.1in" fontsize="11"  type="fragment" font="symbol" >
									<fo:inline font-family="sans-serif" font-weight="bold" color="black">Gene: </fo:inline>  <xsl:value-of select="Gene"/></fo:block>
								   </fo:table-cell>
									</fo:table-row>
									
									<fo:table-row line-height="0.19in" >
								   <fo:table-cell padding-top="0.1in" padding-left="0.1in">
									<fo:block padding-left="0.1in"  fontsize="11"  type="fragment" font="symbol" >
									<fo:inline font-family="sans-serif" font-weight="bold" color="black">Inheritance: </fo:inline>  <xsl:value-of select="Inheritance"/></fo:block>
								   </fo:table-cell>
									</fo:table-row>
									
									<fo:table-row line-height="0.19in" >
								   <fo:table-cell  padding-top="0.1in" padding-left="0.1in">
									<fo:block padding-left="0.1in"  fontsize="11" padding-bottom="0.1in"  type="fragment" font="symbol" >
									<fo:inline font-family="sans-serif" font-weight="bold" color="black">Summary: </fo:inline>  <xsl:value-of select="Summary"/></fo:block>
								   </fo:table-cell>
									</fo:table-row>
									
									
									
									</xsl:for-each>
				                   </xsl:for-each>
									
									
									</fo:table-body>
									</fo:table>
					

					   </fo:table-cell>
					   </fo:table-row>
					   
					   
					  </fo:table-body>
					 </fo:table> 
					
					 
					 
					
					
					  <fo:table padding-top="0.2in">
					 <fo:table-column column-width="2in"/>
					 <fo:table-column column-width="5in"/>
					  <fo:table-body>
					   <fo:table-row line-height="0.19in" >
					   <fo:table-cell  padding-left="0.35in"   >
					   
					   
								   <fo:table  background-color="rgb(239, 235, 222)">
								 <fo:table-column column-width="1.0in"/>
								 <fo:table-column column-width="0.4in"/>
								  <fo:table-body>
								  
									<fo:table-row line-height="0.5in" >
								   <fo:table-cell  padding-left="0.1in" align="left" padding-top="0.1in" >
								   
								   
									<fo:block  padding-left="0.1in" fontsize="11" font-weight="bold"  type="fragment" color="black" font="symbol">
									 Carrier
									
									</fo:block>
								   </fo:table-cell>
									<fo:table-cell  align="left"  font-weight="bold" padding-top="0.1in"  >
									 <fo:block font-family="Arial, Helvetica, sans-serif"  type="fragment"  font-weight="bold"  font-size="18px"> 
									<xsl:value-of select=".//CarrierCount"/>
									</fo:block>
									
									   </fo:table-cell>
									</fo:table-row>
									</fo:table-body>
									</fo:table>
				</fo:table-cell>
					   
					   
					    <fo:table-cell  border-bottom="0.1px solid" border-left="0.1px solid" border-top="0.1px solid" border-right="0.1px solid"  align  ="left"  >
					   
					   
								   <fo:table>
								 <fo:table-column column-width="5in"/>
								 
								  <fo:table-body>
								  
									<fo:table-row line-height="0.19in" >
								   <fo:table-cell padding-left="0.1in" background-color="rgb(239, 235, 222)" border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block  fontsize="11"  padding-top="0.1in" type="fragment" font-weight="bold" font="symbol" color="black">CARRIER STATUS IDENTIFIED</fo:block>
								   </fo:table-cell>
									
									</fo:table-row>
									
									<xsl:for-each select="ResultSummaryPage/Carriers/CarrierList">
				                   <xsl:for-each select="CarrierListItem">
									<fo:table-row line-height="0.19in" >
								   <fo:table-cell padding-top="0.1in"  border-bottom="0.1px solid" border-top="0.1px solid" padding-left="0.1in">
									<fo:block  fontsize="11"  padding-left="0.1in" color="rgb(33,73,156)" font-weight="bold"  type="fragment" font="symbol" ><xsl:value-of select=".//CarrierName"/></fo:block>
								   </fo:table-cell>
									</fo:table-row>
									
									
									<fo:table-row line-height="0.19in" >
								   <fo:table-cell padding-top="0.1in" padding-left="0.1in">
									<fo:block  padding-left="0.1in" fontsize="11"  type="fragment" font="symbol" >
									<fo:inline font-family="sans-serif" font-weight="bold" color="black">Type: </fo:inline>  <xsl:value-of select="Type"/></fo:block>
								   </fo:table-cell>
									</fo:table-row>
									
									
									<fo:table-row line-height="0.19in" >
								   <fo:table-cell padding-top="0.1in" padding-left="0.1in">
									<fo:block  padding-left="0.1in" fontsize="11"  type="fragment" font="symbol" >
									<fo:inline font-family="sans-serif" font-weight="bold" color="black">Marker: </fo:inline>  <xsl:value-of select="Marker"/></fo:block>
								   </fo:table-cell>
									</fo:table-row>
									
									<fo:table-row line-height="0.19in" >
								   <fo:table-cell padding-top="0.1in" padding-left="0.1in">
									<fo:block  padding-left="0.1in" fontsize="11"  type="fragment" font="symbol" >
									<fo:inline font-family="sans-serif" font-weight="bold" color="black">Gene: </fo:inline>  <xsl:value-of select="Gene"/></fo:block>
								   </fo:table-cell>
									</fo:table-row>
									
									<fo:table-row line-height="0.19in" >
								   <fo:table-cell padding-top="0.1in" padding-left="0.1in">
									<fo:block padding-left="0.1in"  fontsize="11"  type="fragment" font="symbol" >
									<fo:inline font-family="sans-serif" font-weight="bold" color="black">Inheritance: </fo:inline>  <xsl:value-of select="Inheritance"/></fo:block>
								   </fo:table-cell>
									</fo:table-row>
									
									<fo:table-row line-height="0.19in" >
								   <fo:table-cell  padding-top="0.1in" padding-left="0.1in">
									<fo:block padding-left="0.1in"  fontsize="11" padding-bottom="0.1in"  type="fragment" font="symbol" >
									<fo:inline font-family="sans-serif" font-weight="bold" color="black">Summary: </fo:inline>  <xsl:value-of select="Summary"/></fo:block>
								   </fo:table-cell>
									</fo:table-row>
									
									
									
									</xsl:for-each>
				                   </xsl:for-each>
									
									
									</fo:table-body>
									</fo:table>
					

					   </fo:table-cell>
					   </fo:table-row>
					   
					  </fo:table-body>
					 </fo:table> 
					
					   
					   
					     <fo:table padding-top="0.2in">
					 <fo:table-column column-width="2in"/>
					 <fo:table-column column-width="5in"/>
					  <fo:table-body>
					   <fo:table-row line-height="0.19in" >
					   <fo:table-cell    padding-left="0.35in"  >
					   
					   
								   <fo:table  background-color="rgb(239, 235, 222)">
								 <fo:table-column column-width="1.0in"/>
								 <fo:table-column column-width="0.4in"/>
								  <fo:table-body>
								  
									<fo:table-row line-height="0.5in" >
								   <fo:table-cell  padding-left="0.1in" align="left" padding-top="0.1in" >
								   
								   
									<fo:block  padding-left="0.1in" fontsize="11" font-weight="bold"  type="fragment" color="black" font="symbol">
									 Traits
									
									</fo:block>
								   </fo:table-cell>
									<fo:table-cell  align="left"  font-weight="bold" padding-top="0.1in"  >
									 <fo:block font-family="Arial, Helvetica, sans-serif"  type="fragment"  font-weight="bold"  font-size="18px"> 
									<xsl:value-of select=".//TraitCount"/>
									</fo:block>
									
									   </fo:table-cell>
									</fo:table-row>
									</fo:table-body>
									</fo:table>
				</fo:table-cell>
					   
					   
					    <fo:table-cell  border-bottom="0.1px solid" border-left="0.1px solid" border-top="0.1px solid" border-right="0.1px solid"  align  ="left"  >
					   
					   
								   <fo:table>
								 <fo:table-column column-width="5in"/>
								 
								  <fo:table-body>
								  
									<fo:table-row line-height="0.19in" >
								   <fo:table-cell padding-left="0.1in" background-color="rgb(239, 235, 222)" border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block  fontsize="11"  padding-top="0.1in" type="fragment" font-weight="bold" font="symbol" color="black">TRAITS IDENTIFIED</fo:block>
								   </fo:table-cell>
									
									</fo:table-row>
									
									<xsl:for-each select="ResultSummaryPage/Traits/TraitList">
				                   <xsl:for-each select="TraitListItem">
									<fo:table-row line-height="0.19in" >
								   <fo:table-cell padding-top="0.1in"  border-bottom="0.1px solid" border-top="0.1px solid" padding-left="0.1in">
									<fo:block  fontsize="11"  padding-left="0.1in" color="rgb(33,73,156)" font-weight="bold"  type="fragment" font="symbol" ><xsl:value-of select=".//TraitName"/></fo:block>
								   </fo:table-cell>
									</fo:table-row>
									
									
									
									
									
									<fo:table-row line-height="0.19in" >
								   <fo:table-cell padding-top="0.1in" padding-left="0.1in">
									<fo:block  padding-left="0.1in" fontsize="11"  type="fragment" font="symbol" >
									<fo:inline font-family="Arial, Helvetica, sans-serif" font-weight="bold" color="black">Marker: </fo:inline>  <xsl:value-of select="Marker"/></fo:block>
								   </fo:table-cell>
									</fo:table-row>
									
									<fo:table-row line-height="0.19in" >
								   <fo:table-cell padding-top="0.1in" padding-left="0.1in">
									<fo:block  padding-left="0.1in" fontsize="11"  type="fragment" font="symbol" >
									<fo:inline font-family="Arial, Helvetica, sans-serif" font-weight="bold" color="black">Gene: </fo:inline>  <xsl:value-of select="Gene"/></fo:block>
								   </fo:table-cell>
									</fo:table-row>
									
									<fo:table-row line-height="0.19in" >
								   <fo:table-cell padding-top="0.1in" padding-left="0.1in">
									<fo:block padding-left="0.1in"  fontsize="11"  type="fragment" font="symbol" >
									<fo:inline font-family="Arial, Helvetica, sans-serif" font-weight="bold" color="black">Inheritance: </fo:inline>  <xsl:value-of select="Inheritance"/></fo:block>
								   </fo:table-cell>
									</fo:table-row>
									
									<fo:table-row line-height="0.19in" >
								   <fo:table-cell  padding-top="0.1in" padding-left="0.1in">
									<fo:block padding-left="0.1in"  fontsize="11" padding-bottom="0.1in"  type="fragment" font="symbol" >
									<fo:inline font-family="Arial, Helvetica, sans-serif" font-weight="bold" color="black">Summary: </fo:inline>  <xsl:value-of select="Summary"/></fo:block>
								   </fo:table-cell>
									</fo:table-row>
									
									
									
									</xsl:for-each>
				                   </xsl:for-each>
									
									
									</fo:table-body>
									</fo:table>
					

					   </fo:table-cell>
					   </fo:table-row>
					   <fo:table-row>
					   <fo:table-cell number-columns-spanned="2" padding-top="0.5in">
					   <fo:block padding-left="0.1in"  fontsize="11" padding-bottom="0.1in"  type="fragment" font="symbol" >Details for each disorder or trait are provided in following pages.
					   </fo:block>
					   </fo:table-cell>
					   </fo:table-row>
					  </fo:table-body>
					 </fo:table> 
					
					
					
					</fo:flow>
					
					</fo:page-sequence>
					
					
					
					
					
					
					<xsl:for-each select="DisorderPageList">
				       <xsl:for-each select="DisorderPageListItem">
					<fo:page-sequence master-reference="mainPage2">
					
					<fo:static-content flow-name="xsl-region-after">
					
					 <fo:table text-align="left" padding-bottom="0.2in">
					 <fo:table-column column-width="5.8in"/>
					 <fo:table-column column-width="1.2in"/>
					    <fo:table-body>
					<fo:table-row  >
						<fo:table-cell >
						 <fo:block font-size="8px"  >
					    <fo:inline  color="#C00000"> Name:</fo:inline> <fo:inline color="#080808">&#xA0;<xsl:value-of select="../../ReportFooter/Name"/></fo:inline> &#xA0;<fo:inline color="#C00000" >&#xA0; Age/Sex:</fo:inline><fo:inline color="#080808"><xsl:value-of select="../../BasicDetails/Age"/>/<xsl:value-of select="../../BasicDetails/Sex"/>&#xA0;</fo:inline> 
						  <fo:inline  color="#C00000" >Sample ID:&#xA0;</fo:inline><fo:inline color="#080808"><xsl:value-of select="../../ReportFooter/SampleID"/> </fo:inline>&#xA0;
						   <fo:inline  color="#C00000" > Report Date:&#xA0;</fo:inline><fo:inline color="#080808" ><xsl:value-of select="../../ReportFooter/ReportDate"/> </fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="0.1in" >
					<fo:block font-family ="Helvetica" font-size="6px" text-align="right">
						Page &#xA0;| &#xA0;<fo:page-number />
					</fo:block>
					-</fo:table-cell>
					</fo:table-row>
					 </fo:table-body>
					</fo:table>
					</fo:static-content>




					
					 <fo:flow flow-name="xsl-region-body">
                    <xsl:apply-templates select=".//DocumentElement"/>
					<fo:block id="TheSecondPage7"> </fo:block>
					
					
								   
			       <fo:table text-align="left"  width="7.2in"  >
					

					<fo:table-column column-width="0.7in" />
					<fo:table-column column-width="4.3in" />
					<fo:table-column column-width="2.0in" />
						<fo:table-body >
							<fo:table-row  >
							
							<fo:table-cell text-align="left" align="left"  font-family="Arial, Helvetica, sans-serif" padding-top="0.7in">
								<xsl:variable name="DTitleImagePath" select="DisorderTitleImagePath"></xsl:variable><fo:external-graphic  src="url({$DTitleImagePath})"  width="0.62in" height="0.7in" ></fo:external-graphic>
								
								</fo:table-cell>
								
							   <fo:table-cell  align="left" text-align="left" font-family="Arial, Helvetica, sans-serif" padding-top="0.8in">
								
								<fo:block font-size="14px"  font-family="Helvetica" color="rgb(0, 125, 191)" ><xsl:value-of select="DisorderCategory"/></fo:block>
								<fo:block font-size="17px"  font-family="Helvetica" color="red" ><xsl:value-of select="DisorderName"/></fo:block>
								</fo:table-cell>
								<fo:table-cell  padding-top="0.25in" text-align="right" >
									<fo:block><fo:external-graphic  src="D:/AnimalReport/urbanlogosmall4.jpg" width="1in" height="1in" ></fo:external-graphic></fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					
					
					
					
					  <fo:table  align="left"  width="7in" padding-top="0.15in" paddng-left="0.5in" >
					<fo:table-column column-width="0.3in" />
					<fo:table-column column-width="0.6in" />
					<fo:table-column column-width="0.9in" />
					<fo:table-column column-width="0.8in" />
					<fo:table-column column-width="1.2in" />
					<fo:table-column column-width="1.2in" />
					<fo:table-column column-width="0.7in" />
					<fo:table-column column-width="1in" />
					
						<fo:table-body >	   
								   
								    <fo:table-row line-height="0.19in"  >
									
									 <fo:table-cell  number-columns-spanned="8" text-align="right" padding-bottom="0.1in" >
									
									<fo:block font-family="Arial, Helvetica, sans-serif" font-weight="bold"  font-size="10px">
									<fo:inline  >
									<fo:block font-size="11px"  font-family="Helvetica" color="red" ><xsl:value-of select="DisorderHighlightText"/></fo:block>
									</fo:inline> </fo:block> 
								   </fo:table-cell>
								   </fo:table-row>
								   
								    <fo:table-row line-height="0.19in"  >
									
									 <fo:table-cell   >
									
									<fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">
									<fo:inline  >
									
									</fo:inline> </fo:block> 
								   </fo:table-cell>
							
								  <fo:table-cell  padding-left="0.05in" text-align="justify" align="left" padding-top="0.1in"    border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									
									<fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">
									<fo:inline  >
									Marker
									</fo:inline> </fo:block> 
								   </fo:table-cell>
								   
								   
								    <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"  border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block font-family="Arial, Helvetica, sans-serif"    font-size="10px" font-weight="bold"   >
									 <fo:inline  ><xsl:value-of select=".//DisorderSummary/Marker"/>
									 </fo:inline> 
									 </fo:block>
								   </fo:table-cell>
								   
								   
								   <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"    border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block font-family="Arial, Helvetica, sans-serif"   font-size="10px"    >
									<fo:inline> 
									GeneName 
									</fo:inline> 
									</fo:block>
								   </fo:table-cell>
								   
								   
								    <fo:table-cell text-align="justify" align="left" number-columns-spanned="2"  padding-top="0.1in" padding-left="0.05in"  border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block   font-size="10px" font-weight="bold"    >
									 <xsl:value-of select=".//DisorderSummary/GeneName"/></fo:block>
								   </fo:table-cell>
								   
								   
								   <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"    border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block   font-size="10px"    >
									<fo:inline> 
									Gene 
								</fo:inline> 
									</fo:block>
								   </fo:table-cell>
								   
								   
								    <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"  border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block  font-family="Arial, Helvetica, sans-serif"   font-size="10px" font-weight="bold"    >
									<fo:inline> 
									 <xsl:value-of select=".//DisorderSummary/Gene"/>
									 </fo:inline> 
									 </fo:block>
								   </fo:table-cell>
								   
								   
								   
								   
							</fo:table-row>
							
							
							
							<fo:table-row line-height="0.19in"  >
							 <fo:table-cell   >
									
									<fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">
									<fo:inline  >
									
									</fo:inline> </fo:block> 
								   </fo:table-cell>
							
								  <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.03in"    border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block  font-family="Arial, Helvetica, sans-serif"  font-size="10px"    >
									Category  </fo:block>
								   </fo:table-cell>
								   
								   
								    <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"  border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block font-family="Arial, Helvetica, sans-serif"    font-size="10px" font-weight="bold"   >
									 <xsl:value-of select=".//DisorderSummary/Category"/></fo:block>
								   </fo:table-cell>
								   
								   
								   <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"    border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block  font-family="Arial, Helvetica, sans-serif"  font-size="10px"    >
									Condition  </fo:block>
								   </fo:table-cell>
								   
								   
								    <fo:table-cell text-align="justify" align="left" number-columns-spanned="2"  padding-top="0.1in" padding-left="0.05in"  border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block  font-family="Arial, Helvetica, sans-serif"   font-size="10px" font-weight="bold"    >
									 <xsl:value-of select=".//DisorderSummary/ConditionName"/></fo:block>
								   </fo:table-cell>
								   
								   
								   <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"    border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block    font-family="Arial, Helvetica, sans-serif"  font-size="10px"   text-align="justify"    >
									Inheritance  </fo:block>
								   </fo:table-cell>
								   
								   
								    <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"  border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block    font-family="Arial, Helvetica, sans-serif"  font-size="10px"  font-weight="bold"    >
									 <xsl:value-of select=".//DisorderSummary/Inheritance"/></fo:block>
								   </fo:table-cell>
								   
								   
								   
								   
							</fo:table-row>
							
							
							
								<fo:table-row  >
								 <fo:table-cell   >
									
									<fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">
									<fo:inline  >
									
									</fo:inline> </fo:block> 
								   </fo:table-cell>
							
								  <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"    border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block   font-size="10px"    >
									<fo:inline> Chr#: </fo:inline>  </fo:block>
								   </fo:table-cell>
								   
								   
								    <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"  border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block font-family="Arial, Helvetica, sans-serif" font-weight="bold"   font-size="10px"    >
									<fo:inline>  <xsl:value-of select=".//DisorderSummary/ChromosomeNumber"/></fo:inline> </fo:block>
								   </fo:table-cell>
								   
								   
								   <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"    border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block   font-size="10px"    >
									<fo:inline> Genotype </fo:inline>  </fo:block>
								   </fo:table-cell>
								   
								   
								    <fo:table-cell text-align="justify" align="left"  padding-top="0.1in" padding-left="0.05in"  border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block font-family="Arial, Helvetica, sans-serif"    font-size="10px"    >
									  Reference: <fo:inline font-weight="bold"><xsl:value-of select=".//DisorderSummary/GenoType/Reference"/></fo:inline> </fo:block>
								   </fo:table-cell>
								   
								   
								    <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"    border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block    font-family="Arial, Helvetica, sans-serif"  font-size="10px"    >
									 Var Found: 
									 <fo:inline font-weight="bold"><xsl:value-of select=".//DisorderSummary/GenoType/VariantFound"/></fo:inline>  </fo:block>
								   </fo:table-cell>
								   
								   
								    <fo:table-cell text-align="justify" align="left"  padding-top="0.1in" padding-left="0.05in"  border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block    font-family="Arial, Helvetica, sans-serif"  font-size="10px"   >
									OMIA #  </fo:block>
								   </fo:table-cell>
								   
								   
								   <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"    border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block font-family="Arial, Helvetica, sans-serif"    font-size="10px" font-weight="bold"    >
									 <xsl:value-of select=".//DisorderSummary/OMIANumber"/></fo:block>
								   </fo:table-cell>
								   
								   
								    
								   
								   
								   
							</fo:table-row>
							
							
							
						</fo:table-body>
					</fo:table>
					
					
					
						
					
					 <fo:table>
					 <fo:table-column column-width="0.5in"/>
					 <fo:table-column column-width="6.5in"/>
					  <fo:table-body>
					  
					  <fo:table-row>
					    <fo:table-cell number-columns-spanned="2" padding-top="0.2in" padding-left="0.3in">
						 <fo:block font-family="Arial, Helvetica, sans-serif" color="red"  font-size="11px"><fo:inline>
						
						<xsl:value-of select=".//DisorderRedHighilghtedText"/>
						</fo:inline> </fo:block> 
						
						</fo:table-cell>
					   </fo:table-row>
					   
					   <fo:table-row>
					    <fo:table-cell number-columns-spanned="2" padding-top="0.2in" padding-left="0.3in">
						 <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px" color="rgb(33,73,156)" font-weight="bold">About the Condition</fo:block>
						</fo:table-cell>
					   </fo:table-row>
					    <fo:table-row line-height="0.2in">
						<fo:table-cell number-columns-spanned="2" padding-top="0.05in" text-align="justify" padding-left="0.3in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px"><fo:inline>
						
						<xsl:value-of select=".//AboutCondition/Text"/>
						</fo:inline> </fo:block> 
					   </fo:table-cell>
					   </fo:table-row>
					   
					   
					   
					   
					    <fo:table-row>
					    <fo:table-cell number-columns-spanned="2" padding-top="0.2in" padding-left="0.3in">
						 <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px" color="rgb(33,73,156)" font-weight="bold">Onset and Prognosis</fo:block>
						</fo:table-cell>
					   </fo:table-row>
					    <fo:table-row line-height="0.2in">
						<fo:table-cell number-columns-spanned="2" padding-top="0.05in" text-align="justify" padding-left="0.3in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px"><fo:inline>
						
						<xsl:value-of select=".//OnsetandPrognosis/Text"/>
						</fo:inline> </fo:block> 
					   </fo:table-cell>
					   </fo:table-row>
					   
					   <fo:table-row>
					    <fo:table-cell number-columns-spanned="2" padding-top="0.2in" padding-left="0.3in">
						 <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px" color="rgb(33,73,156)" font-weight="bold">Dog Breeds</fo:block>
						</fo:table-cell>
					   </fo:table-row>
					    <fo:table-row line-height="0.2in">
						<fo:table-cell number-columns-spanned="2" padding-top="0.05in" text-align="justify" padding-left="0.3in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px"><fo:inline>
						
						<xsl:value-of select=".//Breeds/Text"/>
						</fo:inline> </fo:block> 
					   </fo:table-cell>
					   </fo:table-row>
					   
					     <fo:table-row>
					    <fo:table-cell number-columns-spanned="2" padding-top="0.2in" padding-left="0.3in">
						 <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px" color="rgb(33,73,156)" font-weight="bold">Genetics and Inheritance</fo:block>
						</fo:table-cell>
					   </fo:table-row>
					    <fo:table-row line-height="0.2in">
						<fo:table-cell number-columns-spanned="2" padding-top="0.05in" text-align="justify" padding-left="0.3in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px"><fo:inline>
						
						<xsl:value-of select=".//GeneticsandInheritance/Text"/>
						</fo:inline> </fo:block> 
					   </fo:table-cell>
					   </fo:table-row> 
					   
					   
					   
					     <fo:table-row>
					    <fo:table-cell number-columns-spanned="2" padding-top="0.2in" padding-left="0.3in">
						 <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px" color="rgb(33,73,156)" font-weight="bold">Management</fo:block>
						</fo:table-cell>
					   </fo:table-row>
					    <fo:table-row line-height="0.2in">
						<fo:table-cell number-columns-spanned="2" padding-top="0.05in" text-align="justify" padding-left="0.3in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px"><fo:inline>
						
						<xsl:value-of select=".//Management/Text"/>
						</fo:inline> </fo:block> 
					   </fo:table-cell>
					   </fo:table-row> 
					   
					   
					        <fo:table-row>
					    <fo:table-cell number-columns-spanned="2" padding-top="0.2in" padding-left="0.3in">
						 <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px" color="rgb(33,73,156)" font-weight="bold">References</fo:block>
						</fo:table-cell>
					   </fo:table-row>
					   
					   <xsl:for-each select="References" >
					   <xsl:for-each select="ReferenceList" >
					   
					<xsl:for-each select="ReferenceListItem" >
					    <fo:table-row line-height="0.2in">
						<fo:table-cell number-columns-spanned="2" padding-top="0.05in" text-align="justify" padding-left="0.3in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px">
						<fo:inline font-family="Arial, Helvetica, sans-serif" ><xsl:value-of select="Numbers"/></fo:inline>
						<fo:inline padding-left="0.1in"><xsl:value-of select="Authors"/></fo:inline>
						<fo:inline  padding-left="0.1in" font-size="11px" font-weight="bold">: <xsl:value-of select="Title"/></fo:inline>
						<fo:inline padding-left="0.1in"> <xsl:value-of select="Journal"/></fo:inline>
						</fo:block> 
					   </fo:table-cell>
					   </fo:table-row> 
					   
					   
					    </xsl:for-each>
					 </xsl:for-each>
					 </xsl:for-each>
					   					
					    
					  </fo:table-body>
					 </fo:table>
					 
					 
					
					</fo:flow>
					</fo:page-sequence>
					</xsl:for-each>
					 </xsl:for-each>
					
					
					
					
					
					
					
					
					
					
					
					
					<xsl:for-each select="CarrierPageList">
				       <xsl:for-each select="CarrierPageListItem">
					<fo:page-sequence master-reference="mainPage2">
					
					<fo:static-content flow-name="xsl-region-after">
					
					 <fo:table text-align="left" padding-bottom="0.2in">
					 <fo:table-column column-width="5.8in"/>
					 <fo:table-column column-width="1.2in"/>
					    <fo:table-body>
					<fo:table-row  >
						<fo:table-cell >
						 <fo:block font-size="8px"  >
					    <fo:inline  color="#C00000"> Name:</fo:inline> <fo:inline color="#080808">&#xA0;<xsl:value-of select="../../ReportFooter/Name"/></fo:inline> &#xA0;<fo:inline color="#C00000" >&#xA0; Age/Sex:</fo:inline><fo:inline color="#080808"><xsl:value-of select="../../BasicDetails/Age"/>/<xsl:value-of select="../../BasicDetails/Sex"/>&#xA0;</fo:inline> 
						  <fo:inline  color="#C00000" >Sample ID:&#xA0;</fo:inline><fo:inline color="#080808"><xsl:value-of select="../../ReportFooter/SampleID"/> </fo:inline>&#xA0;
						   <fo:inline  color="#C00000" > Report Date:&#xA0;</fo:inline><fo:inline color="#080808" ><xsl:value-of select="../../ReportFooter/ReportDate"/> </fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="0.1in" >
					<fo:block font-family="Helvetica" font-size="6px" text-align="right">
						Page &#xA0;| &#xA0;<fo:page-number />
					</fo:block>
					-</fo:table-cell>
					</fo:table-row>
					 </fo:table-body>
					</fo:table>
					</fo:static-content>
					
					
					
					 <fo:flow flow-name="xsl-region-body">
					 
                    <xsl:apply-templates select=".//DocumentElement"/>
					<fo:block > </fo:block>
					
					
								   
			       <fo:table text-align="left"  width="7.2in"  >
					<fo:table-column column-width="0.7in" />
					<fo:table-column column-width="4.3in" />
					<fo:table-column column-width="2.0in" />
						<fo:table-body >
							<fo:table-row  >
							
							<fo:table-cell text-align="left" align="left"  font-family="Arial, Helvetica, sans-serif" padding-top="0.7in">
								<xsl:variable name="DTitleImagePath" select="CarrierTitleImagePath"></xsl:variable><fo:external-graphic  src="url({$DTitleImagePath})"  width="0.62in" height="0.7in" ></fo:external-graphic>
								
								</fo:table-cell>
								
							   <fo:table-cell  align="left" text-align="left" font-family="Arial, Helvetica, sans-serif" padding-top="0.8in">
								
								<fo:block font-size="14px"  font-family="Helvetica" color="rgb(0, 125, 191)" ><xsl:value-of select="CarrierCategory"/></fo:block>
								<fo:block font-size="17px"  font-family="Helvetica" color="rgb(0, 125, 191)" ><xsl:value-of select="CarrierName"/></fo:block>
								</fo:table-cell>
								<fo:table-cell  padding-top="0.25in" text-align="right" >
									<fo:block><fo:external-graphic  src="D:/AnimalReport/urbanlogosmall4.jpg" width="1in" height="1in" ></fo:external-graphic></fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					
					
					
					
					  <fo:table  align="left"  width="7in" padding-top="0.15in" paddng-left="0.5in" >
					<fo:table-column column-width="0.3in" />
					<fo:table-column column-width="0.6in" />
					<fo:table-column column-width="0.9in" />
					<fo:table-column column-width="0.8in" />
					<fo:table-column column-width="1.2in" />
					<fo:table-column column-width="1.2in" />
					<fo:table-column column-width="0.7in" />
					<fo:table-column column-width="1in" />
					
						<fo:table-body >	   
								   
								    <fo:table-row line-height="0.19in"  >
									
									 <fo:table-cell  number-columns-spanned="8" text-align="right" padding-bottom="0.1in" >
									
									<fo:block font-family="Arial, Helvetica, sans-serif" font-weight="bold"  font-size="10px">
									<fo:inline  >
									<fo:block font-size="11px"  font-family="Helvetica" color="rgb(0, 125, 191)" ><xsl:value-of select="CarrierHighlightText"/></fo:block>
									</fo:inline> </fo:block> 
								   </fo:table-cell>
								   </fo:table-row>
								   
								    <fo:table-row line-height="0.19in"  >
									
									 <fo:table-cell   >
									
									<fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">
									<fo:inline  >
									
									</fo:inline> </fo:block> 
								   </fo:table-cell>
							
								  <fo:table-cell  padding-left="0.05in" text-align="justify" align="left" padding-top="0.1in"    border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									
									<fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">
									<fo:inline  >
									Marker
									</fo:inline> </fo:block> 
								   </fo:table-cell>
								   
								   
								    <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"  border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block font-family="Arial, Helvetica, sans-serif"    font-size="10px" font-weight="bold"   >
									 <fo:inline  ><xsl:value-of select=".//CarrierSummary/Marker"/>
									 </fo:inline> 
									 </fo:block>
								   </fo:table-cell>
								   
								   
								   <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"    border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block font-family="Arial, Helvetica, sans-serif"   font-size="10px"    >
									<fo:inline> 
									GeneName 
									</fo:inline> 
									</fo:block>
								   </fo:table-cell>
								   
								   
								    <fo:table-cell text-align="justify" align="left" number-columns-spanned="2"  padding-top="0.1in" padding-left="0.05in"  border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block   font-size="10px" font-weight="bold"    >
									 <xsl:value-of select=".//CarrierSummary/GeneName"/></fo:block>
								   </fo:table-cell>
								   
								   
								   <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"    border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block   font-size="10px"    >
									<fo:inline> 
									Gene 
								</fo:inline> 
									</fo:block>
								   </fo:table-cell>
								   
								   
								    <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"  border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block  font-family="Arial, Helvetica, sans-serif"   font-size="10px" font-weight="bold"    >
									<fo:inline> 
									 <xsl:value-of select=".//CarrierSummary/Gene"/>
									 </fo:inline> 
									 </fo:block>
								   </fo:table-cell>
								   
								   
								   
								   
							</fo:table-row>
							
							
							
							<fo:table-row line-height="0.19in"  >
							 <fo:table-cell   >
									
									<fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">
									<fo:inline  >
									
									</fo:inline> </fo:block> 
								   </fo:table-cell>
							
								  <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.03in"    border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block  font-family="Arial, Helvetica, sans-serif"  font-size="10px"    >
									Category  </fo:block>
								   </fo:table-cell>
								   
								   
								    <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"  border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block font-family="Arial, Helvetica, sans-serif"    font-size="10px" font-weight="bold"   >
									 <xsl:value-of select=".//CarrierSummary/Category"/></fo:block>
								   </fo:table-cell>
								   
								   
								   <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"    border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block  font-family="Arial, Helvetica, sans-serif"  font-size="10px"    >
									Condition  </fo:block>
								   </fo:table-cell>
								   
								   
								    <fo:table-cell text-align="justify" align="left" number-columns-spanned="2"  padding-top="0.1in" padding-left="0.05in"  border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block  font-family="Arial, Helvetica, sans-serif"   font-size="10px" font-weight="bold"    >
									 <xsl:value-of select=".//CarrierSummary/ConditionName"/></fo:block>
								   </fo:table-cell>
								   
								   
								   <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"    border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block    font-family="Arial, Helvetica, sans-serif"  font-size="10px"   text-align="justify"    >
									Inheritance  </fo:block>
								   </fo:table-cell>
								   
								   
								    <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"  border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block    font-family="Arial, Helvetica, sans-serif"  font-size="10px"  font-weight="bold"    >
									 <xsl:value-of select=".//CarrierSummary/Inheritance"/></fo:block>
								   </fo:table-cell>
								   
								   
								   
								   
							</fo:table-row>
							
							
							
								<fo:table-row  >
								 <fo:table-cell   >
									
									<fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">
									<fo:inline  >
									
									</fo:inline> </fo:block> 
								   </fo:table-cell>
							
								  <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"    border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block   font-size="10px"    >
									<fo:inline> Chr#: </fo:inline>  </fo:block>
								   </fo:table-cell>
								   
								   
								    <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"  border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block font-family="Arial, Helvetica, sans-serif" font-weight="bold"   font-size="10px"    >
									<fo:inline>  <xsl:value-of select=".//CarrierSummary/ChromosomeNumber"/></fo:inline> </fo:block>
								   </fo:table-cell>
								   
								   
								   <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"    border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block   font-size="10px"    >
									<fo:inline> Genotype </fo:inline>  </fo:block>
								   </fo:table-cell>
								   
								   
								    <fo:table-cell text-align="justify" align="left"  padding-top="0.1in" padding-left="0.05in"  border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block font-family="Arial, Helvetica, sans-serif"    font-size="10px"    >
									  Reference: <fo:inline font-weight="bold"><xsl:value-of select=".//CarrierSummary/GenoType/Reference"/></fo:inline> </fo:block>
								   </fo:table-cell>
								   
								   
								    <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"    border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block    font-family="Arial, Helvetica, sans-serif"  font-size="10px"    >
									 VarFound: 
									 <fo:inline font-weight="bold"><xsl:value-of select=".//CarrierSummary/GenoType/VariantFound"/></fo:inline>  </fo:block>
								   </fo:table-cell>
								   
								   
								    <fo:table-cell text-align="justify" align="left"  padding-top="0.1in" padding-left="0.05in"  border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block    font-family="Arial, Helvetica, sans-serif"  font-size="10px"   >
									OMIA #  </fo:block>
								   </fo:table-cell>
								   
								   
								   <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"    border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block font-family="Arial, Helvetica, sans-serif"    font-size="10px" font-weight="bold"    >
									 <xsl:value-of select=".//CarrierSummary/OMIANumber"/></fo:block>
								   </fo:table-cell>
								   
								   
								    
								   
								   
								   
							</fo:table-row>
							
							
							
						</fo:table-body>
					</fo:table>
					
					
					
						
					
					 <fo:table>
					 <fo:table-column column-width="0.5in"/>
					 <fo:table-column column-width="6.5in"/>
					  <fo:table-body>
					  
					  <fo:table-row>
					    <fo:table-cell number-columns-spanned="2" padding-top="0.2in" padding-left="0.3in">
						 <fo:block font-family="Arial, Helvetica, sans-serif" color="red"  font-size="11px"><fo:inline>
						
						<xsl:value-of select=".//CarrierRedHighilghtedText"/>
						</fo:inline> </fo:block> 
						
						</fo:table-cell>
					   </fo:table-row>
					   
					   <fo:table-row>
					    <fo:table-cell number-columns-spanned="2" padding-top="0.2in" padding-left="0.3in">
						 <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px" color="rgb(33,73,156)" font-weight="bold">About the Condition</fo:block>
						</fo:table-cell>
					   </fo:table-row>
					    <fo:table-row line-height="0.2in">
						<fo:table-cell number-columns-spanned="2" padding-top="0.05in" text-align="justify" padding-left="0.3in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px"><fo:inline>
						
						<xsl:value-of select=".//AboutCondition/Text"/>
						</fo:inline> </fo:block> 
					   </fo:table-cell>
					   </fo:table-row>
					   
					   
					   
					   
					    <fo:table-row>
					    <fo:table-cell number-columns-spanned="2" padding-top="0.2in" padding-left="0.3in">
						 <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px" color="rgb(33,73,156)" font-weight="bold">Onset and Prognosis</fo:block>
						</fo:table-cell>
					   </fo:table-row>
					    <fo:table-row line-height="0.2in">
						<fo:table-cell number-columns-spanned="2" padding-top="0.05in" text-align="justify" padding-left="0.3in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px"><fo:inline>
						
						<xsl:value-of select=".//OnsetandPrognosis/Text"/>
						</fo:inline> </fo:block> 
					   </fo:table-cell>
					   </fo:table-row>
					   
					   <fo:table-row>
					    <fo:table-cell number-columns-spanned="2" padding-top="0.2in" padding-left="0.3in">
						 <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px" color="rgb(33,73,156)" font-weight="bold">Dog Breeds</fo:block>
						</fo:table-cell>
					   </fo:table-row>
					    <fo:table-row line-height="0.2in">
						<fo:table-cell number-columns-spanned="2" padding-top="0.05in" text-align="justify" padding-left="0.3in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px"><fo:inline>
						
						<xsl:value-of select=".//Breeds/Text"/>
						</fo:inline> </fo:block> 
					   </fo:table-cell>
					   </fo:table-row>
					   
					     <fo:table-row>
					    <fo:table-cell number-columns-spanned="2" padding-top="0.2in" padding-left="0.3in">
						 <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px" color="rgb(33,73,156)" font-weight="bold">Genetics and Inheritance</fo:block>
						</fo:table-cell>
					   </fo:table-row>
					    <fo:table-row line-height="0.2in">
						<fo:table-cell number-columns-spanned="2" padding-top="0.05in" text-align="justify" padding-left="0.3in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px"><fo:inline>
						
						<xsl:value-of select=".//GeneticsandInheritance/Text"/>
						</fo:inline> </fo:block> 
					   </fo:table-cell>
					   </fo:table-row> 
					   
					   
					   
					<!--      <fo:table-row>
					    <fo:table-cell number-columns-spanned="2" padding-top="0.2in" padding-left="0.3in">
						 <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px" color="rgb(33,73,156)" font-weight="bold">Management</fo:block>
						</fo:table-cell>
					   </fo:table-row>
					    <fo:table-row line-height="0.2in">
						<fo:table-cell number-columns-spanned="2" padding-top="0.05in" text-align="justify" padding-left="0.3in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px"><fo:inline>
						
						<xsl:value-of select=".//Management/Text"/>
						</fo:inline> </fo:block> 
					   </fo:table-cell>
					   </fo:table-row>  -->
					   
					   
					        <fo:table-row>
					    <fo:table-cell number-columns-spanned="2" padding-top="0.2in" padding-left="0.3in">
						 <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px" color="rgb(33,73,156)" font-weight="bold">References</fo:block>
						</fo:table-cell>
					   </fo:table-row>
					   
					   <xsl:for-each select="References" >
					   <xsl:for-each select="ReferenceList" >
					   
					<xsl:for-each select="ReferenceListItem" >
					    <fo:table-row line-height="0.2in">
						<fo:table-cell number-columns-spanned="2" padding-top="0.05in" text-align="justify" padding-left="0.3in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px">
						<fo:inline font-family="Arial, Helvetica, sans-serif" ><xsl:value-of select="Numbers"/></fo:inline>
						<fo:inline padding-left="0.1in"><xsl:value-of select="Authors"/></fo:inline>
						<fo:inline  padding-left="0.1in" font-size="11px" font-weight="bold">: <xsl:value-of select="Title"/></fo:inline>
						<fo:inline padding-left="0.1in"> <xsl:value-of select="Journal"/></fo:inline>
						</fo:block> 
					   </fo:table-cell>
					   </fo:table-row> 
					   
					   
					    </xsl:for-each>
					 </xsl:for-each>
					 </xsl:for-each>
					   					
					    
					  </fo:table-body>
					 </fo:table>
					 
					
					
					</fo:flow>
					
					</fo:page-sequence>
					
					</xsl:for-each>
					 </xsl:for-each>
					 
					
					<xsl:for-each select="TraitPageList">
				       <xsl:for-each select="TraitPageListItem">
					
					<fo:page-sequence master-reference="mainPage2">
					
					<fo:static-content flow-name="xsl-region-after">
					
					 <fo:table text-align="left" padding-bottom="0.2in">
					 <fo:table-column column-width="5.8in"/>
					 <fo:table-column column-width="1.2in"/>
					    <fo:table-body>
					<fo:table-row  >
						<fo:table-cell >
						 <fo:block font-size="8px"  >
					    <fo:inline  color="#C00000"> Name:</fo:inline> <fo:inline color="#080808">&#xA0;<xsl:value-of select="../../ReportFooter/Name"/></fo:inline> &#xA0;<fo:inline color="#C00000" >&#xA0; Age/Sex:</fo:inline><fo:inline color="#080808"><xsl:value-of select="../../BasicDetails/Age"/>/<xsl:value-of select="../../BasicDetails/Sex"/>&#xA0;</fo:inline> 
						  <fo:inline  color="#C00000" >Sample ID:&#xA0;</fo:inline><fo:inline color="#080808"><xsl:value-of select="../../ReportFooter/SampleID"/> </fo:inline>&#xA0;
						   <fo:inline  color="#C00000" > Report Date:&#xA0;</fo:inline><fo:inline color="#080808" ><xsl:value-of select="../../ReportFooter/ReportDate"/> </fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="0.1in" >
					<fo:block font-family="Helvetica" font-size="6px" text-align="right">
						Page &#xA0;| &#xA0;<fo:page-number />
					</fo:block>
					-</fo:table-cell>
					</fo:table-row>
					 </fo:table-body>
					</fo:table>
					</fo:static-content>



					
					 <fo:flow flow-name="xsl-region-body">
                    <xsl:apply-templates select=".//DocumentElement"/>
					<fo:block id="TheSecondPage9"> </fo:block>
					
					
								   
			       <fo:table text-align="left"  width="7.2in"  >
					
					<fo:table-column column-width="0.7in" />
					<fo:table-column column-width="4.3in" />
					<fo:table-column column-width="2.0in" />
						<fo:table-body >
							<fo:table-row  >
							
							<fo:table-cell text-align="left" align="left"  font-family="Arial, Helvetica, sans-serif" padding-top="0.7in">
								<xsl:variable name="DTitleImagePath" select="TraitTitleImagePath"></xsl:variable><fo:external-graphic  src="url({$DTitleImagePath})"  width="0.62in" height="0.7in" ></fo:external-graphic>
								
								</fo:table-cell>
								
							   <fo:table-cell  align="left" text-align="left" font-family="Arial, Helvetica, sans-serif" padding-top="0.8in">
								
								<fo:block font-size="14px"  font-family="Helvetica" color="rgb(0, 125, 191)" ><xsl:value-of select="TraitCategory"/></fo:block>
								<fo:block font-size="17px"  font-family="Helvetica" color="rgb(0, 125, 191)" ><xsl:value-of select="TraitName"/></fo:block>
								</fo:table-cell>
								<fo:table-cell  padding-top="0.25in" text-align="right" >
									<fo:block><fo:external-graphic  src="D:/AnimalReport/urbanlogosmall4.jpg" width="1in" height="1in" ></fo:external-graphic></fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					
					
					
					
					  <fo:table  align="left"  width="7in" padding-top="0.15in" paddng-left="0.5in" >
					<fo:table-column column-width="0.3in" />
					<fo:table-column column-width="0.6in" />
					<fo:table-column column-width="0.9in" />
					<fo:table-column column-width="0.8in" />
					<fo:table-column column-width="1.2in" />
					<fo:table-column column-width="1.2in" />
					<fo:table-column column-width="0.7in" />
					<fo:table-column column-width="1in" />
					
						<fo:table-body >	   
								   
								    <fo:table-row line-height="0.19in"  >
									
									 <fo:table-cell  number-columns-spanned="8" text-align="right" padding-bottom="0.1in">
									
									<fo:block font-family="Arial, Helvetica, sans-serif" font-weight="bold"  font-size="10px">
									<fo:inline  >
									<fo:block font-size="11px"  font-family="Helvetica" color="rgb(0, 125, 191)" ><xsl:value-of select="TraitHighlightText"/></fo:block>
									</fo:inline> </fo:block> 
								   </fo:table-cell>
								   </fo:table-row>
								   
								    <fo:table-row line-height="0.19in"  >
									
									 <fo:table-cell   >
									
									<fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">
									<fo:inline  >
									
									</fo:inline> </fo:block> 
								   </fo:table-cell>
							
								  <fo:table-cell  padding-left="0.05in" text-align="justify" align="left" padding-top="0.1in"    border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									
									<fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">
									<fo:inline  >
									Marker
									</fo:inline> </fo:block> 
								   </fo:table-cell>
								   
								   
								    <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"  border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block font-family="Arial, Helvetica, sans-serif"    font-size="10px" font-weight="bold"   >
									 <fo:inline  ><xsl:value-of select=".//TraitSummary/Marker"/>
									 </fo:inline> 
									 </fo:block>
								   </fo:table-cell>
								   
								   
								   <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"    border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block font-family="Arial, Helvetica, sans-serif"   font-size="10px"    >
									<fo:inline> 
									GeneName 
									</fo:inline> 
									</fo:block>
								   </fo:table-cell>
								   
								   
								    <fo:table-cell text-align="justify" align="left" number-columns-spanned="2"  padding-top="0.1in" padding-left="0.05in"  border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block   font-size="10px" font-weight="bold"    >
									 <xsl:value-of select=".//TraitSummary/GeneName"/></fo:block>
								   </fo:table-cell>
								   
								   
								   <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"    border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block   font-size="10px"    >
									<fo:inline> 
									Gene 
								</fo:inline> 
									</fo:block>
								   </fo:table-cell>
								   
								   
								    <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"  border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block  font-family="Arial, Helvetica, sans-serif"   font-size="10px" font-weight="bold"    >
									<fo:inline> 
									 <xsl:value-of select=".//TraitSummary/Gene"/>
									 </fo:inline> 
									 </fo:block>
								   </fo:table-cell>
								   
								   
								   
								   
							</fo:table-row>
							
							
							
							<fo:table-row line-height="0.19in"  >
							 <fo:table-cell   >
									
									<fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">
									<fo:inline  >
									
									</fo:inline> </fo:block> 
								   </fo:table-cell>
							
								  <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.03in"    border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block  font-family="Arial, Helvetica, sans-serif"  font-size="10px"    >
									Category  </fo:block>
								   </fo:table-cell>
								   
								   
								    <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"  border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block font-family="Arial, Helvetica, sans-serif"    font-size="10px" font-weight="bold"   >
									 <xsl:value-of select=".//TraitSummary/Category"/></fo:block>
								   </fo:table-cell>
								   
								   
								   <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"    border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block  font-family="Arial, Helvetica, sans-serif"  font-size="10px"    >
									Condition  </fo:block>
								   </fo:table-cell>
								   
								   
								    <fo:table-cell text-align="justify" align="left" number-columns-spanned="2"  padding-top="0.1in" padding-left="0.05in"  border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block  font-family="Arial, Helvetica, sans-serif"   font-size="10px" font-weight="bold"    >
									 <xsl:value-of select=".//TraitSummary/ConditionName"/></fo:block>
								   </fo:table-cell>
								   
								   
								   <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"    border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block    font-family="Arial, Helvetica, sans-serif"  font-size="10px"   text-align="justify"    >
									Inheritance  </fo:block>
								   </fo:table-cell>
								   
								   
								    <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"  border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block    font-family="Arial, Helvetica, sans-serif"  font-size="10px"  font-weight="bold"    >
									 <xsl:value-of select=".//TraitSummary/Inheritance"/></fo:block>
								   </fo:table-cell>
								   
								   
								   
								   
							</fo:table-row>
							
							
							
								<fo:table-row  >
								 <fo:table-cell   >
									
									<fo:block font-family="Arial, Helvetica, sans-serif"  font-size="10px">
									<fo:inline  >
									
									</fo:inline> </fo:block> 
								   </fo:table-cell>
							
								  <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"    border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block   font-size="10px"    >
									<fo:inline> Chr#: </fo:inline>  </fo:block>
								   </fo:table-cell>
								   
								   
								    <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"  border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block font-family="Arial, Helvetica, sans-serif" font-weight="bold"   font-size="10px"    >
									<fo:inline>  <xsl:value-of select=".//TraitSummary/ChromosomeNumber"/></fo:inline> </fo:block>
								   </fo:table-cell>
								   
								   
								   <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"    border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block   font-size="10px"    >
									<fo:inline> Genotype </fo:inline>  </fo:block>
								   </fo:table-cell>
								   
								   
								    <fo:table-cell text-align="justify" align="left"  padding-top="0.1in" padding-left="0.05in"  border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block font-family="Arial, Helvetica, sans-serif"    font-size="10px"    >
									  Reference: <fo:inline font-weight="bold"><xsl:value-of select=".//TraitSummary/GenoType/Reference"/></fo:inline> </fo:block>
								   </fo:table-cell>
								   
								   
								    <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"    border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block    font-family="Arial, Helvetica, sans-serif"  font-size="10px"    >
									 Var Found: 
									 <fo:inline font-weight="bold"><xsl:value-of select=".//TraitSummary/GenoType/VariantFound"/></fo:inline>  </fo:block>
								   </fo:table-cell>
								   
								   
								    <fo:table-cell text-align="justify" align="left"  padding-top="0.1in" padding-left="0.05in"  border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block    font-family="Arial, Helvetica, sans-serif"  font-size="10px"   >
									OMIA #  </fo:block>
								   </fo:table-cell>
								   
								   
								   <fo:table-cell text-align="justify" align="left" padding-top="0.1in" padding-left="0.05in"    border-top="0.1px solid" border-bottom="0.1px solid" border-left="0.1px solid" border-right="0.1px solid" >
									<fo:block font-family="Arial, Helvetica, sans-serif"    font-size="10px" font-weight="bold"    >
									 <xsl:value-of select=".//TraitSummary/OMIANumber"/></fo:block>
								   </fo:table-cell>
								   
								   
								    
								   
								   
								   
							</fo:table-row>
							
							
							
						</fo:table-body>
					</fo:table>
					
					
					
						
					
					 <fo:table>
					 <fo:table-column column-width="0.5in"/>
					 <fo:table-column column-width="6.5in"/>
					  <fo:table-body>
					  
					  <fo:table-row>
					    <fo:table-cell number-columns-spanned="2" padding-top="0.2in" padding-left="0.3in">
						 <fo:block font-family="Arial, Helvetica, sans-serif" color="red"  font-size="11px"><fo:inline>
						
						<xsl:value-of select=".//TraitRedHighilghtedText"/>
						</fo:inline> </fo:block> 
						
						</fo:table-cell>
					   </fo:table-row>
					   
					   <fo:table-row>
					    <fo:table-cell number-columns-spanned="2" padding-top="0.2in" padding-left="0.3in">
						 <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px" color="rgb(33,73,156)" font-weight="bold">About the Trait</fo:block>
						</fo:table-cell>
					   </fo:table-row>
					    <fo:table-row line-height="0.2in">
						<fo:table-cell number-columns-spanned="2" padding-top="0.05in" text-align="justify" padding-left="0.3in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px"><fo:inline>
						
						<xsl:value-of select=".//AboutCondition/Text"/>
						</fo:inline> </fo:block> 
					   </fo:table-cell>
					   </fo:table-row>
					   
					   
					   
					   
					  <!--   <fo:table-row>
					    <fo:table-cell number-columns-spanned="2" padding-top="0.2in" padding-left="0.3in">
						 <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px" color="rgb(33,73,156)" font-weight="bold">Onset and Prognosis</fo:block>
						</fo:table-cell>
					   </fo:table-row>
					    <fo:table-row line-height="0.2in">
						<fo:table-cell number-columns-spanned="2" padding-top="0.05in" text-align="justify" padding-left="0.3in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px"><fo:inline>
						
						<xsl:value-of select=".//OnsetandPrognosis/Text"/>
						</fo:inline> </fo:block> 
					   </fo:table-cell>
					   </fo:table-row> -->
					   
					   <fo:table-row>
					    <fo:table-cell number-columns-spanned="2" padding-top="0.2in" padding-left="0.3in">
						 <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px" color="rgb(33,73,156)" font-weight="bold">Dog Breeds</fo:block>
						</fo:table-cell>
					   </fo:table-row>
					    <fo:table-row line-height="0.2in">
						<fo:table-cell number-columns-spanned="2" padding-top="0.05in" text-align="justify" padding-left="0.3in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px"><fo:inline>
						
						<xsl:value-of select=".//Breeds/Text"/>
						</fo:inline> </fo:block> 
					   </fo:table-cell>
					   </fo:table-row>
					   
					     <fo:table-row>
					    <fo:table-cell number-columns-spanned="2" padding-top="0.2in" padding-left="0.3in">
						 <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px" color="rgb(33,73,156)" font-weight="bold">Genetics and Inheritance</fo:block>
						</fo:table-cell>
					   </fo:table-row>
					    <fo:table-row line-height="0.2in">
						<fo:table-cell number-columns-spanned="2" padding-top="0.05in" text-align="justify" padding-left="0.3in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px"><fo:inline>
						
						<xsl:value-of select=".//GeneticsandInheritance/Text"/>
						</fo:inline> </fo:block> 
					   </fo:table-cell>
					   </fo:table-row> 
					   
					   
					   
					  <!--    <fo:table-row>
					    <fo:table-cell number-columns-spanned="2" padding-top="0.2in" padding-left="0.3in">
						 <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px" color="rgb(33,73,156)" font-weight="bold">Management</fo:block>
						</fo:table-cell>
					   </fo:table-row>
					    <fo:table-row line-height="0.2in">
						<fo:table-cell number-columns-spanned="2" padding-top="0.05in" text-align="justify" padding-left="0.3in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px"><fo:inline>
						
						<xsl:value-of select=".//Management/Text"/>
						</fo:inline> </fo:block> 
					   </fo:table-cell>
					   </fo:table-row> 
					    -->
					   
					        <fo:table-row>
					    <fo:table-cell number-columns-spanned="2" padding-top="0.2in" padding-left="0.3in">
						 <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px" color="rgb(33,73,156)" font-weight="bold">References</fo:block>
						</fo:table-cell>
					   </fo:table-row>
					   
					   <xsl:for-each select="References" >
					   <xsl:for-each select="ReferenceList" >
					   
					<xsl:for-each select="ReferenceListItem" >
					    <fo:table-row line-height="0.2in">
						<fo:table-cell number-columns-spanned="2" padding-top="0.05in" text-align="justify" padding-left="0.3in">
					    <fo:block font-family="Arial, Helvetica, sans-serif"  font-size="11px">
						<fo:inline font-family="Arial, Helvetica, sans-serif" ><xsl:value-of select="Numbers"/></fo:inline>
						<fo:inline padding-left="0.1in"><xsl:value-of select="Authors"/></fo:inline>
						<fo:inline  padding-left="0.1in" font-size="11px" font-weight="bold">: <xsl:value-of select="Title"/></fo:inline>
						<fo:inline padding-left="0.1in"> <xsl:value-of select="Journal"/></fo:inline>
						</fo:block> 
					   </fo:table-cell>
					   </fo:table-row> 
					   
					   
					    </xsl:for-each>
					 </xsl:for-each>
					 </xsl:for-each>
					   					
					    
					  </fo:table-body>
					 </fo:table>
					
					 
					
					</fo:flow>
					</fo:page-sequence>
					
					 </xsl:for-each>
					 </xsl:for-each>
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					</fo:root>
			 </xsl:template>	
			
			
</xsl:stylesheet>