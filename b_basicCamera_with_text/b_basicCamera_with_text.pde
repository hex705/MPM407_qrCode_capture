import processing.video.*;


/* 
    Based on sample and library by Shiffman and Igoe -- see below
    
    this version works in both 1.5.1 and processing 2.0bxx
    
    to use with beta you must find the following insetup and uncommentit
    video.start();

/*


 QRcode reader
 Generate images from a QRcode generator such as
 http://qrcode.kaywa.com/ and put them in this sketch's
 data folder.
 Press spacebar to read from the camera, generate an image,
 and scan for barcodes.  Press f to read from a file and scan.
 Press s for camera settings.
 Created 9 June 2007
 by Tom Igoe / Daniel Shiffman
 */

Capture video;                                 // instance of the video capture library

String statusMsg = "Waiting for an image";     // a string to return messages:


void setup() {
  
  size(400, 320);
  
  video = new Capture(this, width, height-20, 30); // capture params:  width,height,frameRate
  
  //uncomment next line of using processing 2.0 beta
  video.start();

  // Create a font with the second font available to the system:
  PFont myFont = createFont(PFont.list()[2], 14);
  textFont(myFont);
}


// every time a fram is available this fires
void captureEvent(Capture video) {
  video.read();
}

void draw() {
  
  background(255,127,0);
  
  // Display video
  image(video, 0, 0);
  
  // Display status
  text(statusMsg, 10, height-4);


}




