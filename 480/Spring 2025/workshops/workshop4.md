# IGME 480

# Current Topics in Interactive Development

### Spring 2025

# Workshop 4: Developing a Mobile Augmented Reality Points of Interest Application Using AR.js & A-Frame

## Overview

This workshop will guide participants through building a mobile AR application for Points of Interest (POIs) using AR.js and A-Frame. The workshop is structured into two parts:

1. Static POIs: Implementing static POIs directly in the code.
2. Dynamic POIs: Extending functionality to fetch POIs dynamically using OpenStreetMap's Overpass API.

---

>[!NOTE]
> **Workshop Prerequsites**
- A text editor (e.g., VS Code).
- A smartphone or tablet with a modern web browser (e.g., Chrome, Safari).
- Access to a web server to host files (i.e. Glitch.com, GitHub Pages or your RIT student account)

---

## Part 1: Static POIs

### Step 1: Setting up the Project

1. Create a new project folder and organize it as follows:
```
/project-folder
    index.html
    style.css
    script.js
```

2. Add the following code to `index.html`:
```
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AR Points of Interest</title>
    <!-- A-Frame -->
    <script src="https://aframe.io/releases/1.6.0/aframe.min.js"></script>
    <!-- Pure three.js code that the A-Frame components use for location-based AR -->
    <script src='https://raw.githack.com/AR-js-org/AR.js/3.4.5/three.js/build/ar-threex-location-only.js'></script>
    <!-- AR.js A-Frame components (recommended to use version 3.4.5, rather than master) -->
    <script src='https://raw.githack.com/AR-js-org/AR.js/3.4.5/aframe/build/aframe-ar.js'></script>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <a-scene embedded arjs>
        <a-camera gps-camera></a-camera>
    </a-scene>
    <script src="script.js"></script>
</body>
</html>
```

3. Add some basic styling in `style.css`:
```
body, html {
    margin: 0;
    padding: 0;
    width: 100%;
    height: 100%;
    overflow: hidden;
}
```

4. Create a script.js file and add the following code:
```
const places = [
    { name: "Golden Gate Bridge", latitude: 37.8199, longitude: -122.4783 },
    { name: "Alcatraz Island", latitude: 37.8267, longitude: -122.4230 },
    { name: "Coit Tower", latitude: 37.8024, longitude: -122.4058 }
];

const loadPlaces = () => {
    const scene = document.querySelector("a-scene");

    places.forEach(place => {
        const entity = document.createElement("a-entity");

        entity.setAttribute("gps-entity-place", `latitude: ${place.latitude}; longitude: ${place.longitude}`);
        entity.setAttribute("geometry", "primitive: sphere; radius: 1");
        entity.setAttribute("material", "color: blue");

        const text = document.createElement("a-text");
        text.setAttribute("value", place.name);
        text.setAttribute("align", "center");
        text.setAttribute("position", "0 2 0");
        entity.appendChild(text);

        entity.addEventListener("click", () => alert(`You clicked on: ${place.name}`));

        scene.appendChild(entity);
    });
};

window.onload = loadPlaces;
```

### Code Explanation

1. POI Array: The `places` array contains static POIs with their `name`, `latitude`, and `longitude`.

2. The `loadPlaces` function:
- Creates a 3D entity for each POI using A-Frame's `<a-entity>` tag.
- Adds attributes for GPS location, geometry (a sphere), and material (color blue).
- Appends a text label displaying the POI's name above the sphere.
- Adds a click event to display an alert with the POI's name.
- Appends the created entities to the A-Frame scene (`<a-scene>`) using `scene.appendChild(entity)`.

### Step 2: Testing

1. Upload everything to your web server.
2. Open the server URL on your mobile device's web browser and view the AR app.

---

## Part 2: Dynamic POIs Using Overpass API