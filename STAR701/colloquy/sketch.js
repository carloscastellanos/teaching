let entityA, entityB; // Our two cybernetic entities
let lastMoveTime = 0;
let moveInterval = 3000; // Move every 3 seconds

function setup() {
  createCanvas(640, 480);

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
    speed: 8,
    perception: 100 // How far it can "see"
  };
}

// The Perceive-Think-Act Loop 

function draw() {
  background(0, 10); // Semi-transparent background for trails
  
  // Periodically move the beacon
  if (millis() - lastMoveTime > moveInterval) {
    entityA.x = random(width);
    entityA.y = random(height);
    lastMoveTime = millis();
    
    // Optional: Make the move interval slightly variable for more organic behavior
    moveInterval = random(2000, 4000);
  }

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