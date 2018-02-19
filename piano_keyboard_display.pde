// keyboard display
// add audio to processing

import ddf.minim.*;
// white keys
AudioSnippet C3; AudioSnippet D3; AudioSnippet E3;
AudioSnippet F3; AudioSnippet G3; AudioSnippet A3;
AudioSnippet B3; AudioSnippet C4; AudioSnippet D4;
AudioSnippet E4; AudioSnippet F4; AudioSnippet G4;
AudioSnippet A4; AudioSnippet B4; AudioSnippet C5;

//black keys
AudioSnippet Db3; AudioSnippet Eb3; AudioSnippet Gb3;
AudioSnippet Ab3; AudioSnippet Bb3; AudioSnippet Db4;
AudioSnippet Eb4; AudioSnippet Gb4; AudioSnippet Ab4;
AudioSnippet Bb4;

//background sounds
AudioSnippet Mirrors;
AudioSnippet Filthy;
AudioSnippet Cry;
AudioSnippet TKO;
AudioSnippet Not;

Minim minim;

int[] count;

void setup() {
  size(800, 600);
  background(190, 190, 190);
  minim = new Minim(this);
  // white keys loading
  C3 = minim.loadSnippet("Desktop/Penn State U/Spring 2018/KINES 597/codes/Project 1/notes/Piano.pp.C3.mp3");
  D3 = minim.loadSnippet("Desktop/Penn State U/Spring 2018/KINES 597/codes/Project 1/notes/Piano.pp.D3.mp3");
  E3 = minim.loadSnippet("Desktop/Penn State U/Spring 2018/KINES 597/codes/Project 1/notes/Piano.pp.E3.mp3");
  F3 = minim.loadSnippet("Desktop/Penn State U/Spring 2018/KINES 597/codes/Project 1/notes/Piano.ff.F3.mp3");
  G3 = minim.loadSnippet("Desktop/Penn State U/Spring 2018/KINES 597/codes/Project 1/notes/Piano.pp.G3.mp3");
  A3 = minim.loadSnippet("Desktop/Penn State U/Spring 2018/KINES 597/codes/Project 1/notes/Piano.pp.A3.mp3");
  B3 = minim.loadSnippet("Desktop/Penn State U/Spring 2018/KINES 597/codes/Project 1/notes/Piano.mf.B3.mp3");
  C4 = minim.loadSnippet("Desktop/Penn State U/Spring 2018/KINES 597/codes/Project 1/notes/Piano.mf.C4.mp3");
  D4 = minim.loadSnippet("Desktop/Penn State U/Spring 2018/KINES 597/codes/Project 1/notes/Piano.mf.D4.mp3");
  E4 = minim.loadSnippet("Desktop/Penn State U/Spring 2018/KINES 597/codes/Project 1/notes/Piano.mf.E4.mp3");
  F4 = minim.loadSnippet("Desktop/Penn State U/Spring 2018/KINES 597/codes/Project 1/notes/Piano.mf.F4.mp3");
  G4 = minim.loadSnippet("Desktop/Penn State U/Spring 2018/KINES 597/codes/Project 1/notes/Piano.mf.G4.mp3");
  A4 = minim.loadSnippet("Desktop/Penn State U/Spring 2018/KINES 597/codes/Project 1/notes/Piano.ff.A4.mp3");
  B4 = minim.loadSnippet("Desktop/Penn State U/Spring 2018/KINES 597/codes/Project 1/notes/Piano.ff.B4.mp3");
  C5 = minim.loadSnippet("Desktop/Penn State U/Spring 2018/KINES 597/codes/Project 1/notes/Piano.ff.C5.mp3");

  // black keys loading
  Db3 = minim.loadSnippet("Desktop/Penn State U/Spring 2018/KINES 597/codes/Project 1/notes/Piano.ff.Db3.mp3");
  Eb3 = minim.loadSnippet("Desktop/Penn State U/Spring 2018/KINES 597/codes/Project 1/notes/Piano.ff.Eb3.mp3");
  Gb3 = minim.loadSnippet("Desktop/Penn State U/Spring 2018/KINES 597/codes/Project 1/notes/Piano.ff.Gb3.mp3");
  Ab3 = minim.loadSnippet("Desktop/Penn State U/Spring 2018/KINES 597/codes/Project 1/notes/Piano.ff.Ab3.mp3");
  Bb3 = minim.loadSnippet("Desktop/Penn State U/Spring 2018/KINES 597/codes/Project 1/notes/Piano.ff.Bb3.mp3");
  Db4 = minim.loadSnippet("Desktop/Penn State U/Spring 2018/KINES 597/codes/Project 1/notes/Piano.ff.Db4.mp3");
  Eb4 = minim.loadSnippet("Desktop/Penn State U/Spring 2018/KINES 597/codes/Project 1/notes/Piano.ff.Eb4.mp3");
  Gb4 = minim.loadSnippet("Desktop/Penn State U/Spring 2018/KINES 597/codes/Project 1/notes/Piano.ff.Gb4.mp3");
  Ab4 = minim.loadSnippet("Desktop/Penn State U/Spring 2018/KINES 597/codes/Project 1/notes/Piano.pp.Ab4.mp3");
  Bb4 = minim.loadSnippet("Desktop/Penn State U/Spring 2018/KINES 597/codes/Project 1/notes/Piano.pp.Bb4.mp3");
  
  // background music
  Mirrors = minim.loadSnippet("Desktop/Penn State U/Spring 2018/KINES 597/codes/Project 1/notes/Mirrors.mp3");
  Filthy = minim.loadSnippet("Desktop/Penn State U/Spring 2018/KINES 597/codes/Project 1/notes/Filthy.mp3");
  Cry = minim.loadSnippet("Desktop/Penn State U/Spring 2018/KINES 597/codes/Project 1/notes/Cry_Me_A_River.mp3");
  TKO = minim.loadSnippet("Desktop/Penn State U/Spring 2018/KINES 597/codes/Project 1/notes/TKO.mp3");
  Not = minim.loadSnippet("Desktop/Penn State U/Spring 2018/KINES 597/codes/Project 1/notes/Not_A_Bad_Thing.mp3");

  // count mousePressed
  count = new int[8];
  
  
} // setup function

void draw() {
  int keyWidth = 0;
  int whiteWidth = width/15;
  float blackHeight = height*3/5;
  float blackWidth = whiteWidth/2 + whiteWidth/4;
  int blackHover = -1;
  
//  
////  for (int i = 0; i < 15; i++) {
////    float keyHeight = whiteWidth*(i+1) - blackWidth/2;
////    if (mouseX > keyHeight && mouseX <= keyHeight+blackWidth &&
////    mouseY <= blackHeight && i != 2 && i != 6 & i != 9 && i != 13) {
////      blackHover = i;
////    }
//// } // 1st for loop
//  


  for (int whiteKey = 0; whiteKey < 8; whiteKey++) {
    stroke(1);
    //strokeWeight(3);
    int keyHeight = whiteKey * whiteWidth;
    //blackHover = whiteKey;
    if (mouseX > keyHeight && mouseX <= keyHeight + whiteWidth && mouseY > keyWidth + 450 
    && mouseY <= height && mousePressed) {
      if (mouseX > 0 && mouseX <= 53 && mouseY > 450 && mouseY <= height && mousePressed) {
        C3.play();
      }
        if (!C3.isPlaying()) {
          C3.rewind();
        }
      //}
    
      if (mouseX > 53 && mouseX <= 106 && mouseY > 450 && mouseY <= height && mousePressed) {
        D3.play();
      }
        if (!D3.isPlaying()) {
          D3.rewind();
        }
      
      if (mouseX > 106 && mouseX <= 159 && mouseY > 450 && mouseY <= height && mousePressed) {
        E3.play();
      }
        if (!E3.isPlaying()) {
          E3.rewind();
        }
      
      if (mouseX > 159 && mouseX <= 212 && mouseY > 450 && mouseY <= height && mousePressed) {
        F3.play();
      }
        if (!F3.isPlaying()) {
          F3.rewind();
        }
      
      if (mouseX > 212 && mouseX <= 265 && mouseY > 450 && mouseY <= height && mousePressed) {
        G3.play();
      }
        if (!G3.isPlaying()) {
          G3.rewind();
        }
      
      if (mouseX > 265 && mouseX <= 318 && mouseY > 450 && mouseY <= height && mousePressed) {
        A3.play();
      }
        if (!A3.isPlaying()) {
          A3.rewind();
      }
     
      if (mouseX > 318 && mouseX <= 371 && mouseY > 450 && mouseY <= height && mousePressed) {
        B3.play();
      }
        if (!B3.isPlaying()) {
          B3.rewind();
        }
      
      
      fill(200, 100, 150);
    } else if (mouseX > keyHeight && mouseX <= keyHeight + whiteWidth && mouseY > keyWidth + 450 && 
      mouseY <= height) {
      fill(255, 250, 200);
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
      // add audio sounds
      if (mouseX > 33 && mouseX <= 73 && mouseY > 200 && mouseY <= 425 && mousePressed) {
        Db3.play();
      }
        if (!Db3.isPlaying()) {
          Db3.rewind();
        }
      
      if (mouseX > 86 && mouseX <= 126 && mouseY > 200 && mouseY <= 425 && mousePressed) {
        Eb3.play();
      }
        if (!Eb3.isPlaying()) {
          Eb3.rewind();
        }
      
//      if (mouseX > 139 && mouseX <= 179 && mouseY > 200 && mouseY <= 425 && mousePressed) {
//        Gb3.play();
//      }
      if (mouseX > 192 && mouseX <= 232 && mouseY > 200 && mouseY <= 425 && mousePressed) {
        //Ab3.play();
        Gb3.play();
      }
        if (!Gb3.isPlaying()) {
          Gb3.rewind();
        }
      
      if (mouseX > 245 && mouseX <= 285 && mouseY > 200 && mouseY <= 425 && mousePressed) {
        //Bb3.play();
        Ab3.play();
      }
        if (!Ab3.isPlaying()) {
          Ab3.rewind();
        }
      
      if (mouseX > 298 && mouseX <= 338 && mouseY > 200 && mouseY <= 425 && mousePressed) {
        //Db4.play();
        Bb3.play();
      }
        if (!Bb3.isPlaying()) {
          Bb3.rewind();
        }
      
      
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
  
  for (int whiteKey = 7; whiteKey < 16; whiteKey++) {
    stroke(1);
    strokeWeight(3);
    int keyHeight = whiteKey * whiteWidth;
    if (mouseX > keyHeight && mouseX <= keyHeight + whiteWidth && mouseY > keyWidth + 450 
    && mouseY <= height && mousePressed) {
      if (mouseX > 371 && mouseX <= 424 && mouseY > 450 && mouseY <= height && mousePressed) {
        C4.play();
      }
        if (!C4.isPlaying()) {
          C4.rewind();
        }
      
      if (mouseX > 424 && mouseX <= 477 && mouseY > 450 && mouseY <= height && mousePressed) {
        D4.play();
      }
        if (!D4.isPlaying()) {
          D4.rewind();
        }
      
      if (mouseX > 477 && mouseX <= 530 && mouseY > 450 && mouseY <= height && mousePressed) {
        E4.play();
      }
        if (!E4.isPlaying()) {
          E4.rewind();
        }
      
      if (mouseX > 530 && mouseX <= 583 && mouseY > 450 && mouseY <= height && mousePressed) {
        F4.play();
      }
        if (!F4.isPlaying()) {
          F4.rewind();
        }
      
      if (mouseX > 583 && mouseX <= 636 && mouseY > 450 && mouseY <= height && mousePressed) {
        G4.play();
      }
        if (!G4.isPlaying()) {
          G4.rewind();
        }
      
      if (mouseX > 636 && mouseX <= 689 && mouseY > 450 && mouseY <= height && mousePressed) {
        A4.play();
      }
        if (!A4.isPlaying()) {
          A4.rewind();
        }
      
      if (mouseX > 689 && mouseX <= 742 && mouseY > 450 && mouseY <= height && mousePressed) {
        B4.play();
      }
        if (!B4.isPlaying()) {
          B4.rewind();
        }
      
      if (mouseX > 742 && mouseX <= 795 && mouseY > 450 && mouseY <= height && mousePressed) {
        C5.play();
      }
        if (!C5.isPlaying()) {
          C5.rewind();
        }
      
      fill(200, 100, 150);
    } else if (mouseX > keyHeight && mouseX <= keyHeight + whiteWidth && mouseY > keyWidth + 450 
    && mouseY <= height) {
      fill(255, 250, 200);
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
    && mouseY <= blackHeight + 65 && mousePressed) {
      if (mouseX > 404 && mouseX <= 444 && mouseY > 200 && mouseY <= 425 && mousePressed) {
        //Eb4.play();
        Db4.play();
      }
        if (!Db4.isPlaying()) {
          Db4.rewind();
        }
      
      if (mouseX > 457 && mouseX <= 497 && mouseY > 200 && mouseY <= 425 && mousePressed) {
        //Gb4.play();
        Eb4.play();
      }
        if (!Eb4.isPlaying()) {
          Eb4.rewind();
        }
      
//      if (mouseX > 510 && mouseX <= 550 && mouseY > 200 && mouseY <= 425 && mousePressed) {
//        //Ab4.play();
//        Gb4.play();
//      }
      if (mouseX > 563 && mouseX <= 603 && mouseY > 200 && mouseY <= 425 && mousePressed) {
        //Bb4.play();
        Gb4.play();
      }
        if (!Gb4.isPlaying()) {
          Gb4.rewind();
        }
      
      
      if (mouseX > 616 && mouseX <= 656 && mouseY > 200 && mouseY <= 425 && mousePressed) {
        //Bb4.play();
        Ab4.play();
      }
        if (!Ab4.isPlaying()) {
          Ab4.rewind();
        }
      
      
      if (mouseX > 669 && mouseX <= 709 && mouseY > 200 && mouseY <= 425 && mousePressed) {
        //Bb4.play();
        Bb4.play();
      }
        if (!Bb4.isPlaying()) {
          Bb4.rewind();
        }    
      stroke(2);
      fill(0, 255, 255);
    } else if (mouseX > keyHeight && mouseX <= keyHeight + blackWidth && mouseY > keyWidth + 200 
    && mouseY <= blackHeight + 65) {
      stroke(2);
      fill(50, 255, 50);
    } else {
      fill(0);
    }
    rect(keyHeight, keyWidth+200, blackWidth, blackHeight-100);
  } // 5th for loop
 
  
  String s1 = "Mirrors";
  count[0] = 0;
  fill(204, 0, 102);
  rect(40, 40, 80, 40, 7);
  fill(0, 255, 128);
  if (mouseX > 40 && mouseX <= 120 && mouseY > 40 && mouseY <= 80 && mousePressed) {
      fill(239, 86, 158);
      rect(40, 40, 80, 40, 7);
      //Mirrors.play();
      count[0]++;
  //}
       if (count[0] % 2 == 0) {
         //Mirrors.pause();
         Mirrors.rewind();
         //Mirrors.pause();
        } else {
          Mirrors.play();
        }
      
    }
  if (mouseX > 40 && mouseX <= 120 && mouseY > 40 && mouseY <= 80) {
      textSize(18);
    } else {
  textSize(16);
    }
  text(s1, 50, 50, 70, 100);
  
  
  String s2 = "Filthy";
  fill(0, 153, 76);
  rect(190, 40, 90, 40, 7);
  fill(153, 255, 255);
  if (mouseX > 190 && mouseX <= 280 && mouseY > 40 && mouseY <= 80 && mousePressed) {
      fill(84, 93, 213);
      rect(190, 40, 90, 40, 7);
      Filthy.play();
      if (!Filthy.isPlaying()) {
          Filthy.rewind();
        }
    }
    if (mouseX > 190 && mouseX <= 280 && mouseY > 40 && mouseY <= 80) {
      textSize(18);
    } else {
  textSize(16);
    }
  text(s2, 200, 50, 100, 100);
  
  
  
  String s3 = "CryMeARiver";
  fill(204, 204, 255);
  rect(390, 40, 115, 40, 7);
  fill(255, 0, 0);
  if (mouseX > 390 && mouseX <= 505 && mouseY > 40 && mouseY <= 80 && mousePressed) {
      //stroke(2);
      fill(51, 255, 204);
      rect(390, 40, 115, 40, 7);
      Cry.play();
      if (!Cry.isPlaying()) {
          Cry.rewind();
        }
    }
    if (mouseX > 390 && mouseX <= 505 && mouseY > 40 && mouseY <= 80) {
      //stroke(2);
      //fill(0, 255, 255);
      textSize(18);
    } else {
     textSize(16);
    }
  text(s3, 400, 50, 170, 200);
  
  
  String s4 = "TKO";
  fill(255, 153, 51);
  rect(590, 40, 100, 40, 7);
  fill(0, 0, 204);
  if (mouseX > 590 && mouseX <= 690 && mouseY > 40 && mouseY <= 80 && mousePressed) {
      //stroke(2);
      fill(208, 255, 51);
      rect(590, 40, 100, 40, 7);
       TKO.play();
      if (!TKO.isPlaying()) {
          TKO.rewind();
        }
    } 
    if (mouseX > 590 && mouseX <= 690 && mouseY > 40 && mouseY <= 80) {
      //stroke(2);
      //fill(0, 255, 255);
      textSize(18);
    } else {
     textSize(16);
    }
  text(s4, 600, 50, 70, 100);
  
  String s5 = "Drum";
  fill(255, 102, 102);
  rect(40, 140, 80, 40, 7);
  fill(0, 255, 128);
  if (mouseX > 40 && mouseX <= 120 && mouseY > 140 && mouseY <= 180 && mousePressed) {
      //stroke(2);
      fill(51, 119, 255);
      rect(40, 140, 80, 40, 7);
      
    }
  if (mouseX > 40 && mouseX <= 120 && mouseY > 140 && mouseY <= 180) {
      //stroke(2);
      //fill(0, 255, 255);
      textSize(18);
    } else {
     textSize(16);
    }
  text(s5, 50, 150, 90, 100);
  
  String s6 = "Triangle2";
  fill(20, 225, 180);
  rect(190, 140, 100, 40, 7);
  fill(108, 17, 146);
  if (mouseX > 190 && mouseX <= 290 && mouseY > 140 && mouseY <= 180 && mousePressed) {
      //stroke(2);
      fill(204, 102, 255);
      rect(190, 140, 100, 40, 7);
    }
  if (mouseX > 190 && mouseX <= 290 && mouseY > 140 && mouseY <= 180) {
      //stroke(2);
      //fill(0, 255, 255);
      textSize(18);
    } else {  
     textSize(16);
    }
  text(s6, 200, 150, 120, 100);
  
  String s7 = "NotABadThing";
  fill(242, 212, 15);
  rect(390, 140, 130, 40, 7);
  fill(46, 76, 228);
  if (mouseX > 390 && mouseX <= 520 && mouseY > 140 && mouseY <= 180 && mousePressed) {
      //stroke(2);
      fill(102, 255, 102);
      rect(390, 140, 130, 40, 7);
      Not.play();
//      if (!Not.isPlaying()) {
//          Not.rewind();
//        }
    }
    if (mouseX > 390 && mouseX <= 520 && mouseY > 140 && mouseY <= 180) {
      //stroke(2);
      //fill(0, 255, 255);
      textSize(18);
    } else {
      textSize(16);
    }
  text(s7, 400, 150, 170, 200);
 
  String s8 = "Cymbal2";
  //fill(23, 162, 70);
  fill(204, 153, 255);
  rect(590, 140, 110, 40, 7);
  fill(23, 162, 70);
  if (mouseX > 590 && mouseX <= 700 && mouseY > 140 && mouseY <= 180 && mousePressed) {
      //stroke(2);
      fill(255, 51, 153);
      rect(590, 140, 110, 40, 7);
    } 
    if (mouseX > 590 && mouseX <= 700 && mouseY > 140 && mouseY <= 180) {
      //stroke(2);
      //fill(0, 255, 255);
      textSize(18);
    } else {
     textSize(16);
   }
  text(s8, 600, 150, 90, 100);
  
  String s9 = "Stop";
  fill(255, 255, 255);
  rect(730, 100, 60, 40, 7);
  fill(255, 0, 0);
  if (mouseX > 730 && mouseX <= 790 && mouseY > 100 && mouseY <= 140 && mousePressed) {
    fill(0, 128, 255);
    rect(730, 100, 60, 40, 7);
    if (Mirrors.isPlaying()) {
      Mirrors.pause();
      Mirrors.rewind();
    } else if (Filthy.isPlaying()) {
      Filthy.pause();
      Filthy.rewind();
    } else if(TKO.isPlaying()) {
      TKO.pause();
      TKO.rewind();
    } else if(Not.isPlaying()) {
      Not.pause();
      Not.rewind();
    } else if(Cry.isPlaying()) {
      Cry.pause();
      Cry.rewind();
    }
  }
  text(s9, 740, 110, 90, 100);
  
} // draw function


void stop() {
  C3.close(); D3.close(); E3.close();
  F3.close(); G3.close(); A3.close();
  B3.close(); C4.close(); D4.close();
  E4.close(); F4.close(); G4.close();
  A4.close(); B4.close(); C5.close();
  Db3.close(); Eb3.close(); Gb3.close();
  Ab3.close(); Bb3.close(); Db4.close();
  Eb4.close(); Gb4.close(); Ab4.close(); Bb4.close();
  Mirrors.close();
  minim.stop();
  super.stop(); // makes sure all the normal cleanup routines are done
}
