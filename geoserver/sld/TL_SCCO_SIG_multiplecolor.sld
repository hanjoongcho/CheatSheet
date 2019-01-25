<?xml version="1.0" encoding="EUC-KR"?>
<StyledLayerDescriptor version="1.0.0"
  xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd"
	xmlns="http://www.opengis.net/sld"
	xmlns:ogc="http://www.opengis.net/ogc"
	xmlns:xlink="http://www.w3.org/1999/xlink"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<NamedLayer>
		<Name>TL_SCCO_SIG</Name>
		<UserStyle>
			<Title>polygon style</Title>
			<FeatureTypeStyle>
				<Rule>
					<Name>서울특별시</Name>
					<ogc:Filter>
						<ogc:And>
							<ogc:PropertyIsGreaterThanOrEqualTo>
								<ogc:PropertyName>SIG_CD</ogc:PropertyName>
								<ogc:Literal>11000</ogc:Literal>
							</ogc:PropertyIsGreaterThanOrEqualTo>
							<ogc:PropertyIsLessThan>
								<ogc:PropertyName>SIG_CD</ogc:PropertyName>
								<ogc:Literal>11999</ogc:Literal>
							</ogc:PropertyIsLessThan>
						</ogc:And>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Fill>
							<CssParameter name="fill">#00FF00</CssParameter>
							<CssParameter name="fill-opacity">0.3</CssParameter>
						</Fill>
						<Stroke>
							<CssParameter name="stroke">#FFFFFF</CssParameter>
							<CssParameter name="stroke-width">0.5</CssParameter>
						</Stroke>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>부산광역시</Name>
					<ogc:Filter>
						<ogc:And>
							<ogc:PropertyIsGreaterThanOrEqualTo>
								<ogc:PropertyName>SIG_CD</ogc:PropertyName>
								<ogc:Literal>26000</ogc:Literal>
							</ogc:PropertyIsGreaterThanOrEqualTo>
							<ogc:PropertyIsLessThan>
								<ogc:PropertyName>SIG_CD</ogc:PropertyName>
								<ogc:Literal>26999</ogc:Literal>
							</ogc:PropertyIsLessThan>
						</ogc:And>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Fill>
							<CssParameter name="fill">#000000</CssParameter>
							<CssParameter name="fill-opacity">0.3</CssParameter>
						</Fill>
						<Stroke>
							<CssParameter name="stroke">#FFFFFF</CssParameter>
							<CssParameter name="stroke-width">0.5</CssParameter>
						</Stroke>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>대구광역시</Name>
					<ogc:Filter>
						<ogc:And>
							<ogc:PropertyIsGreaterThanOrEqualTo>
								<ogc:PropertyName>SIG_CD</ogc:PropertyName>
								<ogc:Literal>27000</ogc:Literal>
							</ogc:PropertyIsGreaterThanOrEqualTo>
							<ogc:PropertyIsLessThan>
								<ogc:PropertyName>SIG_CD</ogc:PropertyName>
								<ogc:Literal>27999</ogc:Literal>
							</ogc:PropertyIsLessThan>
						</ogc:And>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Fill>
							<CssParameter name="fill">#357F00</CssParameter>
							<CssParameter name="fill-opacity">0.3</CssParameter>
						</Fill>
						<Stroke>
							<CssParameter name="stroke">#FFFFFF</CssParameter>
							<CssParameter name="stroke-width">0.5</CssParameter>
						</Stroke>
					</PolygonSymbolizer>
				</Rule>
              <Rule>
					<Name>인천광역시</Name>
					<ogc:Filter>
						<ogc:And>
							<ogc:PropertyIsGreaterThanOrEqualTo>
								<ogc:PropertyName>SIG_CD</ogc:PropertyName>
								<ogc:Literal>28000</ogc:Literal>
							</ogc:PropertyIsGreaterThanOrEqualTo>
							<ogc:PropertyIsLessThan>
								<ogc:PropertyName>SIG_CD</ogc:PropertyName>
								<ogc:Literal>28999</ogc:Literal>
							</ogc:PropertyIsLessThan>
						</ogc:And>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Fill>
							<CssParameter name="fill">#328F00</CssParameter>
							<CssParameter name="fill-opacity">0.3</CssParameter>
						</Fill>
						<Stroke>
							<CssParameter name="stroke">#FFFFFF</CssParameter>
							<CssParameter name="stroke-width">0.5</CssParameter>
						</Stroke>
					</PolygonSymbolizer>
				</Rule>
              <Rule>
					<Name>광주광역시</Name>
					<ogc:Filter>
						<ogc:And>
							<ogc:PropertyIsGreaterThanOrEqualTo>
								<ogc:PropertyName>SIG_CD</ogc:PropertyName>
								<ogc:Literal>29000</ogc:Literal>
							</ogc:PropertyIsGreaterThanOrEqualTo>
							<ogc:PropertyIsLessThan>
								<ogc:PropertyName>SIG_CD</ogc:PropertyName>
								<ogc:Literal>29999</ogc:Literal>
							</ogc:PropertyIsLessThan>
						</ogc:And>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Fill>
							<CssParameter name="fill">#F30999</CssParameter>
							<CssParameter name="fill-opacity">0.3</CssParameter>
						</Fill>
						<Stroke>
							<CssParameter name="stroke">#FFFFFF</CssParameter>
							<CssParameter name="stroke-width">0.5</CssParameter>
						</Stroke>
					</PolygonSymbolizer>
				</Rule>   
              <Rule>
					<Name>대전광역시</Name>
					<ogc:Filter>
						<ogc:And>
							<ogc:PropertyIsGreaterThanOrEqualTo>
								<ogc:PropertyName>SIG_CD</ogc:PropertyName>
								<ogc:Literal>30000</ogc:Literal>
							</ogc:PropertyIsGreaterThanOrEqualTo>
							<ogc:PropertyIsLessThan>
								<ogc:PropertyName>SIG_CD</ogc:PropertyName>
								<ogc:Literal>30999</ogc:Literal>
							</ogc:PropertyIsLessThan>
						</ogc:And>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Fill>
							<CssParameter name="fill">#F30999</CssParameter>
							<CssParameter name="fill-opacity">0.3</CssParameter>
						</Fill>
						<Stroke>
							<CssParameter name="stroke">#FFFFFF</CssParameter>
							<CssParameter name="stroke-width">0.5</CssParameter>
						</Stroke>
					</PolygonSymbolizer>
				</Rule>   
              <Rule>
					<Name>울산광역시</Name>
					<ogc:Filter>
						<ogc:And>
							<ogc:PropertyIsGreaterThanOrEqualTo>
								<ogc:PropertyName>SIG_CD</ogc:PropertyName>
								<ogc:Literal>31000</ogc:Literal>
							</ogc:PropertyIsGreaterThanOrEqualTo>
							<ogc:PropertyIsLessThan>
								<ogc:PropertyName>SIG_CD</ogc:PropertyName>
								<ogc:Literal>31999</ogc:Literal>
							</ogc:PropertyIsLessThan>
						</ogc:And>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Fill>
							<CssParameter name="fill">#0a06e2</CssParameter>
							<CssParameter name="fill-opacity">0.3</CssParameter>
						</Fill>
						<Stroke>
							<CssParameter name="stroke">#FFFFFF</CssParameter>
							<CssParameter name="stroke-width">0.5</CssParameter>
						</Stroke>
					</PolygonSymbolizer>
				</Rule>   
              <Rule>
					<Name>세종특별자치시</Name>
					<ogc:Filter>
						<ogc:And>
							<ogc:PropertyIsGreaterThanOrEqualTo>
								<ogc:PropertyName>SIG_CD</ogc:PropertyName>
								<ogc:Literal>36000</ogc:Literal>
							</ogc:PropertyIsGreaterThanOrEqualTo>
							<ogc:PropertyIsLessThan>
								<ogc:PropertyName>SIG_CD</ogc:PropertyName>
								<ogc:Literal>36999</ogc:Literal>
							</ogc:PropertyIsLessThan>
						</ogc:And>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Fill>
							<CssParameter name="fill">#F36000</CssParameter>
							<CssParameter name="fill-opacity">0.3</CssParameter>
						</Fill>
						<Stroke>
							<CssParameter name="stroke">#FFFFFF</CssParameter>
							<CssParameter name="stroke-width">0.5</CssParameter>
						</Stroke>
					</PolygonSymbolizer>
				</Rule>  
				<Rule>
					<Name>경기도</Name>
					<ogc:Filter>
						<ogc:And>
							<ogc:PropertyIsGreaterThanOrEqualTo>
								<ogc:PropertyName>SIG_CD</ogc:PropertyName>
								<ogc:Literal>41000</ogc:Literal>
							</ogc:PropertyIsGreaterThanOrEqualTo>
							<ogc:PropertyIsLessThan>
								<ogc:PropertyName>SIG_CD</ogc:PropertyName>
								<ogc:Literal>41999</ogc:Literal>
							</ogc:PropertyIsLessThan>
						</ogc:And>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Fill>
							<CssParameter name="fill">#4286f4</CssParameter>
							<CssParameter name="fill-opacity">0.3</CssParameter>
						</Fill>
						<Stroke>
							<CssParameter name="stroke">#FFFFFF</CssParameter>
							<CssParameter name="stroke-width">0.5</CssParameter>
						</Stroke>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>강원도</Name>
					<ogc:Filter>
						<ogc:And>
							<ogc:PropertyIsGreaterThanOrEqualTo>
								<ogc:PropertyName>SIG_CD</ogc:PropertyName>
								<ogc:Literal>42000</ogc:Literal>
							</ogc:PropertyIsGreaterThanOrEqualTo>
							<ogc:PropertyIsLessThan>
								<ogc:PropertyName>SIG_CD</ogc:PropertyName>
								<ogc:Literal>42999</ogc:Literal>
							</ogc:PropertyIsLessThan>
						</ogc:And>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Fill>
							<CssParameter name="fill">#f49141</CssParameter>
							<CssParameter name="fill-opacity">0.3</CssParameter>
						</Fill>
						<Stroke>
							<CssParameter name="stroke">#FFFFFF</CssParameter>
							<CssParameter name="stroke-width">0.5</CssParameter>
						</Stroke>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>충청북도</Name>
					<ogc:Filter>
						<ogc:And>
							<ogc:PropertyIsGreaterThanOrEqualTo>
								<ogc:PropertyName>SIG_CD</ogc:PropertyName>
								<ogc:Literal>43000</ogc:Literal>
							</ogc:PropertyIsGreaterThanOrEqualTo>
							<ogc:PropertyIsLessThan>
								<ogc:PropertyName>SIG_CD</ogc:PropertyName>
								<ogc:Literal>43999</ogc:Literal>
							</ogc:PropertyIsLessThan>
						</ogc:And>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Fill>
							<CssParameter name="fill">#F9FF00</CssParameter>
							<CssParameter name="fill-opacity">0.3</CssParameter>
						</Fill>
						<Stroke>
							<CssParameter name="stroke">#FFFFFF</CssParameter>
							<CssParameter name="stroke-width">0.5</CssParameter>
						</Stroke>
					</PolygonSymbolizer>
				</Rule>
              <Rule>
					<Name>충청남도</Name>
					<ogc:Filter>
						<ogc:And>
							<ogc:PropertyIsGreaterThanOrEqualTo>
								<ogc:PropertyName>SIG_CD</ogc:PropertyName>
								<ogc:Literal>44000</ogc:Literal>
							</ogc:PropertyIsGreaterThanOrEqualTo>
							<ogc:PropertyIsLessThan>
								<ogc:PropertyName>SIG_CD</ogc:PropertyName>
								<ogc:Literal>44999</ogc:Literal>
							</ogc:PropertyIsLessThan>
						</ogc:And>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Fill>
							<CssParameter name="fill">#494645</CssParameter>
							<CssParameter name="fill-opacity">0.3</CssParameter>
						</Fill>
						<Stroke>
							<CssParameter name="stroke">#FFFFFF</CssParameter>
							<CssParameter name="stroke-width">0.5</CssParameter>
						</Stroke>
					</PolygonSymbolizer>
				</Rule>  
              <Rule>
					<Name>전라북도</Name>
					<ogc:Filter>
						<ogc:And>
							<ogc:PropertyIsGreaterThanOrEqualTo>
								<ogc:PropertyName>SIG_CD</ogc:PropertyName>
								<ogc:Literal>45000</ogc:Literal>
							</ogc:PropertyIsGreaterThanOrEqualTo>
							<ogc:PropertyIsLessThan>
								<ogc:PropertyName>SIG_CD</ogc:PropertyName>
								<ogc:Literal>45999</ogc:Literal>
							</ogc:PropertyIsLessThan>
						</ogc:And>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Fill>
							<CssParameter name="fill">#F45999</CssParameter>
							<CssParameter name="fill-opacity">0.3</CssParameter>
						</Fill>
						<Stroke>
							<CssParameter name="stroke">#FFFFFF</CssParameter>
							<CssParameter name="stroke-width">0.5</CssParameter>
						</Stroke>
					</PolygonSymbolizer>
				</Rule>  
              <Rule>
					<Name>전라남도</Name>
					<ogc:Filter>
						<ogc:And>
							<ogc:PropertyIsGreaterThanOrEqualTo>
								<ogc:PropertyName>SIG_CD</ogc:PropertyName>
								<ogc:Literal>46000</ogc:Literal>
							</ogc:PropertyIsGreaterThanOrEqualTo>
							<ogc:PropertyIsLessThan>
								<ogc:PropertyName>SIG_CD</ogc:PropertyName>
								<ogc:Literal>46999</ogc:Literal>
							</ogc:PropertyIsLessThan>
						</ogc:And>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Fill>
							<CssParameter name="fill">#91e206</CssParameter>
							<CssParameter name="fill-opacity">0.3</CssParameter>
						</Fill>
						<Stroke>
							<CssParameter name="stroke">#FFFFFF</CssParameter>
							<CssParameter name="stroke-width">0.5</CssParameter>
						</Stroke>
					</PolygonSymbolizer>
				</Rule>   
              <Rule>
					<Name>경상북도</Name>
					<ogc:Filter>
						<ogc:And>
							<ogc:PropertyIsGreaterThanOrEqualTo>
								<ogc:PropertyName>SIG_CD</ogc:PropertyName>
								<ogc:Literal>47000</ogc:Literal>
							</ogc:PropertyIsGreaterThanOrEqualTo>
							<ogc:PropertyIsLessThan>
								<ogc:PropertyName>SIG_CD</ogc:PropertyName>
								<ogc:Literal>47999</ogc:Literal>
							</ogc:PropertyIsLessThan>
						</ogc:And>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Fill>
							<CssParameter name="fill">#0a06e2</CssParameter>
							<CssParameter name="fill-opacity">0.3</CssParameter>
						</Fill>
						<Stroke>
							<CssParameter name="stroke">#FFFFFF</CssParameter>
							<CssParameter name="stroke-width">0.5</CssParameter>
						</Stroke>
					</PolygonSymbolizer>
				</Rule>    
              <Rule>
					<Name>경상남도</Name>
					<ogc:Filter>
						<ogc:And>
							<ogc:PropertyIsGreaterThanOrEqualTo>
								<ogc:PropertyName>SIG_CD</ogc:PropertyName>
								<ogc:Literal>48000</ogc:Literal>
							</ogc:PropertyIsGreaterThanOrEqualTo>
							<ogc:PropertyIsLessThan>
								<ogc:PropertyName>SIG_CD</ogc:PropertyName>
								<ogc:Literal>48999</ogc:Literal>
							</ogc:PropertyIsLessThan>
						</ogc:And>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Fill>
							<CssParameter name="fill">#06e2de</CssParameter>
							<CssParameter name="fill-opacity">0.3</CssParameter>
						</Fill>
						<Stroke>
							<CssParameter name="stroke">#FFFFFF</CssParameter>
							<CssParameter name="stroke-width">0.5</CssParameter>
						</Stroke>
					</PolygonSymbolizer>
				</Rule>  
              <Rule>
					<Name>제주특별자치도</Name>
					<ogc:Filter>
						<ogc:And>
							<ogc:PropertyIsGreaterThanOrEqualTo>
								<ogc:PropertyName>SIG_CD</ogc:PropertyName>
								<ogc:Literal>50000</ogc:Literal>
							</ogc:PropertyIsGreaterThanOrEqualTo>
							<ogc:PropertyIsLessThan>
								<ogc:PropertyName>SIG_CD</ogc:PropertyName>
								<ogc:Literal>50999</ogc:Literal>
							</ogc:PropertyIsLessThan>
						</ogc:And>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Fill>
							<CssParameter name="fill">#F50999</CssParameter>
							<CssParameter name="fill-opacity">0.3</CssParameter>
						</Fill>
						<Stroke>
							<CssParameter name="stroke">#FFFFFF</CssParameter>
							<CssParameter name="stroke-width">0.5</CssParameter>
						</Stroke>
					</PolygonSymbolizer>
				</Rule>  
				<Rule>
					<MaxScaleDenominator>16000000</MaxScaleDenominator>
					<TextSymbolizer>
						<Label>
							<ogc:Function name="Concatenate">
								<ogc:PropertyName>SIG_KOR_NM</ogc:PropertyName>
								<ogc:Literal>
									<![CDATA[
]]>
								</ogc:Literal>
								<ogc:PropertyName>SIG_ENG_NM</ogc:PropertyName>
							</ogc:Function>
						</Label>
						<Font>
							<CssParameter name="font-family">굴림체</CssParameter>
							<CssParameter name="font-size">13</CssParameter>
							<CssParameter name="font-style">normal</CssParameter>
                            <CssParameter name="font-weight">bold</CssParameter>
						</Font>
						<LabelPlacement>
							<PointPlacement>
								<AnchorPoint>
									<AnchorPointX>0.5</AnchorPointX>
									<AnchorPointY>0.0</AnchorPointY>
								</AnchorPoint>
								<Displacement>
									<DisplacementX>0</DisplacementX>
									<DisplacementY>5</DisplacementY>
								</Displacement>
							</PointPlacement>
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
					</TextSymbolizer>
				</Rule>
			</FeatureTypeStyle>
		</UserStyle>
	</NamedLayer>
</StyledLayerDescriptor>