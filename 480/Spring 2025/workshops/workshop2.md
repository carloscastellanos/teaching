# IGME 480

# Current Topics in Interactive Development

### Spring 2025

# Workshop 2: Natural Feature Tracking (NFT)
[![AR.js](img/arjs.png "AR.js")](https://ar-js-org.github.io/AR.js-Docs) [![A-Frame](img/aframe.png "A-Frame")](https://aframe.io)

## Objective
We will create an AR experience with  using [AR.js](https://ar-js-org.github.io/AR.js-Docs) and [A-Frame](https://aframe.io), where a 3D animation is triggered by detecting a specific brand logo (like the Starbucks logo). To do this we will use [Image Tracking](https://ar-js-org.github.io/AR.js-Docs/image-tracking/), or more specifically, Natural Feature Tracking (NFT) to identify the specific logo. Natural Feature Tracking or NFT is a technology that enables the use of images instead of markers like QR Codes or the Hiro marker.

Below is a step-by-step explanation and the corresponding code.

---

>[!NOTE]
> **Workshop Prerequsites**
- Basic familiarity with HTML and JavaScript.
- A text editor (e.g., VS Code).
- A smartphone or tablet with a modern web browser (e.g., Chrome, Safari).
- Access to a web server to host files. You can use sites like [Glitch.com](https://glitch.com), [GitHub Pages](https://pages.github.com/) or your RIT student account.

---

## Key Steps
1. Generate the NFT Marker:
- To do this, you will use the [NFT Marker Generator](https://carnaux.github.io/NFT-Marker-Creator/).
- Use the AR.js marker generator tools to convert the [Starbucks logo](https://upload.wikimedia.org/wikipedia/en/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/2022px-Starbucks_Corporation_Logo_2011.svg.png) into a NFT marker files (.fset, .fset3, .iset). Feel free to use any logo you like.
- This part may take a while, just be patient.
2. Host the marker files and assets:
- Ensure the marker files are hosted on a web server or accessible via a relative/absolute URL.
- The url to the marker files should point to folder containing the marker files thmeselves.
- Host the 3D model (GLTF/GLB) and other assets needed for the animation. (You can use any 3d animated model you like or simply use the one already linked in the code below)
3. Code the Implmentation:
- Use AR.js in and A-Frame to link the NFT marker to the 3D model.
>[!NOTE]
> This example uses 3rd party library called [A-Frame extras](https://github.com/c-frame/aframe-extras) to handle the 3d animation.

```
<!DOCTYPE html>
<html>
  <head>
    <title>AR.js - NFT Logo Detection</title>
    <!-- import aframe and then ar.js with image tracking / location based features -->
    <!-- then import aframe-extras -->
    <script src="https://aframe.io/releases/1.4.1/aframe.min.js"></script>
    <script src="https://raw.githack.com/AR-js-org/AR.js/master/aframe/build/aframe-ar-nft.js"></script>
    <script src="https://cdn.jsdelivr.net/gh/c-frame/aframe-extras@7.5.2/dist/aframe-extras.min.js"></script>
  </head>
  <body style="margin: 0; overflow: hidden;">
    <a-scene embedded arjs="sourceType: webcam; debugUIEnabled: false; trackingMethod: best;" renderer="logarithmicDepthBuffer: true;" vr-mode-ui="enabled: false;">
      <!-- NFT Marker Setup -->
      <a-nft 
        type="nft" 
        url="https://coemergencelab.com/ar/imagetrack-animation/nft/starbucks/starbucks-image/starbucks"
        smooth="true" 
        smoothCount="10" 
        smoothTolerance="0.01" 
        smoothThreshold="5">
        
        <!-- 3D Animation -->
        <a-entity 
          gltf-model="https://coemergencelab.com/ar/imagetrack-animation/tiger.glb"
          scale="150 150 150" 
          position="100 0 0"
          animation-mixer="clip: *;">
        </a-entity>
      </a-nft>
      
      <!-- Camera -->
      <a-entity camera></a-entity>
    </a-scene>
  </body>
</html>
```

## Code Explanation:
1. A-Frame & AR.js:
- The `<a-scene>` tag initializes the AR scene.
- `a-scene embedded arjs`: Embeds an AR.js-powered scene in the browser.
2. NFT Marker:
- The `<a-nft>` tag defines the marker type as nft and links it to the marker files.
- The url attribute points to the marker's base path (excluding file extensions like .iset, .fset).
3. 3D Model:
- A 3D model is specified using the `<a-entity>` tag with gltf-model pointing to the GLTF/GLB file URL.
4. Including the animation-mixer (from the [A-Frame extras](https://github.com/c-frame/aframe-extras) library):
- The `animation-mixer="clip: *;"` component plays all animations embedded in the GLTF/GLB model.
- If you want to play a specific animation, replace * with the animation's name, such as Walk or Run.
5. Camera:
- An `<a-entity camera>` tag is required for AR.js to handle the user's device camera.

## Testing and Troubleshooting
- Test on your smartphone or tablet:
- Common Issues:
    - Marker not detected: Ensure good lighting and visibility.
    - Play with scale and position of model
    - Scene not loading: Check browser compatibility (e.g. allow use of camera, etc) or console errors
    - Make sure all parts of the NFT are included (i.e. the .iset, .fset and fset3 files).

## Wrap-Up and Q&A
- Try making another version of this app that uses custom fiducual markers (i.e. like the hiro marker). [Here is a tutorial](https://medium.com/@aschmelyun/so-you-want-to-get-started-with-ar-js-41dd4fba5f81) showing you how.
- [AR.js Image Tracking info](https://ar-js-org.github.io/AR.js-Docs/image-tracking/)
- [Tips on creating good markers](https://github.com/Carnaux/NFT-Marker-Creator/wiki/Creating-good-markers)
- More resources available on myCourses






