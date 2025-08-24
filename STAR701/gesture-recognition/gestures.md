# STAR 701

# Technology in the Studio

### Fall 2025

# Gesture as Material

**Concept:**  We will move beyond the mouse and keyboard to use our bodies as an input device. By training a simple machine learning model, we can create interactive sketches that respond to hand gestures. For today, we will create mood-based color fields controlled by hand gestures. This exercise introduces AI not as a mysterious, complex technology, but as a pliable artistic material that can be shaped for expressive purposes.

**Inspiration:** Artists/researchers like [Rebecca Fiebrink](https://researchers.arts.ac.uk/1594-rebecca-fiebrink) (creator of [http://www.wekinator.org](Wekinator)) and [Lauren Lee McCarthy](https://get-lauren.net/).

**Tools:** p5.js Web Editor, Webcam, [ml5](https://ml5js.org/), [Teachable Machine](https://teachablemachine.withgoogle.com/)

In the popular imagination, today's AI is thought of as something that replaces human creativity. We will take a differnet approach. We'll treat AI as something to be exploited by artists. Basically or us, AI will be a trainable puppet that translates our physical movement into digital action. A gesture is one of our most fundamental forms of communication. We'll teach the computer to understand a small vocabulary of our own making.

**Learning Objectives:**
- Understand the basic concept of classification in machine learning.
- Learn the workflow of gathering data, training a model, and integrating it into a creative project.
- Create a p5.js sketch that responds intuitively to bodily expression.
- Critique the limitations and biases of simple AI models.

## Set-up:
- Go to https://editor.p5js.org/.
- Create a new sketch.
- Allow webcam access

## Step 1: Building Our Gestural Vocabulary
1. Go to the [Teachable Machine](https://teachablemachine.withgoogle.com/) web site and spend a few minutes getting familiar with the site and the basic machine learning workflow. Likewise, spend some time on the [ml5](https://ml5js.org/) site, getting familar with their documentation.
2. Create a New Project: Choose "Image Project".
3. Choose "Standard" image model. (It's faster and good enough for our purposes).

We will create three classes (our "gestural vocabulary"):
- Class 1: peace (✌️)
- Class 2: thumbs_up (👍)
- Class 3: wave (👋)
*(Bonus: Add a fourth class, nothing, for when no gesture is present)*

For each class/gesture:

1. Hold the gesture clearly in front of your webcam.
2. Press and hold the "Hold to Record" button. Slowly move your hand around, *slightly* change the angle, and move it closer/further from the camera. Aim for 150-200 samples per class.
    Why? This provides varied data, making your model more robust to different lighting and positions.
3. Repeat for all classes/gestures.

Click "Train Model" and wait a minute. Once training is done, test it in the preview panel! Try to "break" it with weird lighting or fast movements. This is a great way to see its limitations.

Click "Export Model". In the pop-up:
- Choose "Tensorflow.js" tab.
- Choose "Upload (cloud)" option.
- Copy the provided URL. This is your model's address on the internet.

## Step 2: The Code Template - A "Mood Ring"
The first thing you need to do is import the ml5 library into your p5.js sketch.
1. In the p5.js editor click the little arrow just below the play button to see your files.
2. Select 'index.html'
3. Paste the following code within the `<head></head>` tag (just after the final `<script></script>` tag is a good spot)
    ```<!-- Load the latest version of ml5.js -->
    <script src="https://unpkg.com/ml5@latest/dist/ml5.min.js"></script>
    ```

Now open a new tab to the p5.js Web Editor. Paste the entire code below into your sketch.js file (i.e. your sketch).

```
// Gesture-Controlled Digital Mood Ring
// Replace 'YOUR_MODEL_URL' with the URL from Teachable Machine!

let classifier;
let video;
let modelURL = 'YOUR_MODEL_URL_HERE'; // <-- IMPORTANT: PASTE YOUR URL HERE

// 1. Our "Mood" Palette: Connect each gesture to a color and emoji
const moods = {
  "peace": {
    color: [255, 200, 0],   // Yellow
    emoji: "✌️"
  },
  "thumbs_up": {
    color: [0, 150, 255],   // Blue
    emoji: "👍"
  },
  "wave": {
    color: [200, 0, 150],   // Purple
    emoji: "👋"
  },
  "nothing": {
    color: [100, 100, 100], // Grey
    emoji: "👁️"
  }
};

// 2. Preload the model
function preload() {
  classifier = ml5.imageClassifier(modelURL);
}

// 3. Setup the canvas and webcam
function setup() {
  createCanvas(800, 600);
  video = createCapture(VIDEO);
  video.size(400, 300); // Smaller for better performance
  video.hide(); // Hide the extra video element
  classifyVideo(); // Start the classification loop!
}

// 4. The core function: get predictions and react
function classifyVideo() {
  classifier.classify(video, gotResults);
}

// 5. What to do when we get a result back from the model
function gotResults(error, results) {
  if (error) {
    console.error(error);
    return;
  }
  
  // Get the top prediction (label & confidence)
  let label = results[0].label;
  let confidence = results[0].confidence;
  
  // Only react if the model is reasonably confident
  if (confidence > 0.75) { 
    // 6. Change the background based on the gesture
    let mood = moods[label];
    background(mood.color[0], mood.color[1], mood.color[2]);
    
    // 7. Draw the corresponding emoji
    drawEmoji(mood.emoji, width/2, height/2);
    
    // 8. Display the confidence level
    fill(255);
    textSize(24);
    text(`Gesture: ${label} (${nf(confidence, 0, 2)})`, 20, 40);
  }
  
  // Call this function again to create a continuous loop
  classifyVideo();
}

// 9. Function to draw a large emoji
function drawEmoji(gestureEmoji, x, y) {
  textSize(120);
  textAlign(CENTER, CENTER);
  text(gestureEmoji, x, y);
}

// 10. Keep the draw function empty; everything is event-driven
function draw() {
  // We don't need a draw loop for this simple example,
  // but we can add other persistent animations here later.
}
```


## Experimentation
OK, so you are now "ethology designing". Basically defining the rules of engagement for your digital entities.

Here are some more experiments you can try:

**Challenge 1: Create a Second Couple**


**Challenge 2: Different "Senses"**



**Challenge 3: Environmental Memory**



## Discussion & Critique

5. Critique & Discussion (10 mins)


