# STAR 701

# Technology in the Studio

### Fall 2025

# Cybernetic Conversations: Building a Digital "Colloquy"

**Concept:** We will create a simplified digital analogue to Gordon Pask's [*Colloquy of Mobiles*](https://www.colloquyofmobiles.com/).  We will create two digital "entities" that perceive each other and engage in a non-verbal, environmental "conversation." The goal is to model a simple ecosystem of perception, response, and interaction.

**Inspiration:** *Colloquy of Mobiles by Gordon Pask* (1968) – An installation where light and sound-emitting "male" and "female" mobiles interact with each other and the audience in a cybernetic courtship ritual.

**Tools:** p5.js Web Editor, Webcam

Gordon Pask's *Colloquy of Mobiles* wasn't about pretty patterns; it was a model for conversation (in this context, we define conversation as action-grounded construction of shared meanings). It was a society of non-human agents with simple goals: to find energy (light) and interact with others. They had agency. Their interactions produced emergent, unpredictable behavior. Today, we won't build physical mobiles, but we will create their digital reprsenations. We'll build simple software 'organisms' that can sense each other and react.

**Learning Objectives:**
- Understand core cybernetic concepts: perception, feedback, adaptation and agency.
- Model simple communicative behaviors in code.
- Shift from thinking of artworks as static objects to thinking of them as autonomous systems with behavioral modlaities.

## Set-up:
- Go to https://editor.p5js.org/.
- Create a new sketch.
- Allow webcam access

## Step 1: The Basic World
We will create two "entities": a seeker (like Pask's "female" mobile that seeks light) and a beacon (like a "male" mobile that emits a signal).

Copy and paste this code into your p5.js editor

```
let entityA, entityB; // Our two cybernetic entities
let lastMoveTime = 0;
let moveInterval = 3000; // Move every 3 seconds

function setup() {
  createCanvas(640, 480);

  // Initialize our two entities with properties.
  // beacon
  entityA = {
    x: random(width),
    y: random(height),
    size: 50,
    color: [255, 0, 0], // Red
    signalStrength: 0
  };

  // seeker
  entityB = {
    x: random(width),
    y: random(height),
    size: 30,
    color: [0, 0, 255], // Blue
    speed: 2,
    perception: 100 // How far it can "see"
  };
}
```

## Step 2: The Perceive-Think-Act Loop
The loop manages the internal state and interaction between entityA and entityB. Copy and paste into your p5.js editor

```
function draw() {
  background(0, 10); // Semi-transparent background for trails

  // --- CALCULATE DISTANCE (The core "perception" metric) ---
  let d = dist(entityA.x, entityA.y, entityB.x, entityB.y);

  // --- ENTITY A (The Beacon) BEHAVIOR ---
  // Its signal strength is based on the proximity of the Seeker
  entityA.signalStrength = map(d, 0, width/2, 255, 50); // Stronger when closer
  fill(entityA.color[0], entityA.color[1], entityA.color[2], entityA.signalStrength);
  noStroke();
  ellipse(entityA.x, entityA.y, entityA.size);

  // --- ENTITY B (The Seeker) BEHAVIOR ---
  // 1. PERCEIVE: Can it "see" the beacon? (Is it within perception range?)
  if (d < entityB.perception) {
    // 2. THINK/ACT: If yes, change color and move towards the beacon
    entityB.color = [255, 255, 0]; // Yellow = excitement
    let angle = atan2(entityA.y - entityB.y, entityA.x - entityB.x);
    entityB.x += cos(angle) * entityB.speed;
    entityB.y += sin(angle) * entityB.speed;
  } else {
    // 3. THINK/ACT: If not, wander randomly
    entityB.color = [0, 0, 255]; // Blue = searching
    entityB.x += random(-entityB.speed, entityB.speed);
    entityB.y += random(-entityB.speed, entityB.speed);
  }

  // Keep entities on screen
  entityB.x = constrain(entityB.x, 0, width);
  entityB.y = constrain(entityB.y, 0, height);

  // Draw the seeker
  fill(entityB.color[0], entityB.color[1], entityB.color[2]);
  ellipse(entityB.x, entityB.y, entityB.size);
}
```

## Step 3: Run the sketch
Run the sketch and observe. Consider altering the entites' properties (e.g. signalStrength of entity A; speed: or perception: of entity B).

## Periodic Movement for the Beacon (Entity A)
Now let's make some changes to make the system more dynamic (and perhaps closer to Pask's concept of active, communicative entities). We can give Entity A (The Beacon) its own agency by periodically changing its location. Here is one simple approach.

Add this to the `draw()` function (below the call to `background()`):

```
  // Periodically move the beacon
  if (millis() - lastMoveTime > moveInterval) {
    entityA.x = random(width);
    entityA.y = random(height);
    lastMoveTime = millis();
    
    // Optional: Make the move interval slightly variable for more organic behavior
    moveInterval = random(2000, 4000);
  }

```

## Introduce the Webcam as an External Actor (The True Paskian Element)
Now, the webcam can be introduced as a way for the human (or anything else) to influence the system. This is a much more sophisticated and appropriate use. So make sure the core system is working.

1. Declare this variable at the top of our sketch (i.e. before the `setup()` function).
    - `let video; // declare video`
2. Add this code to the `setup()` function, right after the call to `createCanvas()`:
  ```
  // Setup video for external input
  video = createCapture(VIDEO);
  video.size(64, 48); // Very small resolution for performance
  video.hide();
  ```
3. Now here is your new draw() function (replace current one with this):
```
function draw() {
  background(0, 10); // Semi-transparent background for trails
  
  // --- NEW: SAMPLE THE ENVIRONMENT ---
  // Get the overall brightness of the video scene
  video.loadPixels(); // load the current value of each video pixel into the pixels array so we can analyze it
  let totalBrightness = 0;
  for (let i = 0; i < video.pixels.length; i += 4) {
    // Calculate brightness of each pixel (average of R, G, B)
    totalBrightness += (video.pixels[i] + video.pixels[i+1] + video.pixels[i+2]) / 3;
  }
  let avgBrightness = totalBrightness / (video.pixels.length / 4);
  
  // calculate distance
  let d = dist(entityA.x, entityA.y, entityB.x, entityB.y);

  // --- ENTITY A BEHAVIOR (NOW AFFECTED BY EXTERNAL WORLD) ---
  // The beacon's signal is a combination of Seeker proximity AND external light
  let proximityFactor = map(d, 0, width/2, 255, 50);
  let lightFactor = map(avgBrightness, 0, 255, 0.2, 1.5); // Light amplifies signal
  entityA.signalStrength = proximityFactor * lightFactor; // Combine the factors

  fill(entityA.color[0], entityA.color[1], entityA.color[2], entityA.signalStrength);
  noStroke();
  ellipse(entityA.x, entityA.y, entityA.size);

  // --- ENTITY B (The Seeker) BEHAVIOR ---
  // 1. PERCEIVE: Can it "see" the beacon? (Is it within perception range?)
  if (d < entityB.perception) {
    // 2. THINK/ACT: If yes, change color and move towards the beacon
    entityB.color = [255, 255, 0]; // Yellow = excitement
    let angle = atan2(entityA.y - entityB.y, entityA.x - entityB.x);
    entityB.x += cos(angle) * entityB.speed;
    entityB.y += sin(angle) * entityB.speed;
  } else {
    // 3. THINK/ACT: If not, wander randomly
    entityB.color = [0, 0, 255]; // Blue = searching
    entityB.x += random(-entityB.speed, entityB.speed);
    entityB.y += random(-entityB.speed, entityB.speed);
  }

  // Keep entities on screen
  entityB.x = constrain(entityB.x, 0, width);
  entityB.y = constrain(entityB.y, 0, height);

  // Draw the seeker
  fill(entityB.color[0], entityB.color[1], entityB.color[2]);
  ellipse(entityB.x, entityB.y, entityB.size);
}
```

##
Introduce Behavior-Based Movement for the Beacon (A More Complete Paskian System)
Make the beacon's movement responsive to the seeker's behavior. This now combines environmental/human sensing with awareness of the seeker. The beacon now has a kind of personality via its behavioral states.

Here is the full code:

```
let entityA, entityB; // Our two cybernetic entities
let video;
let beaconState = "idle"; // States: idle, fleeing, curious
let stateChangeTime = 0;

function setup() {
  createCanvas(640, 480);
  
  // Setup video for external input
  video = createCapture(VIDEO);
  video.size(320, 240); // lower resolution for performance
  video.hide();

  // Initialize our two entities with properties.
  entityA = {
    x: random(width),
    y: random(height),
    size: 50,
    color: [255, 0, 0], // Red
    signalStrength: 0
  };

  entityB = {
    x: random(width),
    y: random(height),
    size: 30,
    color: [0, 0, 255], // Blue
    speed: 2,
    perception: 100 // How far it can "see"
  };
}

// The Perceive-Think-Act Loop 

function draw() {
  background(0, 10); // Semi-transparent background for trails
  
  // --- SAMPLE THE ENVIRONMENT ---
  // Get the overall brightness of the video scene
  video.loadPixels(); // load the current value of each video pixel into the pixels array so we can analyze it
  let totalBrightness = 0;
  for (let i = 0; i < video.pixels.length; i += 4) {
    // Calculate brightness of each pixel (average of R, G, B)
    totalBrightness += (video.pixels[i] + video.pixels[i+1] + video.pixels[i+2]) / 3;
  }
  let avgBrightness = totalBrightness / (video.pixels.length / 4);
  
  // calculate distance
  let d = dist(entityA.x, entityA.y, entityB.x, entityB.y);
  
  // Beacon behavior state machine
  if (millis() - stateChangeTime > 3000) { // Change state every 3 seconds
    let r = random();
    if (r < 0.3) {
      beaconState = "idle";
    } else if (r < 0.6) {
      beaconState = "curious";
    } else {
      beaconState = "fleeing";
    }
    stateChangeTime = millis();
  }
  
    // Act according to state
  if (beaconState === "idle") {
    // Minimal movement
    entityA.x += random(-0.5, 0.5);
    entityA.y += random(-0.5, 0.5);
  } else if (beaconState === "curious" && d < 200) {
    // Move slightly toward the seeker when curious and nearby
    let angle = atan2(entityB.y - entityA.y, entityB.x - entityA.x);
    entityA.x += cos(angle) * 0.8;
    entityA.y += sin(angle) * 0.8;
  } else if (beaconState === "fleeing" && d < 150) {
    // Move away from the seeker when fleeing and too close
    let angle = atan2(entityB.y - entityA.y, entityB.x - entityA.x);
    entityA.x -= cos(angle) * 1.5;
    entityA.y -= sin(angle) * 1.5;
  }
  
  // Keep beacon within bounds
  entityA.x = constrain(entityA.x, 0, width);
  entityA.y = constrain(entityA.y, 0, height);

  // --- ENTITY A LIGHT BEHAVIOR (AFFECTED BY EXTERNAL WORLD) ---
  // The beacon's signal is a combination of Seeker proximity AND external light
  let proximityFactor = map(d, 0, width/2, 255, 50);
  let lightFactor = map(avgBrightness, 0, 255, 0.2, 1.5); // Light amplifies signal
  entityA.signalStrength = proximityFactor * lightFactor; // Combine the factors

  fill(entityA.color[0], entityA.color[1], entityA.color[2], entityA.signalStrength);
  noStroke();
  ellipse(entityA.x, entityA.y, entityA.size);

  // --- ENTITY B (The Seeker) BEHAVIOR ---
  // 1. PERCEIVE: Can it "see" the beacon? (Is it within perception range?)
  if (d < entityB.perception) {
    // 2. THINK/ACT: If yes, change color and move towards the beacon
    entityB.color = [255, 255, 0]; // Yellow = excitement
    let angle = atan2(entityA.y - entityB.y, entityA.x - entityB.x);
    entityB.x += cos(angle) * entityB.speed;
    entityB.y += sin(angle) * entityB.speed;
  } else {
    // 3. THINK/ACT: If not, wander randomly
    entityB.color = [0, 0, 255]; // Blue = searching
    entityB.x += random(-entityB.speed, entityB.speed);
    entityB.y += random(-entityB.speed, entityB.speed);
  }

  // Keep entities on screen
  entityB.x = constrain(entityB.x, 0, width);
  entityB.y = constrain(entityB.y, 0, height);

  // Draw the seeker
  fill(entityB.color[0], entityB.color[1], entityB.color[2]);
  ellipse(entityB.x, entityB.y, entityB.size);
}
```


## Experimentation
OK, so you are now "ethology designing". Basically defining the rules of engagement for your digital entities.

Here are some more experiments you can try:

**Challenge 1: Create a Second Couple**

Add entityC and entityD with different rules. Maybe they are competitors? Maybe they are attracted to the Seeker instead of the Beacon? How do the two couples interact?

**Challenge 2: Different "Senses"**

Change the perception. What if the Seeker isn't attracted to proximity but to a color? What if it's repelled by bright light? Change the if statement to trigger on color detection instead of distance. (Code Hint: Use `video.get(entityB.x, entityB.y)` to get the color of the video pixel at the Seeker's location.)

**Challenge 3: Environmental Memory**

Give an entity a simple memory. If the Seeker hasn't found the Beacon for 500 frames (`if (frameCount % 500 == 0)`), make its speed increase (it becomes "desperate") or its perception widen.

## Discussion & Critique

5. Critique & Discussion (10 mins)

At what point did the system stop feeling like code you wrote and start feeling like a behavior you were observing?

How did introducing a human participant (via webcam) change the dynamic? Did it feel like a conversation?

How is this approach to using a camera fundamentally different from how we use it on social media? (It's sensing for interaction, not capturing for representation).

How does this exercise reflect Pask's idea of a "colloquy" (a formal conversation) as opposed to just a "feedback loop"?

Agency & Behavior: How does giving the beacon its own movement change the dynamics of the system? Does it feel more like a "conversation" between two entities?

Character Design: What personality does each movement method give to the beacon? Is it shy, playful, erratic, or methodical?

Interaction Design: How could the beacon's movement be influenced by the seeker's behavior or human interaction? (e.g., the beacon moves away when the seeker gets too close, or moves toward areas of light)

Paskian Principles: Which method best reflects the principles of the *Colloquy of Mobiles*, where each entity has its own goals and behaviors that create emergent interactions?
