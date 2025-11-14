<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="theme-color" content="#2d7dcc">
    <link rel="manifest" href="manifest.json">
    <title>DT ArcGIS Map - PWA</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif; background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); min-height: 100vh; display: flex; align-items: center; justify-content: center; }
        .container { text-align: center; background: white; padding: 3rem; border-radius: 10px; box-shadow: 0 20px 60px rgba(0,0,0,0.3); }
        h1 { color: #333; margin-bottom: 1rem; }
        p { color: #666; margin-bottom: 2rem; font-size: 1.1rem; }
        .btn { display: inline-block; padding: 1rem 2rem; background: #667eea; color: white; text-decoration: none; border-radius: 5px; transition: background 0.3s; }
        .btn:hover { background: #764ba2; }
    </style>
</head>
<body>
    <div class="container">
        <h1>🗺️ DT ArcGIS Map</h1>
        <p>Progressive Web App for GIS Elevation Analysis with ArcGIS JavaScript API</p>
        <a href="elevation.jsp" class="btn">Launch Elevation Analysis →</a>
    </div>
    <script>
        if ('serviceWorker' in navigator) {
            navigator.serviceWorker.register('/service-worker.js').then(reg => {
                console.log('Service Worker registered');
            }).catch(err => console.log('SW registration failed:', err));
        }
    </script>
</body>
</html>
