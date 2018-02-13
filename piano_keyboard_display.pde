// keyboard display

void setup() {
  size(800, 600);
  background(190, 190, 190);
} // setup function

void draw() {
  int keyWidth = 0;
  int whiteWidth = width/15;
  float blackHeight = height*3/5;
  float blackWidth = whiteWidth/2 + whiteWidth/4;
  int blackHover = -1;
  
//  for (int i = 0; i < 15; i++) {
//    float keyHeight = whiteWidth*(i+1) - blackWidth/2;
//    if (mouseX > keyHeight && mouseX <= keyHeight+blackWidth &&
//    mouseY <= blackHeight && i != 2 && i != 6 & i != 9 && i != 13) {
//      blackHover = i;
//    }
// } // 1st for loop
  
  for (int whiteKey = 0; whiteKey < 8; whiteKey++) {
    stroke(1);
    //strokeWeight(3);
    int keyHeight = whiteKey * whiteWidth;
    if (mouseX > keyHeight && mouseX <= keyHeight + whiteWidth && mouseY > keyWidth + 450 
    && mouseY <= height) {
      fill(255, 250, 200);
    } else if (mouseX > keyHeight && mouseX <= keyHeight + whiteWidth && mouseY > keyWidth + 450 && 
    mouseY <= height && mousePressed) {
      fill(200, 100, 150);
    } else {
      fill(255);
    }
    rect(keyHeight, keyWidth+200, whiteWidth, height-200);
  } // 2nd for loop
  
  for (int blackKey = 0; blackKey < 6; blackKey++) {
    float keyHeight = whiteWidth * (blackKey+1) - blackWidth/2;
    if (blackKey == 2) {
      keyHeight = whiteWidth * (blackKey+1) - blackWidth/2 + whiteWidth;
    } 
    fill(0);
    blackHover = blackKey;
    noStroke();
    if (mouseX > keyHeight && mouseX <= keyHeight + blackWidth && mouseY > keyWidth + 200 
    && mouseY <= blackHeight + 65 && mousePressed && blackHover == blackKey) {
      stroke(2);
      fill(0, 255, 255);
    } else if (mouseX > keyHeight && mouseX <= keyHeight + blackWidth && mouseY > keyWidth + 200 
    && mouseY <= blackHeight + 65 && blackHover == blackKey) {
      stroke(2);
      fill(50, 255, 50);
    } else {
      fill(0);
    }
    rect(keyHeight, keyWidth+200, blackWidth, blackHeight-100);
  } // 3rd for loop
  
  for (int whiteKey = 8; whiteKey < 16; whiteKey++) {
    stroke(1);
    strokeWeight(3);
    int keyHeight = whiteKey * whiteWidth;
    if (mouseX > keyHeight && mouseX <= keyHeight + whiteWidth && mouseY > keyWidth + 450 
    && mouseY <= height) {
      fill(255, 250, 200);
    } else if (mousePressed && mouseX > keyHeight && mouseX <= keyHeight + whiteWidth && mouseY > keyWidth + 450 
    && mouseY <= height) {
      fill(200, 100, 150);
    } else {
      fill(255);
    }
    rect(keyHeight, keyWidth+200, whiteWidth, height-200);
  } // 4th for loop
  
  for (int blackKey = 7; blackKey < 13; blackKey++) {
    float keyHeight = whiteWidth * (blackKey+1) - blackWidth/2;
    if (blackKey == 9) {
      keyHeight = whiteWidth * (blackKey+1) - blackWidth/2 + whiteWidth;
    } 
    fill(0);
    blackHover = blackKey;
    noStroke();
    if (mouseX > keyHeight && mouseX <= keyHeight + blackWidth && mouseY > keyWidth + 200 
    && mouseY <= blackHeight + 65 && mousePressed && blackHover == blackKey) {
      stroke(2);
      fill(0, 255, 255);
    } else if (mouseX > keyHeight && mouseX <= keyHeight + blackWidth && mouseY > keyWidth + 200 
    && mouseY <= blackHeight + 65 && blackHover == blackKey) {
      stroke(2);
      fill(50, 255, 50);
    } else {
      fill(0);
    }
    rect(keyHeight, keyWidth+200, blackWidth, blackHeight-100);
  } // 5th for loop
 
  
  String s1 = "Drum";
  fill(204, 0, 102);
  rect(40, 40, 80, 40, 7);
  fill(0, 255, 128);
  textSize(16);
  text(s1, 50, 50, 70, 100);
  
  String s2 = "Triangle";
  fill(0, 153, 76);
  rect(190, 40, 90, 40, 7);
  fill(153, 255, 255);
  textSize(16);
  text(s2, 200, 50, 70, 100);
  
  String s3 = "Woodblock";
  fill(204, 204, 255);
  rect(390, 40, 115, 40, 7);
  fill(255, 0, 0);
  textSize(16);
  text(s3, 400, 50, 170, 200);
  
  String s4 = "Cymbal";
  fill(255, 153, 51);
  rect(590, 40, 100, 40, 7);
  fill(0, 0, 204);
  textSize(16);
  text(s4, 600, 50, 70, 100);
  
  String s5 = "Drum2";
  fill(255, 102, 102);
  rect(40, 140, 80, 40, 7);
  fill(0, 255, 128);
  textSize(16);
  text(s5, 50, 150, 90, 100);
  
  String s6 = "Triangle2";
  fill(20, 225, 180);
  rect(190, 140, 90, 40, 7);
  fill(108, 17, 146);
  textSize(16);
  text(s6, 200, 150, 90, 100);
  
  String s7 = "Woodblock2";
  fill(242, 212, 15);
  rect(390, 140, 115, 40, 7);
  fill(46, 76, 228);
  textSize(16);
  text(s7, 400, 150, 170, 200);
  
  String s8 = "Cymbal2";
  //fill(23, 162, 70);
  fill(204, 153, 255);
  rect(590, 140, 100, 40, 7);
  fill(23, 162, 70);
  textSize(16);
  text(s8, 600, 150, 70, 100);
  
} // draw function
