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

## Building your AR Scene
1. Create your HTML page:
`
<!DOCTYPE html>
<html>
  <head>
    <script src="https://aframe.io/releases/1.6.0/aframe.min.js"></script>
    <script src="https://raw.githack.com/AR-js-org/AR.js/master/aframe/build/aframe-ar.js"></script>
    <title>Simple AR Scene</title>
  </head>
  <body style="margin: 0; overflow: hidden;">
    <a-scene embedded arjs>
      <!-- Marker -->
      <a-marker preset="hiro">
        <a-box position="0 0.5 0" color="blue"></a-box>
      </a-marker>
      <a-entity camera></a-entity>
    </a-scene>
  </body>
</html>
`
2.Explnation of code