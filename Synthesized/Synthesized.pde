
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
int whthght = 325;
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
  size(512, 424);
  background(190, 190, 190);
  minim = new Minim(this);
  C3 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.pp.C3.mp3");
  Cthree = new pKey(0,whthght, width/15, height/3, C3, true);
  D3 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.pp.D3.mp3");
  Dthree = new pKey(width/15,whthght, width/15, height/3, D3, true);
  E3 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.pp.E3.mp3");
  Ethree = new pKey(2*width/15,whthght,width/15, height/3, E3, true);
  F3 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.ff.F3.mp3");
 Fthree = new pKey(3*width/15,whthght, width/15, height/3, F3, true);
  G3 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.pp.G3.mp3");
  Gthree = new pKey(4*width/15,whthght, width/15, height/3, G3, true);
  A3 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.pp.A3.mp3");
  Athree = new pKey(5*width/15,whthght, width/15, height/3, A3, true);
  B3 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.mf.B3.mp3");
  Bthree = new pKey(6*width/15,whthght, width/15, height/3, B3, true);
  C4 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.mf.C4.mp3");
  Cfour = new pKey(7*width/15,whthght, width/15, height/3, C4, true);
  D4 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.mf.D4.mp3");
  Dfour = new pKey(8*width/15,whthght, width/15, height/3, D4, true);
  E4 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.mf.E4.mp3");
  Efour = new pKey(9*width/15,whthght, width/15, height/3, E4, true);
  F4 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.mf.F4.mp3");
  Ffour = new pKey(10*width/15,whthght, width/15, height/3, F4, true);
  G4 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.mf.G4.mp3");
  Gfour = new pKey(11*width/15,whthght, width/15, height/3, G4, true);
  A4 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.ff.A4.mp3");
   Afour = new pKey(12*width/15,325, width/15, height/3, A4, true);
  B4 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.ff.B4.mp3");
  Bfour = new pKey(13*width/15,whthght, width/15, height/3, B4, true);
  C5 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.ff.C5.mp3");
  Cfive = new pKey(14*width/15,whthght, width/15, height/3, C5, true);
  // black keys loading
  Db3 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.ff.Db3.mp3");
  Dbthree = new pKey( 2* width/45,whthght, width/30, height/8, Db3, false);
  Eb3 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.ff.Eb3.mp3");
  Ebthree = new pKey(5*width/45,whthght, width/30, height/8, Eb3, false);
  Gb3 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.ff.Gb3.mp3");
  Gbthree = new pKey(11*width/45,whthght, width/30, height/8, Gb3, false);
  Ab3 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.ff.Ab3.mp3");
  Abthree = new pKey(14*width/45,whthght, width/30, height/8, Ab3, false);
  Bb3 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.ff.Bb3.mp3");
  Bbthree = new pKey(17*width/45,whthght, width/30, height/8, Bb3, false);
  Db4 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.ff.Db4.mp3");
  Dbfour = new pKey(23*width/45,whthght, width/30, height/8, Db4, false);
  Eb4 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.ff.Eb4.mp3");
  Ebfour = new pKey(26*width/45,whthght, width/30, height/8, Eb4, false);
  Gb4 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.ff.Gb4.mp3");
  Gbfour = new pKey(32*width/45,whthght, width/30, height/8, Gb4, false);
  Ab4 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.pp.Ab4.mp3");
  Abfour = new pKey(35*width/45,whthght, width/30, height/8, Ab4, false);
  Bb4 = minim.loadSnippet("Desktop/sounds_bites/notes/Piano.pp.Bb4.mp3");
  Bbfour = new pKey(38*width/45,whthght, width/30, height/8, Bb4, false);
  
  
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
  Afour.display();
  Cthree.display();
  Dthree.display();
  Ethree.display();
  Fthree.display();
  Gthree.display();
  Athree.display();
  Bthree.display();
  Cfour.display();
  Dfour.display();
  Efour.display();
  Ffour.display();
  Gfour.display();
  Bfour.display();
  Cfive.display();
  Dbthree.display();
  Ebthree.display();
  Gbthree.display();
  Abthree.display();
  Bbthree.display();
  Dbfour.display();
  Ebfour.display();
  Gbfour.display();
  Abfour.display();
  Bbfour.display();
  
  fingers.setThreshold(threshold);
  int[] depthMap = kinect.depthMap();
  fingers.update(depthMap);

  stroke(0,255,0);

  
  fill(255,0,0);
  for (int i = 0; i < fingers.getNumFingers(); i++) {
    int x = (int)fingers.getFingerX(i);
   int y = (int)fingers.getFingerY(i);
  ellipse(x-5, y -5, 10, 10);
   Afour.check(x, y);
   Afour.check_rewind();
   Cthree.check(x, y);
  Dthree.check(x, y);
  Ethree.check(x, y);
Fthree.check(x,y);
Fthree.check_rewind();
Gthree.check(x,y);
Gthree.check_rewind();
Athree.check(x,y);
Athree.check_rewind();
Bthree.check(x,y);
Bthree.check_rewind();
Cfour.check(x,y);
Cfour.check_rewind();
Dfour.check(x,y);
Dfour.check_rewind();
Efour.check(x, y);
Efour.check_rewind();
Ffour.check(x, y);
Ffour.check_rewind();
Gfour.check(x,y);
Gfour.check_rewind();
Bfour.check(x,y);
Bfour.check_rewind();
Cfive.check(x,y);
Cfive.check_rewind();
  Cthree.check_rewind();
  Dthree.check_rewind();
  Ethree.check_rewind();
  Dbthree.check_rewind();
  Dbthree.check(x,y);
  Ebthree.check(x,y);
  Ebthree.check_rewind();
  Gbthree.check(x,y);
  Gbthree.check_rewind();
  Abthree.check(x,y);
  Abthree.check_rewind();
  Bbthree.check(x,y);
  Bbthree.check_rewind();
  Dbfour.check(x,y);
  Dbfour.check_rewind();
  Ebfour.check(x,y);
  Ebfour.check_rewind();
  Gbfour.check(x,y);
  Gbfour.check_rewind();
  Abfour.check(x,y);
  Abfour.check_rewind();
  
 }

 
}

void keyPressed(){
  if(key == '-'){
    threshold -= 10;
  }
  
  if(key == '='){
    threshold += 10;
  }


}

