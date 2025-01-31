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

>[!IMPORTANT]
> ***You may have to change the GPS coordintes and/or API queries used in the example code below.***

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
// For testing puroposes, you may need to change these places to something closer to you
const places = [
    { name: "Rochester Abandoned Subway", latitude: 43.154722, longitude: -77.609722 },
    { name: "Washington Square Park", latitude: 43.1534, longitude: -77.6053 },
    { name: "Rochester Contemporary Art Center", latitude: 43.156619, longitude: -77.600730 }
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

4. Upload everything to your server

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

### Step 1: Modify script.js for dynamic data

1. Replace the static POIs with data fetched from OpenStreetMap's Overpass API.
```
const fetchPlacesFromOSM = async (latitude, longitude) => {
    // For testing puroposes, you may need to increase the radius and/or change the API query
    // For example, you can try "amenity"="cafe"
    const radius = 1000; // radius in meters
    const query = `
        [out:json];
        node["historic"="monument"](around:${radius},${latitude},${longitude});
        out;
    `;

    const url = `https://overpass-api.de/api/interpreter?data=${encodeURIComponent(query)}`;

    try {
        const response = await fetch(url);
        if (!response.ok) throw new Error("Failed to fetch POIs from OpenStreetMap");

        const data = await response.json();

        const places = data.elements.map(el => ({
            name: el.tags.name || "Unknown Attraction",
            latitude: el.lat,
            longitude: el.lon
        }));

        loadPlaces(places);
    } catch (error) {
        console.error("Error fetching POIs:", error);
        alert("Failed to load POIs. Please try again.");
    }
};

const loadPlaces = (places) => {
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

window.onload = () => {
    navigator.geolocation.getCurrentPosition(
        (position) => {
            const { latitude, longitude } = position.coords;
            fetchPlacesFromOSM(latitude, longitude);
        },
        (error) => {
            console.error("Geolocation error:", error);
            alert("Failed to get location. Please enable location services.");
        }
    );
};
```

2. Upload everything to your server

### Code Explanation

1. Overpass API Query:
- Queries OSM for POIs tagged as `"historic"="monument"` within a 1 km radius.
- The query is constructed dynamically based on the user's location (latitude, longitude).

2. `fetchPlacesFromOSM` Function:
- Sends a request to the Overpass API with the constructed query.
- Parses the response to extract POI names and GPS coordinates.
- try/catch block handles errors and alerts the user if the fetch fails.

3. Dynamic Loading:
- The `loadPlaces` function dynamically creates entities (`<a-entity>`) for the fetched POIs and adds them to the scene (`<a-scene>`).
- Works similarly to the static implementation but now uses dynamic data.

4. Geolocation:
- Retrieves the user's current location using Javascript's `navigator.geolocation` property.
- Passes the location to the `fetchPlacesFromOSM` function to fetch relevant POIs.

### Step 2: Testing
1. Open the app on your mobile device's browser.
2. Grant location permissions (if you haven't done so already).
3. Verify that POIs load dynamically from OpenStreetMap.

## Wrap-Up and Q&A
By the end of this workshop you should have:
- a basic idea on to build both a static and dynamic POI-based mobile AR application.
- a basic idea on how to use the OpenStreetMap Overpass API.

Next Steps:
- Add filtering options for different POI types (e.g., artworks, playgrounds).
- Cache API results for offline use.

Discussion:
- Technical questions

Resources:
- [Overpass API](https://wiki.openstreetmap.org/wiki/Overpass_API)
- [Overpass API Query Language](https://wiki.openstreetmap.org/wiki/Overpass_API/Overpass_QL)
- [Overpass API Language Guide](https://wiki.openstreetmap.org/wiki/Overpass_API/Language_Guide)
- [Overpass API by Example](https://wiki.openstreetmap.org/wiki/Overpass_API/Overpass_API_by_Example)
- [Overpass turbo](https://overpass-turbo.eu/) (to test out your API queries in the browser)
    - [Overpass turbo guide](https://wiki.openstreetmap.org/wiki/Overpass_turbo)
- More resources available on myCourses

## Assignment Submission
- Document your work and submit on myCourses (more details available there).