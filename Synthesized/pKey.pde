import ddf.minim.*;
class pKey{
  float x;
  float y;
  float lowerx;
  float lowery;
  AudioSnippet note;
  boolean keytype;
  
 pKey(float tempx, float tempy, float tempx2, float tempy2, AudioSnippet tempnote, boolean tempKeytype){
   keytype = tempKeytype;
   
   x = tempx;
   y = tempy;
   lowerx = tempx2;
   lowery= tempy2;
   
   
   note = tempnote;
 }
   void display(){
     if(keytype == true){
       fill(255);
       rect(x, y,lowerx, lowery);
     }
     else{
       fill(0);
       rect(x, y, lowerx, lowery);
     }}
    void check(float xpos, float ypos){
      if(keytype== true){
      if(xpos >= x && xpos <= lowerx && ypos >= height - y/2 && ypos<= lowery){
       note.play();
     }}}
     void check_rewind(){
      if(!note.isPlaying()){
       note.rewind();
      } 
     
     
  
    }}
