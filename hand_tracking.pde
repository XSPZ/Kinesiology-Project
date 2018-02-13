import SimpleOpenNI.*;
SimpleOpenNI  kinect;


void setup() {
  kinect = new SimpleOpenNI(this);
  kinect.enableDepth();

  // turn on user tracking
  kinect.enableUser();

  size(640, 480);
  fill(255, 0, 0);
}
void draw() {
  kinect.update();
  PImage depth = kinect.depthImage();
  image(depth, 0, 0);

  // draw the skeleton if it's available
  int[] userList = kinect.getUsers();
  for (int i=0; i<userList.length; i++)
  {

    int userId = userList[i];

    if (kinect.isTrackingSkeleton(userId))
    {

      // make a vector to store the left hand
      PVector rightHand = new PVector();
      kinect.getJointPositionSkeleton(userId, SimpleOpenNI.SKEL_LEFT_HAND, rightHand);
      PVector convertedRightHand = new PVector();
      kinect.convertRealWorldToProjective(rightHand, convertedRightHand);
      // from here we can use converted righthand.x(y or z) for hand tracking and can adjust accordingly
    }
  }
}
      
      
