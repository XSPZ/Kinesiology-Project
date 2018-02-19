
import ddf.minim.*;
import fingertracker.*;
import SimpleOpenNI.*;
pKey Afour;
pKey Cthree;
pKey Dthree;
pKey Ethree;
pKey Fthree;
pKey Gthree;
pKey Athree;
pKey Bthree;
pKey Cfour;
pKey Dfour;
pKey Efour;
pKey Ffour;
pKey Gfour;
pKey Bfour;
pKey Cfive;
pKey Dbthree;
pKey Ebthree;
pKey Gbthree;
pKey Abthree;
pKey Bbthree;
pKey Dbfour;
pKey Ebfour;
pKey Gbfour;
pKey Abfour;
pKey Bbfour;

pKey[] all_keys = {Afour,Cthree,Dthree, Ethree, Fthree,
 Gthree, Athree, Bthree,Cfour, Dfour, Efour,Ffour, Gfour,
 Bfour, Cfive, Dbthree, Ebthree, Gbthree, Abthree, Bbthree, Dbfour, Ebfour,
 Gbfour, Abfour, Bbfour};

FingerTracker fingers;
SimpleOpenNI kinect;
int threshold = 600;

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

Minim minim;

void setup(){
  
  kinect = new SimpleOpenNI(this);
  kinect.setMirror(true);
  kinect.enableDepth();
  fingers = new FingerTracker(this, 640, 480);
  size(800, 600);
  background(190, 190, 190);
  minim = new Minim(this);
  C3 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.pp.C3.mp3");
  Cthree = new pKey(0,40, 800/15, 40, C3, true);
  D3 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.pp.D3.mp3");
  Dthree = new pKey(width/15,40, 800/15, 40, D3, true);
  E3 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.pp.E3.mp3");
  Ethree = new pKey(2*width/15,40,800/15, 40, E3, true);
  F3 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.ff.F3.mp3");
 Fthree = new pKey(3*width/15,40, 800/15, 40, F3, true);
  G3 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.pp.G3.mp3");
  Gthree = new pKey(4*width/15,40, 800/15, 40, G3, true);
  A3 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.pp.A3.mp3");
  Athree = new pKey(5*width/15,40, 800/15, 40, A3, true);
  B3 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.mf.B3.mp3");
  Bthree = new pKey(6*width/15,40, 800/15, 40, B3, true);
  C4 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.mf.C4.mp3");
  Cfour = new pKey(7*width/15,40, 800/15, 40, C4, true);
  D4 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.mf.D4.mp3");
  Dfour = new pKey(8*width/15,40, 800/15, 40, D4, true);
  E4 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.mf.E4.mp3");
  Efour = new pKey(9*width/15,40, 800/15, 40, E4, true);
  F4 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.mf.F4.mp3");
  Ffour = new pKey(10*width/15,40, 800/15, 40, F4, true);
  G4 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.mf.G4.mp3");
  Gfour = new pKey(11*width/15,40, 800/15, 40, G4, true);
  A4 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.ff.A4.mp3");
   Afour = new pKey(12*width/15,40, 800/15, 40, A4, true);
  B4 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.ff.B4.mp3");
  Bfour = new pKey(13*width/15,40, 800/15, 40, B4, true);
  C5 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.ff.C5.mp3");
  Cfive = new pKey(14*width/15,40, 800/15, 40, C5, true);
  // black keys loading
  Db3 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.ff.Db3.mp3");
  Dbthree = new pKey(20,40, 35, 100, Db3, false);
  Eb3 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.ff.Eb3.mp3");
  Ebthree = new pKey(20,40, 35, 100, Eb3, false);
  Gb3 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.ff.Gb3.mp3");
  Gbthree = new pKey(20,40, 35, 100, Gb3, false);
  Ab3 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.ff.Ab3.mp3");
  Abthree = new pKey(20,40, 35, 100, Ab3, false);
  Bb3 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.ff.Bb3.mp3");
  Bbthree = new pKey(20,40, 35, 100, Bb3, false);
  Db4 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.ff.Db4.mp3");
  Dbfour = new pKey(20,40, 35, 100, Db4, false);
  Eb4 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.ff.Eb4.mp3");
  Ebfour = new pKey(20,40, 35, 100, Eb4, false);
  Gb4 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.ff.Gb4.mp3");
  Gbfour = new pKey(20,40, 35, 100, Gb4, false);
  Ab4 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.pp.Ab4.mp3");
  Abfour = new pKey(20,40, 35, 100, Ab4, false);
  Bb4 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.pp.Bb4.mp3");
  Bbfour = new pKey(20,40, 35, 100, Bb4, false);
  
  
  // background music
  Mirrors = minim.loadSnippet("Desktop/sounds_bites/notes/Mirrors.mp3");
  Filthy = minim.loadSnippet("Desktop/sounds_bites/notes/Filthy.mp3");
  Cry = minim.loadSnippet("Desktop/sounds_bites/notes/Cry_Me_A_River.mp3");
  TKO = minim.loadSnippet("Desktop/sounds_bites/notes/TKO.mp3");
}
void draw(){
 
  

kinect.update();
  PImage depthImage = kinect.depthImage();
  image(depthImage, 0, 0);

  fingers.setThreshold(threshold);
  int[] depthMap = kinect.depthMap();
  fingers.update(depthMap);

  stroke(0,255,0);

  
  fill(255,0,0);
  for (int i = 0; i < fingers.getNumFingers(); i++) {
    int x = (int)fingers.getFingerX(i);
    int y = (int)fingers.getFingerY(i);
   ellipse(x-5, y -5, 10, 10);
  }
  }
 //float musx= mouseX;
  //float musy= mouseY;

  //Afour.check(musx, musy);

    //if( x<= width/10 && y<=height/10)  {
    //  C3.play();
 //     }
   //   if(!C3.isPlaying()){
    //    C3.rewind();
  //    }
 // }
  
 // fill(255,0,0);
 // text(threshold, 10, 20);
//}

void keyPressed(){
  if(key == '-'){
    threshold -= 10;
  }
  
  if(key == '='){
    threshold += 10;
  }
 // C3.rewind();


}

