# IGME 480

# Current Topics in Interactive Development

### Spring 2025

# Workshop 1: Create a Simple AR Scene Using AR.js and A-Frame
[![AR.js](img/arjs.png "AR.js")](https://ar-js-org.github.io/AR.js-Docs) [![A-Frame](img/aframe.png "A-Frame")](https://aframe.io)

## Objective
We will learn how to create a basic AR experience using [AR.js](https://ar-js-org.github.io/AR.js-Docs) and [A-Frame](https://aframe.io), two web-based frameworks for building augmented reality scenes that work seamlessly on mobile devices and browsers.

## Agenda
1. Introduction to AR.js and A-Frame
2. Setting Up the Development Environment
3. Building a Simple AR Scene
4. Adding Interactivity and Custom Features
5. Testing and Troubleshooting
6. Wrap-Up and Q&A

---

>[!NOTE]
> **Workshop Prerequsites**
- Basic familiarity with HTML and JavaScript.
- A text editor (e.g., VS Code).
- A smartphone or tablet with a modern web browser (e.g., Chrome, Safari).
- Access to a web server to host files. You can use sites like [Glitch.com](https://glitch.com), [GitHub Pages](https://pages.github.com/) or your RIT student account.

---

## Step 1: Introduction to AR.js and A-Frame
- What is AR.js?<br />A lightweight JavaScript library for creating marker-based and location-based AR experiences using web technologies.
- What is A-Frame?<br />A web framework for building 3D and VR/AR experiences using HTML-like syntax.
- Why AR.js with A-Frame?<br >No app installation required; runs in a browser.<br />Compatibility<br />Simple and accessible for beginners.

## Step 2: Setting up your Development Environment
1. Install Necessary Tools: ensure that your code editor (e.g., VS Code) is ready.
2. Have your basic web server set up and ready to use (e.g. Glitch, GitHub Pages, your RIT web web account).
3. Create a project folder:
- Name it `simple-ar-scene`.
4. Add necessary files:
- Create an `index.html` file in the folder.

## Step 3: Building your AR Scene
1. Create your HTML page:
```
<!DOCTYPE html>
<html>
  <head>
    <script src="https://aframe.io/releases/1.6.0/aframe.min.js"></script>
    <script src="https://raw.githack.com/AR-js-org/AR.js/master/aframe/build/aframe-ar.js"></script>
    <title>Simple AR Scene</title>
  </head>
  <body style="margin: 0; overflow: hidden;">
    <a-scene embedded arjs vr-mode-ui="enabled: false">
      <!-- Marker -->
      <a-marker preset="hiro">
        <a-box position="0 0.5 0" color="blue"></a-box>
      </a-marker>
      <a-entity camera></a-entity>
    </a-scene>
  </body>
</html>
```

2. Explanation of code
- `a-scene embedded arjs`: Embeds an AR.js-powered scene in the browser.
- `a-marker preset="hiro"`: Uses the default ["hiro" marker](https://raw.githubusercontent.com/AR-js-org/AR.js/master/data/images/hiro.png) for tracking.
- `a-box`: A 3D object (blue box) added to the marker.

3. Save and open the file:
- Open the index.html in a browser on phone or tablet.
- Point the camera at Hiro marker (open hiro.png file on a desktop browser and point your phone or tablet's camera at the computer screen).

## Step 4: Adding Interactivity and Custom Features
1. Customizing the scene:
- Replace the box with other 3D shapes, models, or animations. Example:
```
<a-sphere position="0 0.5 0" radius="0.5" color="red"></a-sphere>
```
- Replace with a 3D model ([download this model](https://coemergencelab.com/ar/scene.zip), unzip and upload to your server; or get one from [Sketchfab](https://sketchfab.com))
```
<a-entity
          position="0 0 0"
          scale="0.05 0.05 0.05"
          rotation="0 45 0"
          gltf-model="https:/link.to/your/model.gltf"
        ></a-entity>
```

2. Adding animation:
- Example: Rotating a box.
```
<a-box position="0 0.5 0" color="#4CC3D9" rotation="0 45 0" animation="property: rotation; to: 0 360 0; loop: true; dur: 5000"></a-box>
```

3. Make the marker clickable:
- Replace all the code between the `<html>` and `<body>` tags (not including the `<title>` tag) with this:
```
  <script src="https://aframe.io/releases/1.6.0/aframe.min.js"></script>
    <!-- we use three.js to handle raycasting -->
  <script src="https://raw.githack.com/AR-js-org/AR.js/master/three.js/build/ar-threex.js"></script>
  <script src="https://raw.githack.com/AR-js-org/AR.js/master/aframe/build/aframe-ar.js"></script>
  <script>
    AFRAME.registerComponent('clicker', {
          init: function() {
              this.el.addEventListener('click', e => {
                  alert('Model clicked!');
              });
          }
      });
  </script>
  ```
- To make your model clickable we need to use a raycaster. Replace your `<a-scene>` tag with this:
```
<a-scene embedded arjs vr-mode-ui="enabled: false" raycaster cursor="rayOrigin: mouse" renderer="antialias: true; alpha: true">
```
- Replace the box with a 3D model and the added "clicker" component:
```
<a-entity
          position="0 0 0"
          scale="0.05 0.05 0.05"
          gltf-model="https:/link.to/your/model.gltf"
          clicker
        ></a-entity>
```

## Step 5: Testing and Troubleshooting
- Test on your smartphone or tablet:
- Common Issues:
    - Marker not detected: Ensure good lighting and visibility.
    - Scene not loading: Check browser compatibility (e.g. allow use of camera, etc) or console errors

## Step 6: Wrap-Up and Q&A
- Discuss potential applications of AR.js and A-Frame in arts and culture.
- Technical questions
- [AR.js Documentation](https://ar-js-org.github.io/AR.js-Docs)
- [A-Frame Documentation](https://aframe.io)
- More resources available on myCourses

## Assignment Submission
Modify the above code to make it location-based, using AR.js’s geolocation features. Explore the documentation and integrate geospatial data into your scene. For example, instead of using the Hiro marker, make the 3d box appear at a particular geographic location.

Submit all your work on myCourses (details available there).