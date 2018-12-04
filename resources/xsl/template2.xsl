<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">

    <xsl:template match="content2">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="main"
                                       page-height="29.7cm"
                                       page-width="21cm"
                                       font-family="sans-serif"
                                       margin-top="8cm"
                                       margin-bottom="8cm"
                                       margin-left="2cm"
                                       margin-right="2cm">
                    <fo:region-body margin-top="2.8cm" margin-bottom="2cm"/>
                    <fo:region-before extent="1.5cm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="main">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block font-size="10pt">
                        <fo:table table-layout="fixed" width="100%" border-collapse="separate">
                                <fo:table-column column-width="4cm"/>
                                <fo:table-column column-width="4cm"/>
                                <fo:table-column column-width="5cm"/>
                                <fo:table-column column-width="5cm"/>
                            <fo:table-body>
                                <xsl:apply-templates select="address"/>
                            </fo:table-body>
                        </fo:table>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>

    <xsl:template match="address">
        <fo:table-row>
            <fo:table-cell>
                <fo:block>
                    <xsl:value-of select="name"/>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell>
                <fo:block>
                    <xsl:value-of select="city"/>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell>
                <fo:block>
                    <xsl:value-of select="street"/>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell>
                <fo:block>
                    <xsl:value-of select="number"/>
                </fo:block>
            </fo:table-cell>
        </fo:table-row>
    </xsl:template>

</xsl:stylesheet>