

// don't have pqrcode library?  Get it here:

http://www.shiffman.net/p5/pqrcode/

//install as you would any other library


import pqrcode.*;

 
// Decoder object from prdecoder library
Decoder decoder;

void setup() {

  // Create a decoder object
  decoder = new Decoder(this);

}

// When the decoder object finishes
// this method will be invoked.
void decoderEvent(Decoder decoder) {
  statusMsg = decoder.getDecodedString(); 
}


void draw() {
  
 
  // If we are currently decoding
  if (decoder.decoding()) {
    // Display the image being decoded
    PImage show = decoder.getImage();
    image(show,0,0,show.width/4,show.height/4); // it is visible in upper right
    
    statusMsg = "Decoding image";
    for (int i = 0; i < (frameCount/2) % 10; i++) statusMsg += ".";
  }

}

void keyReleased() {
  String code = "";
  // Depending on which key is hit, do different things:
  switch (key) {
  case ' ':        // Spacebar takes a picture and tests it:
    // copy it to the PImage savedFrame:
    PImage savedFrame = createImage(video.width,video.height,RGB);
    savedFrame.copy(video, 0,0,video.width,video.height,0,0,video.width,video.height);
    savedFrame.updatePixels();
    // Decode savedFrame
    decoder.decodeImage(savedFrame);
    break;
  case 'f':    // f runs a test on a file
    PImage preservedFrame = loadImage("qrcode.png");
    // Decode file
    decoder.decodeImage(preservedFrame);
    break;
  case 's':      // s opens the settings page for this capture device:
    //video.settings();
    break;
  }
}


