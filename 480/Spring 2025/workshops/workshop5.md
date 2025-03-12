# IGME 480

# Current Topics in Interactive Development

### Spring 2025

# Workshop 5: UI and Custom Events in AR.js and A-Frame

## Overview

This workshop will guide participants in creating interactive AR applications using AR.js and A-Frame, focusing on handling user interactions through UI elements and custom events.

---

>[!NOTE]
> **Workshop Prerequsites**
- Basic familiarity with AR.js & A-Frame (& HTML, CSS & JS).
- A text editor (e.g., VS Code).
- A smartphone or tablet with a modern web browser (e.g., Chrome, Safari).
- Access to a web server to host files. You can use sites like [Glitch.com](https://glitch.com), [GitHub Pages](https://pages.github.com/) or your RIT student account.

---

## Agenda
1. Handling Clicks & Detecting Intersections with AR Content
2. Interacting with Overlayed DOM Elements
3. Custom Events
4. Hands-On Exercise
5. Wrap-Up and Q&A

---

## Part 1: Handling Clicks & Detecting Intersections with AR Content
First create a basic AR scene:

```
<!DOCTYPE html>
<html>
  <head>
    <script src="https://aframe.io/releases/1.4.0/aframe.min.js"></script>
    <script src='https://raw.githack.com/AR-js-org/AR.js/3.4.5/aframe/build/aframe-ar.js'></script>
    <title>Simple AR Scene</title>
  </head>
  <body style="margin: 0; overflow: hidden;">
    <a-scene embedded arjs>
      <a-marker preset="hiro">
        <!-- AR content goes here -->
      </a-marker>
      <a-entity camera></a-entity>
    </a-scene>
  </body>

</html>
```
**Enable Raycasting:**
To handle clicks/touches on AR content you need to enable raycasting. You can do this for the whole scene or a particular entity/object:

```
<a-scene embedded arjs vr-mode-ui="enabled: false" raycaster cursor="rayOrigin: mouse" renderer="antialias: true; alpha: true">
```

OR

```
<a-entity camera>
<a-entity cursor="rayOrigin: mouse"></a-entity>
</a-entity>
```

Another thing you can do is add a cursor to your camera that uses a raycaster to detect intersections with objects. For instance, you can tag interactive objects with a class (e.g., "clickable") and set up your camera as follows:
```
<a-scene embedded arjs>
  <!-- Define the camera with a cursor that uses the entity as the ray's origin -->
  <a-entity camera>
    <a-entity
      geometry="primitive: ring; radiusInner: 0.02; radiusOuter: 0.03"
      material="color: black; shader: flat"
      cursor="rayOrigin: entity" 
      position="0 0 -1"
      raycaster="objects: .clickable">
    </a-entity>
  </a-entity>

  <!-- A sample interactive object -->
  <a-box class="clickable" position="0 0 -3" color="red"></a-box>
</a-scene>
```


You can also add event listeners to AR entities:
```
<a-box position='0 0.5 0' color='red' class='clickable'></a-box>

document.querySelector('.clickable').addEventListener('click', function () {
alert('Box clicked!');
});

```

You can also use `AFRAME.registerComponent` to handle click events (and other events) in a more modular and reusable way. This approach allows you to encapsulate behavior into components that you can easily attach to any entity in your scene:
```
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Custom Component Example</title>
    <script src="https://aframe.io/releases/1.4.0/aframe.min.js"></script>
    <script src='https://raw.githack.com/AR-js-org/AR.js/3.4.5/aframe/build/aframe-ar.js'></script>
  </head>
  <body style="margin: 0; overflow: hidden;">
    <a-scene embedded arjs vr-mode-ui="enabled: false">
      <a-entity camera>
        <a-entity cursor="fuse: true; rayOrigin: mouse"></a-entity>
      </a-entity>
      <!-- Interactive object with our custom component -->
      <a-box position="0 1 -3" color="#4CC3D9" click-listener></a-box>
    </a-scene>

    <script>
      // Register a custom component to handle click events
      AFRAME.registerComponent('click-listener', {
        init: function () {
          // Store a reference to the element
          var el = this.el;

          // Add a click event listener to the element
          el.addEventListener('click', function (evt) {
            console.log('Element clicked:', el);
            // For demonstration: Toggle the color of the element
            var currentColor = el.getAttribute('color');
            el.setAttribute('color', currentColor === '#4CC3D9' ? '#EF2D5E' : '#4CC3D9');
          });

          // You can also add listeners for other events, for example:
          el.addEventListener('mouseenter', function (evt) {
            console.log('Mouse entered:', el);
          });
          el.addEventListener('mouseleave', function (evt) {
            console.log('Mouse left:', el);
          });
        }
      });
    </script>
  </body>
</html>
```
**Explanation:**
- Component Registration:
We register a component named `click-listener` using `AFRAME.registerComponent`. Inside the `init` method, we add event listeners directly to the element (`this.el`).
- Event Listeners:
  - Click: When the element is clicked, a function toggles its color and logs the event to the console.
  - Mouseenter/Mouseleave: Additional listeners demonstrate how to handle other types of events, which can be expanded further as needed.
- Usage:
Attach the component to any A-Frame entity simply by adding `click-listener` as an attribute in your HTML, as shown on the `<a-box>` element.

Using custom components in this way helps keep your code modular and makes it easier to manage event handling across different parts of your AR experience.

---

Here is an example that demonstrates how to register a custom A-Frame component using `AFRAME.registerComponent` to handle two types of events: one triggered when a marker is found and another when a `gps-entity-place` updates its position. You can attach this component to any entity that you would like to respond to these events:
```
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Custom Component with MarkerFound and GPS Update</title>
    <script src="https://aframe.io/releases/1.4.0/aframe.min.js"></script>
    <script src='https://raw.githack.com/AR-js-org/AR.js/3.4.5/aframe/build/aframe-ar.js'></script>
  </head>
  <body style="margin: 0; overflow: hidden;">
    <a-scene embedded arjs>
      <!-- Marker element with custom component -->
      <a-marker preset="hiro" custom-listener>
        <a-box position="0 0 0" color="#4CC3D9"></a-box>
      </a-marker>
      
      <!-- Example GPS entity using gps-entity-place -->
      <a-entity 
        gps-entity-place="latitude: 40.748817; longitude: -73.985428" 
        custom-listener>
        <a-sphere radius="1" color="blue"></a-sphere>
      </a-entity>
      
      <a-entity camera></a-entity>
    </a-scene>

    <script>
      // Register a custom component to handle events
      AFRAME.registerComponent('custom-listener', {
        init: function () {
          var el = this.el;
          
          // Listen for the markerFound event (from AR.js)
          el.addEventListener('markerFound', function () {
            concole.log('Marker found on element', el);
            // For demonstration: Toggle the element's color
            var currentColor = el.getAttribute('color');
            el.setAttribute('color', currentColor === '#4CC3D9' ? '#EF2D5E' : '#4CC3D9');
          });

          // Listen for the gps-entity-place update event
          // (This event is fired when the entity's position is updated based on GPS data)
          el.addEventListener('gps-entity-place-update-position', function (evt) {
            alert('GPS entity updated position: ' + evt.detail);
            // You could update the UI or trigger additional actions based on the new position
          });
        }
      });
    </script>
  </body>
</html>
```
**Explanation:**
- Custom Component (`custom-listener`):
  - Marker Found:
  The component listens for the `markerFound` event. When a marker is detected (for example, the Hiro marker), the event listener toggles the color of the element and logs a message.
  - GPS Entity Update:
  Similarly, the component listens for the `gps-entity-place-update-position` event. When the GPS data updates (which happens as the user moves or when the entity's position is recalculated), the event details (e.g., new coordinates) are logged. You could use this event to trigger further UI updates or other actions.
- Usage:
The custom-listener component is attached to both a marker-based entity (within an `<a-marker>`) and a GPS-based entity (using `gps-entity-place`). This demonstrates how the same component can manage different event types depending on the context.

This approach helps keep your code modular and reusable across various AR scenarios, whether you are working with marker-based AR, GPS-based locative experiences, or other custom events.


## Part 2: Interacting with Overlayed DOM Elements

Add Overlayed DOM Elements:
```
  <div class="buttons">
    <button class="say-hi-button">Say Hi</button>
  </div>
```
Style the overlay:
```
  .buttons {
    position: absolute;
    bottom: 10px;
    left: 50%;
    transform: translateX(-50%);
    z-index: 10;
  }
```

Handle button clicks
```
  document.querySelector('.say-hi-button').addEventListener('click', function () {
    alert('Hi there!');
  });
```
[Reference: AR.js Documentation on UI and Events](https://ar-js-org.github.io/AR.js-Docs/ui-events/)

## Part 3: Custom Events

Listen for Marker Detection:
```
  document.querySelector('a-marker').addEventListener('markerFound', function () {
    console.log('Marker found!');
  });
```

Listen for Marker Loss:
```
  document.querySelector('a-marker').addEventListener('markerLost', function () {
    console.log('Marker lost!');
  });

```
[Reference: AR.js Documentation on Custom Events](https://ar-js-org.github.io/AR.js-Docs/ui-events/#custom-events)

## Part 4: Hands-On Exercise

Objective:
Develop a simple AR application where users interact with a 3D object. In this exercise, a 3D object plays a sound (or video) when clicked.

**Step 1: Create your HTML page:**
```
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <title>Interactive AR Exercise</title>
    <script src="https://aframe.io/releases/1.4.0/aframe.min.js"></script>
    <script src='https://raw.githack.com/AR-js-org/AR.js/3.4.5/aframe/build/aframe-ar.js'></script
  </head>
  <body style="margin: 0; overflow: hidden;">
    <a-scene embedded arjs raycaster vr-mode-ui="enabled: false" renderer="logarithmicDepthBuffer: true;">
      <a-assets>
        <!-- Audio element for playing sound -->
        <audio id="myAudio" src="https://coemergencelab.com/ar/Eno_The_Secret_Place.mp3" type="audio/mpeg" preload="auto" loop="true" crossorigin="anonymous"></audio>
        <!-- Alternatively, you can add a video element if you prefer -->
        <!-- <video id="myVideo" src="https://coemergencelab.com/ar/bigbuckbunny.mp4" type="video/mp4" preload="auto" loop="true" crossorigin="anonymous" style="display:none;"></video> -->
      </a-assets>
      <!-- Marker that triggers AR content -->
      <a-marker preset="hiro">
        <!-- 3D object for playing media (sound/video) -->
        <a-entity id="mediaSphere" position="0 -1 0" geometry="primitive: sphere; radius: 0.5" material="color: blue" class="clickable" sound="src: #myAudio; on: click"></a-entity>

        <!-- 
        optional video
        <a-entity id="mediaSphere" position="0 -1 0" geometry="primitive: sphere; radius: 0.5" material="color: red" class="clickable">
          <a-video class="clickable" src="#myVideo" width="16" height="9" position="0 0 -2"></a-video>
        </a-entity>
        -->

      </a-marker>
      <!-- camera with raycaster -->
      <a-entity camera>
        <a-entity cursor="fuse: false; rayOrigin: mouse" raycaster="objects: .clickable"></a-entity>
      </a-entity>
    </a-scene>
    
    
    <script>
      // Play audio when the sphere is clicked
      document.querySelector('#mediaSphere').addEventListener('click', function () {
        let audioElement = document.querySelector('#myAudio');
        if (audioElement.paused) {
          audioElement.play();
        } else {
          audioElement.pause();
        }
      });

      /* For playing video instead, you could do:
      document.querySelector('#mediaSphere').addEventListener('click', function () {
        let videoElement = document.querySelector('#myVideo');
        if (videoElement.paused) {
          videoElement.style.display = "block"; // Show video element
          videoElement.play();
        } else {
          videoElement.pause();
          videoElement.style.display = "none"; // Hide video element after pausing
        }
      });
      */
    </script>
  </body>
</html>
```
[Reference: A-Frame Documentation on Sound](https://aframe.io/docs/1.7.0/components/sound.html)

[Reference: A-Frame Documentation on Video](https://aframe.io/docs/1.7.0/primitives/a-video.html)


**Step 2: Testing and Debugging**
- Run Your Project:
Open your HTML file in a mobile browser
Use a smartphone to view the AR scene. Point your camera at a Hiro marker ([download one from AR.js GitHub](https://raw.githubusercontent.com/AR-js-org/AR.js/master/data/images/hiro.png)).
- Verify Interactivity:
  - Media Playback: Tap the sphere to start and pause the audio (or video if you choose that option).

**Step 3: Discussion and Reflection**
- Customization:
  - Experiment with different shapes, positions, and colors.
- Extension Ideas:
  - Add more complex UI interactions or multiple custom events (e.g., combine color changes and media playback on a single object).
- Debugging Tips:
  - Use browser developer tools to check for JavaScript errors and ensure that elements are correctly referenced.