﻿<?xml version="1.0" encoding="EUC-KR"?>
<StyledLayerDescriptor version="1.0.0"
   xmlns="http://www.opengis.net/sld"
   xmlns:ogc="http://www.opengis.net/ogc"
   xmlns:xlink="http://www.w3.org/1999/xlink"
   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">
   <NamedLayer>
      <Name>MOCT_NODE</Name>
      <UserStyle>
         <Title>Points of interest</Title>
         <FeatureTypeStyle>
            <Rule>
               <MaxScaleDenominator>32000</MaxScaleDenominator>
               <PointSymbolizer>
                  <Graphic>
                     <Mark>
                        <WellKnownName>circle</WellKnownName>
                        <Fill>
                           <CssParameter name="fill">#FF0000</CssParameter>
                           <CssParameter name="fill-opacity">1.0</CssParameter>
                        </Fill>
                     </Mark>
                     <Size>11</Size>
                  </Graphic>
               </PointSymbolizer>
               <PointSymbolizer>
                  <Graphic>
                     <Mark>
                        <WellKnownName>circle</WellKnownName>
                        <Fill>
                           <CssParameter name="fill">#EDE513</CssParameter>
                           <CssParameter name="fill-opacity">1.0</CssParameter>
                        </Fill>
                     </Mark>
                     <Size>7</Size>
                  </Graphic>
               </PointSymbolizer>
            </Rule>
            <Rule>
               <MaxScaleDenominator>32000</MaxScaleDenominator>
               <TextSymbolizer>
                  <Label>
                     <ogc:PropertyName>NODE_NAME</ogc:PropertyName>
                  </Label>
                  <Font>
                     <CssParameter name="font-family">굴림체</CssParameter>
                     <CssParameter name="font-weight">Bold</CssParameter>
                     <CssParameter name="font-size">11</CssParameter>
                  </Font>
                  <LabelPlacement>
                     <PointPlacement>
                        <AnchorPoint>
                           <AnchorPointX>0.5</AnchorPointX>
                           <AnchorPointY>0.5</AnchorPointY>
                        </AnchorPoint>
                        <Displacement>
                           <DisplacementX>0</DisplacementX>
                           <DisplacementY>-15</DisplacementY>
                        </Displacement>
                     </PointPlacement>
                  </LabelPlacement>
                  <Halo>
                     <Radius>
                        <ogc:Literal>1</ogc:Literal>
                     </Radius>
                     <Fill>
                        <CssParameter name="fill">#f4428f</CssParameter>
                     </Fill>
                  </Halo>
                  <Fill>
                     <CssParameter name="fill">#FFFFFF</CssParameter>
                  </Fill>
               </TextSymbolizer>
            </Rule>
         </FeatureTypeStyle>
      </UserStyle>
   </NamedLayer>
</StyledLayerDescriptor>