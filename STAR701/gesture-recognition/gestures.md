# STAR 701

# Technology in the Studio

### Fall 2025

# Gesture as Material

**Concept:**  In this activity, we will move beyond the mouse and keyboard to use our bodies as an input device. By training a simple machine learning model, we can create interactive sketches that respond to hand gestures. For today, we will create mood-based color fields controlled by hand gestures. This exercise introduces AI not as a mysterious, complex technology, but as a pliable artistic material that can be shaped for expressive purposes.

**Inspiration:** Artists/researchers like [Rebecca Fiebrink](https://researchers.arts.ac.uk/1594-rebecca-fiebrink) (creator of [Wekinator](http://www.wekinator.org)) and [Lauren Lee McCarthy](https://get-lauren.net/).

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

## Warm-up
- Take a look at this example: [a rock/paper/scissors detector in p5.js](https://editor.p5js.org/golan/sketches/4UggchtU-)

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
  // OPTIONAL: gray background if no gesture is recognized
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

**Key Code Explanations:**
- `preload()`: Loads the model before anything else runs.
- `classifyVideo()` & `gotResults()`: This is the heartbeat. It asks the model "What do you see?" and then gets an answer asynchronously.
- `confidence > 0.75`: This is a "confidence threshold." It prevents the sketch from flickering if the model is unsure. This is an important control parameter.
- The moods Object: These are your classes. This is where the fun happens! We are assigning meaning to the gestures. A ✌️ means yellow. This is a simple form of semantic mapping.

**Instructions:**
1. PASTE YOUR MODEL URL into the modelURL variable.
2. Click "Run". Allow camera permissions.
3. Test your gestures!

## Experimentation & Semantic "Hacking"
Now, challenge yourselves to change the meaning of the gestures. The technology is the same; the art is in the mapping.

Here are some suggestions:

**Change the Mood**
- Reassign the colors in the moods object. What if a thumbs down is red? What if a wave is a calming green?

**From Mood Ring to Instrument**
- Instead of changing color, make each gesture trigger a sound. (Code Hint: Use the p5.js sound library. Load sound files in preload() and trigger sound.play() inside `gotResults()` based on the class label.)

**Gestural Drawing Tool**
- Use gestures to change how you draw. (Code Hint: Move the `background()` command from `gotResults()` to `setup()` so it only runs once. In the draw() function, use the current class label to change the drawing style.)

```
function draw() {
  if (mouseIsPressed) {
    let currentMood = moods[label]; // You need to store the label in a global variable!
    fill(currentMood.color);
    ellipse(mouseX, mouseY, 20, 20);
  }
}
```

## Discussion & Critique

_Agency & Control:_ Who was in control? You, or the model? Did it feel like a collaboration or a struggle?

_Bias:_ How did you have to change your natural gesture to make the model understand it? What does this say about the "expectations" baked into AI?

_Materiality:_ How did changing the meaning (the color/sound) of a gesture change how it felt to perform it?

_Error:_ What happened when the model misclassified your gesture? Were any of these "failures" interesting or poetically resonant?

_Future Applications:_ Imagine this not with a webcam, but with a camera in a public space. What are the ethical and expressive implications and possibilities of gestural control in art?



