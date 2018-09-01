/*
This is a sound file player. 
*/


import processing.sound.*;

SoundFile sf;

void setup() {
    size(640,360);
    background(255);
        
    //Load a soundfile
    sf = new SoundFile(this, "juno60_swell.wav");

    // These methods return useful infos about the file
    println("SFSampleRate= " + sf.sampleRate() + " Hz");
    println("SFSamples= " + sf.frames() + " samples");
    println("SFDuration= " + sf.duration() + " seconds");
    
    sf.loop();
}      


void draw() {
  // Map mouseX from 0.25 to 4.0 for playback rate. 1 equals original playback 
  // speed 2 is an octave up 0.5 is an octave down.
  sf.rate(map(mouseX, 0, width, 0.25, 4.0)); 
  
  // Map mouseY from 0.2 to 1.0 for amplitude  
  sf.amp(map(mouseY, 0, width, 0.2, 1.0)); 
 
  // Map mouseY from -1.0 to 1.0 for left to right 
  //soundfile.pan(map(mouseY, 0, width, -1.0, 1.0));
}

void mousePressed() {
  sf.play();
}