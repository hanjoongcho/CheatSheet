<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor 
   xmlns="http://www.opengis.net/sld"
   xmlns:ogc="http://www.opengis.net/ogc" 
   xmlns:xlink="http://www.w3.org/1999/xlink" 
   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
   version="1.0.0"
   xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd">
  <NamedLayer>
    <Name>Heatmap</Name>
    <UserStyle>
      <Title>Heatmap</Title>
      <Abstract>Node Heatmap</Abstract>
      <FeatureTypeStyle>
        <Transformation>
          <ogc:Function name="vec:Heatmap">
            <ogc:Function name="parameter">
              <ogc:Literal>data</ogc:Literal>
            </ogc:Function>
            <ogc:Function name="parameter">
              <ogc:Literal>radiusPixels</ogc:Literal>
              <ogc:Function name="env">
                <ogc:Literal>radius</ogc:Literal>
                <ogc:Literal>20</ogc:Literal>
              </ogc:Function>
            </ogc:Function>
            <ogc:Function name="parameter">
              <ogc:Literal>pixelsPerCell</ogc:Literal>
              <ogc:Literal>1</ogc:Literal>
            </ogc:Function>
            <ogc:Function name="parameter">
              <ogc:Literal>outputBBOX</ogc:Literal>
              <ogc:Function name="env">
                <ogc:Literal>wms_bbox</ogc:Literal>
              </ogc:Function>
            </ogc:Function>
            <ogc:Function name="parameter">
              <ogc:Literal>outputWidth</ogc:Literal>
              <ogc:Function name="env">
                <ogc:Literal>wms_width</ogc:Literal>
              </ogc:Function>
            </ogc:Function>
            <ogc:Function name="parameter">
              <ogc:Literal>outputHeight</ogc:Literal>
              <ogc:Function name="env">
                <ogc:Literal>wms_height</ogc:Literal>
              </ogc:Function>
            </ogc:Function>
          </ogc:Function>
        </Transformation>
        <Rule>
          <RasterSymbolizer>
            <!-- specify geometry attribute to pass validation -->
            <Opacity>0.6</Opacity>
            <ColorMap type="ramp">
              <ColorMapEntry color="#FFFFFF" quantity="0" opacity="0.1" label="N/A"/>
              <ColorMapEntry color="#0000FF" quantity=".1" label="L"/>
              <ColorMapEntry color="#f4b342" quantity=".6" label="M"/>
              <ColorMapEntry color="#FF0000" quantity="1.0" label="H"/>
            </ColorMap>
          </RasterSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
