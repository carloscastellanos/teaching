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

### Step 1: Setting Up the Project

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
    <!-- AR.js A-Frame components -->
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