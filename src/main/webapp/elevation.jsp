<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Elevation Analysis - ArcGIS Map</title>
    <link rel="stylesheet" href="https://js.arcgis.com/4.28/esri/themes/light/main.css">
    <link rel="stylesheet" href="static/css/style.css">
</head>
<body>
    <div id="mapView" class="map-container"></div>
    <div class="control-panel">
        <h2>Analisi Elevazione</h2>
        <label>Tipo di Analisi:</label>
        <select id="analysisType">
            <option value="elevation">Elevazione (m.a.s.l)</option>
            <option value="slope">Pendenza (Slope)</option>
            <option value="aspect">Aspetto (Aspect)</option>
        </select>
        <hr>
        <label>Trasparenza Layer:</label>
        <input type="range" id="transparency" min="0" max="1" step="0.1" value="0.7">
    </div>
    <script src="https://js.arcgis.com/4.28/"></script>
    <script src="static/js/app.js"></script>
</body>
</html>
