import processing.video.*;
   
Movie movie; 
boolean isPlaying;
boolean isLooping;

void setup() { 
  size(720, 480);

  movie = new Movie(this, "bike_race_480_h264.mp4");
  movie.loop();  //plays the movie over and over
  isPlaying = true;
  isLooping = true;
}

void draw() { 
  background(0);
  image(movie, 0, 0);
} 

void movieEvent(Movie m) { 
  m.read(); 
} 

void keyPressed() {
  if (key == ' ') {
    // toggle pausing
    if (isPlaying) {
      movie.pause();
    } else {
      movie.play();
    }
    isPlaying = !isPlaying;

  } else if (key == 'l') {
    // toggle looping
    if (isLooping) {
      movie.noLoop();
    } else {
      movie.loop();
    }
    isLooping = !isLooping;

  } else if (key == 's') {
    // stop playing
    movie.stop();
    isPlaying = false;

  } else if (key == 'j') {
    // jump to a random time
    movie.jump(random(movie.duration()));
  }
}