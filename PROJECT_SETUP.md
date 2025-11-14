# DT ArcGIS Map - Setup Instructions

Questo file contiene tutte le istruzioni per completare la struttura del progetto in locale.

## Fase 1: Clona il repository

```bash
git clone https://github.com/a-fina/dt-arcgis-map.git
cd dt-arcgis-map
```

## Fase 2: Crea la struttura Maven

```bash
mkdir -p src/main/java/com/arcgis/servlet
mkdir -p src/main/java/com/arcgis/util
mkdir -p src/main/webapp/WEB-INF
mkdir -p src/main/webapp/static/css
mkdir -p src/main/webapp/static/js
mkdir -p src/test/java/com/arcgis/servlet
mkdir -p docs
```

## Fase 3: Aggiungi i file JSP

### `src/main/webapp/WEB-INF/web.xml`
Configurazione web application con servlet e mapping

### `src/main/webapp/index.jsp`
Pagina home con link a elevation analysis

### `src/main/webapp/elevation.jsp`
Pagina principale con mappa ArcGIS e controlli di analisi

### `src/main/webapp/manifest.json`
Manifesto PWA per installazione standalone

### `src/main/webapp/service-worker.js`
Service worker per caching offline

## Fase 4: Aggiungi i file CSS e JavaScript

### `src/main/webapp/static/css/style.css`
Stili per l'applicazione

### `src/main/webapp/static/js/app.js`
Logica JavaScript per interazione con ArcGIS API

## Fase 5: Build e Deploy

### Build locale
```bash
mvn clean package
```

### Deploy con Docker
```bash
docker-compose up -d
```

L'app sarà disponibile su: `http://localhost:8080`

## Fase 6: Push su GitHub

```bash
git add .
git commit -m "Add complete source code structure"
git push origin main
```

## Tech Stack

- **Backend**: Java 11, JSP, Servlet, Maven
- **Frontend**: ArcGIS JS API 4.28, HTML5, CSS3
- **Container**: Docker, docker-compose
- **CI/CD**: GitLab CI
- **Server**: Apache Tomcat

## Note

I file delle directory `src/` devono essere aggiunti manualmente oppure pushati dal tuo ambiente locale via git.
