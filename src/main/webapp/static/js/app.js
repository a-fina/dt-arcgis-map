require([
  "esri/Map",
  "esri/views/MapView",
  "esri/layers/ImageryLayer",
  "esri/widgets/Legend",
  "esri/layers/support/RasterFunction"
], function(
  Map,
  MapView,
  ImageryLayer,
  Legend,
  RasterFunction
) {
  // Initialize Map with World Imagery basemap
  const map = new Map({
    basemap: "hybrid"
  });

  // Create MapView for the map container
  const view = new MapView({
    container: "map-container",
    map: map,
    center: [-95.7129, 37.0902],
    zoom: 4,
    constraints: {
      rotationEnabled: false
    }
  });

  // Add World Elevation imagery layer
  const elevationLayer = new ImageryLayer({
    url: "https://sampleserver6.arcgisonline.com/arcgis/rest/services/WorldImagery/MapServer",
    title: "World Elevation"
  });
  map.add(elevationLayer);

  // Create and add Legend widget
  const legend = new Legend({
    view: view,
    layerInfos: [
      {
        layer: elevationLayer,
        title: "Elevation Data"
      }
    ]
  });
  view.ui.add(legend, "bottom-right");

  // Handle analysis type selection
  const analysisTypeSelect = document.getElementById("analysis-type");
  if (analysisTypeSelect) {
    analysisTypeSelect.addEventListener("change", function() {
      const analysisType = this.value;
      console.log("Analysis type changed to:", analysisType);
      // Add analysis-specific logic here
    });
  }

  // Handle transparency/opacity control
  const transparencySlider = document.getElementById("transparency-slider");
  if (transparencySlider) {
    transparencySlider.addEventListener("input", function() {
      elevationLayer.opacity = 1 - (this.value / 100);
      document.getElementById("transparency-value").textContent = this.value + "%";
    });
  }

  // Make map accessible globally for debugging
  window.appMap = map;
  window.appView = view;
  window.elevationLayer = elevationLayer;
});
