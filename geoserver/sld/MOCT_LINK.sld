<?xml version="1.0" encoding="EUC-KR"?>
<StyledLayerDescriptor version="1.0.0"
  xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd"
  xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc"
  xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

  <NamedLayer>
    <Name>MOCT_LINK</Name>
    <UserStyle>
      <Title>A yellow line style</Title>
      <FeatureTypeStyle>
        <Rule>  
	               <MaxScaleDenominator>545000</MaxScaleDenominator>
	    		   <LineSymbolizer>
	    		       <Stroke>
	    				<CssParameter name="stroke">
	    					<ogc:Literal>#f47941</ogc:Literal>
	    				</CssParameter>
                        <CssParameter name="stroke-opacity">0.7</CssParameter>
	    				<CssParameter name="stroke-width">
	    					<ogc:Literal>1</ogc:Literal>
	    				</CssParameter>
	    			</Stroke>
	    		   </LineSymbolizer>
            </Rule>
        
        
        <Rule>
          <MaxScaleDenominator>17000</MaxScaleDenominator>
          
          <LineSymbolizer>
					<Stroke>
						<CssParameter name="stroke">
							<ogc:Literal>#f47941</ogc:Literal>
						</CssParameter>
						<CssParameter name="stroke-width">
							<ogc:Literal>7</ogc:Literal>
						</CssParameter>
					</Stroke>
				</LineSymbolizer>
        </Rule>
 <Rule>
          <MaxScaleDenominator>17000</MaxScaleDenominator>
         
          <LineSymbolizer>
					<Stroke>
						<CssParameter name="stroke">
							<ogc:Literal>#f4aa42</ogc:Literal>
						</CssParameter>
						<CssParameter name="stroke-width">
							<ogc:Literal>4</ogc:Literal>
						</CssParameter>
					</Stroke>
				</LineSymbolizer>
        </Rule>
        
        
        <!-- label -->     
			<Rule>
				<MaxScaleDenominator>9000</MaxScaleDenominator>
				<TextSymbolizer>
					<Label>
						<ogc:PropertyName>ROAD_NAME</ogc:PropertyName>
					</Label>

					<Font>
						<CssParameter name="font-family">굴림체</CssParameter>
						<CssParameter name="font-style">Normal</CssParameter>
						<CssParameter name="font-size">11</CssParameter>
						<CssParameter name="font-weight">bold</CssParameter>
					</Font>
					
					<LabelPlacement>
					  <LinePlacement>
					  </LinePlacement>
					</LabelPlacement>
					<Halo>
						<Radius>
							<ogc:Literal>2</ogc:Literal>
						</Radius>
						<Fill>
							<CssParameter name="fill">#FFFFFF</CssParameter>
							<CssParameter name="fill-opacity">0.85</CssParameter>				
						</Fill>
					</Halo>
					
					<Fill>
						<CssParameter name="fill">#000000</CssParameter>
					</Fill>
					
					<VendorOption name="group">true</VendorOption>
					
				</TextSymbolizer>
			</Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>