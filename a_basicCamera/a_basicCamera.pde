import processing.video.*;


/* 
    Capture from Processing help files
    
    this version works in both 1.5.1 and processing 2.0bxx
    
    to use with beta you must find the following insetup and uncommentit
    video.start();

/*



Capture video;                                 // instance of the video capture library

void setup() {
  
  size(400, 320);
  
  video = new Capture(this, width, height-20, 30); // capture params:  width,height,frameRate
  
  //uncomment next line of using processing 2.0 beta
  video.start();

}


// every time a fram is available this fires
void captureEvent(Capture video) {
  video.read();
}


void draw() {
  
  background(255,127,0);
  
  // Display video
  image(video, 0, 0);
  

}




