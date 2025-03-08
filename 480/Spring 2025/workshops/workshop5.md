# IGME 480

# Current Topics in Interactive Development

### Spring 2025

# Workshop 5: UI and Custom Events in AR.js and A-Frame

## Overview

This workshop will guide participants in creatin interactive AR applications using AR.js and A-Frame, focusing on handling user interactions through UI elements and custom events.

---

>[!NOTE]
> **Workshop Prerequsites**
- A text editor (e.g., VS Code).
- A smartphone or tablet with a modern web browser (e.g., Chrome, Safari).
- Access to a web server to host files (i.e. Glitch.com, GitHub Pages or your RIT student account)

---

## Agenda
1. Handling Clicks & Detecting Intersections with AR Content
2. Interacting with Overlayed DOM Elements
3. Hands-On Exercises
4. Wrap-Up and Q&A

---

>[!NOTE]
> **Workshop Prerequsites**
- Basic familiarity with AR.js & A-Frame (& HTML, CSS & JS).
- A text editor (e.g., VS Code).
- A smartphone or tablet with a modern web browser (e.g., Chrome, Safari).
- Access to a web server to host files. You can use sites like [Glitch.com](https://glitch.com), [GitHub Pages](https://pages.github.com/) or your RIT student account.

---


## Part 1: Handling Clicks & Detecting Intersections with AR Content
To handle clicks/touches on AR content you need to enable raycasting. You can do this for the whole scence or a particualr entity/object:

```
<a-scene embedded arjs vr-mode-ui="enabled: false" raycaster cursor="rayOrigin: mouse" renderer="antialias: true; alpha: true">
```

```
<a-entity camera>
<a-entity cursor="rayOrigin: mouse"></a-entity>
</a-entity>
```

You can also add event listeners to AR entities:
```
<a-box position='0 0.5 0' color='red' class='clickable'></a-box>

document.querySelector('.clickable').addEventListener('click', function () {
alert('Box clicked!');
});

```

You can also use AFRAME.registerComponent to handle click events (and other events) in a more modular and reusable way. This approach allows you to encapsulate behavior into components that you can easily attach to any entity in your scene:
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
    <a-scene>
      <!-- Camera with default cursor for desktop interaction -->
      <a-entity camera look-controls>
        <a-entity cursor="fuse: false; rayOrigin: mouse"></a-entity>
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