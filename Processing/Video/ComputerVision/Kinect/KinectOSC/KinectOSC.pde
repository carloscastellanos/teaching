/**
Processing Kinect to OSC Example
Author: Carlos Castellanos

Info: This sketch demonstrates how to use Processing with the Kinect and OSC
*/

//Import the P5 OSC library
import oscP5.*;
import netP5.*;
import KinectPV2.KJoint;
import KinectPV2.*;

// Kinect object
KinectPV2 kinect;

//create OSC and NetAddress objects and set the ip address & ports
OscP5 oscP5;
NetAddress myRemoteLocation;
final int sendPort = 50000;
final int receivePort = 50001;
final String ip = "127.0.0.1";

//Create a global variable to hold our data
final int numDimensions = 3;
float[] data = new float[numDimensions];

void setup() {
  size(1920, 1080, P3D);
  
  /* start oscP5, listening for incoming messages at port 50001 */
  oscP5 = new OscP5(this, receivePort);
  
  /* myRemoteLocation is a NetAddress. a NetAddress takes 2 parameters,
   * an ip address and a port number. myRemoteLocation is used as parameter in
   * oscP5.send() when sending osc packets to another computer, device, 
   * application. usage see below. for testing purposes the listening port
   * and the port of the remote location address are the same, hence you will
   * send messages back to this sketch.
   */
  myRemoteLocation = new NetAddress(ip, sendPort);

  kinect = new KinectPV2(this);

  kinect.enableSkeletonColorMap(true);
  kinect.enableColorImg(true);
  kinect.enableSkeleton3DMap(true);

  kinect.init();
}

void draw() {
  background(0);

  image(kinect.getColorImage(), 0, 0, width/2, height/2);

  ArrayList<KSkeleton> skeletonArray =  kinect.getSkeletonColorMap();
  ArrayList<KSkeleton> skeleton3dArray =  kinect.getSkeleton3d();

  //individual JOINTS
  for (int i = 0; i < skeletonArray.size(); i++) {
    KSkeleton skeleton = (KSkeleton) skeletonArray.get(i);
    if (skeleton.isTracked()) {
      KJoint[] joints = skeleton.getJoints();

      color col  = skeleton.getIndexColor();
      fill(col);
      stroke(col);
      drawBody(joints);

      //draw different color for each hand state
      drawHandState(joints[KinectPV2.JointType_HandRight]);
      drawHandState(joints[KinectPV2.JointType_HandLeft]);
    }
  }
  
  //individual JOINT depth
  for (int i = 0; i < skeleton3dArray.size(); i++) {
    KSkeleton skeleton3d = (KSkeleton) skeleton3dArray.get(i);
    if (skeleton3d.isTracked()) {
      KJoint[] joints3d = skeleton3d.getJoints();

      println(i + " leftWristX:" + joints3d[KinectPV2.JointType_WristLeft].getX());
      println(i + " leftWristY:" + joints3d[KinectPV2.JointType_WristLeft].getY());
      println(i + " leftWristZ:" + joints3d[KinectPV2.JointType_WristLeft].getZ());
      
      println(i + " rightWristX:" + joints3d[KinectPV2.JointType_WristLeft].getX());
      println(i + " rightWristY:" + joints3d[KinectPV2.JointType_WristLeft].getY());
      println(i + " rightWristZ:" + joints3d[KinectPV2.JointType_WristLeft].getZ());
      
      println(i + " headX:" + joints3d[KinectPV2.JointType_Head].getX());
      println(i + " headY:" + joints3d[KinectPV2.JointType_Head].getY());
      println(i + " headZ:" + joints3d[KinectPV2.JointType_Head].getZ());

      
      //Grab the skeleton data and send it via OSC
      data[0] = joints3d[KinectPV2.JointType_WristLeft].getX();
      data[1] = joints3d[KinectPV2.JointType_WristLeft].getY();
      data[2] = joints3d[KinectPV2.JointType_WristLeft].getZ();
      sendData(data, "/left_wrist");
      
      data[0] = joints3d[KinectPV2.JointType_WristRight].getX();
      data[1] = joints3d[KinectPV2.JointType_WristRight].getY();
      data[2] = joints3d[KinectPV2.JointType_WristRight].getZ();
      sendData(data, "/right_wrist");
    }
  }

  fill(255, 0, 0);
  text(frameRate, 50, 50);
}

/**
 This function sends the data out via OSC.
*/
void sendData(float[] data, String addr) {
  OscMessage msg = new OscMessage(addr);
    
  for(int i=0; i<data.length; i++){
    msg.add(data[i]);
  }
  oscP5.send(msg, myRemoteLocation); 
}
  
void handState(int handState) {
  switch(handState) {
  case KinectPV2.HandState_Open:
    fill(0, 255, 0);
    break;
  case KinectPV2.HandState_Closed:
    fill(255, 0, 0);
    break;
  case KinectPV2.HandState_Lasso:
    fill(0, 0, 255);
    break;
  case KinectPV2.HandState_NotTracked:
    fill(255, 255, 255);
    break;
  }
}
void drawJoint(KJoint[] joints, int jointType) {
  pushMatrix();
  translate(joints[jointType].getX(), joints[jointType].getY(), joints[jointType].getZ());
  ellipse(0, 0, 25, 25);
  popMatrix();
}
void drawHandState(KJoint joint) {
  noStroke();
  handState(joint.getState());
  pushMatrix();
  translate(joint.getX(), joint.getY(), joint.getZ());
  ellipse(0, 0, 70, 70);
  popMatrix();
}

//draw bone
void drawBone(KJoint[] joints, int jointType1, int jointType2) {
  pushMatrix();
  translate(joints[jointType1].getX(), joints[jointType1].getY(), joints[jointType1].getZ());
  ellipse(0, 0, 25, 25);
  popMatrix();
  line(joints[jointType1].getX(), joints[jointType1].getY(), joints[jointType1].getZ(), joints[jointType2].getX(), joints[jointType2].getY(), joints[jointType2].getZ());
}
void drawBody(KJoint[] joints) {
  drawBone(joints, KinectPV2.JointType_ShoulderRight, KinectPV2.JointType_ElbowRight);
  drawBone(joints, KinectPV2.JointType_ElbowRight, KinectPV2.JointType_WristRight);
  drawBone(joints, KinectPV2.JointType_WristRight, KinectPV2.JointType_HandRight);
  drawBone(joints, KinectPV2.JointType_HandRight, KinectPV2.JointType_HandTipRight);
  drawBone(joints, KinectPV2.JointType_WristRight, KinectPV2.JointType_ThumbRight);

  // Left Arm
  drawBone(joints, KinectPV2.JointType_ShoulderLeft, KinectPV2.JointType_ElbowLeft);
  drawBone(joints, KinectPV2.JointType_ElbowLeft, KinectPV2.JointType_WristLeft);
  drawBone(joints, KinectPV2.JointType_WristLeft, KinectPV2.JointType_HandLeft);
  drawBone(joints, KinectPV2.JointType_HandLeft, KinectPV2.JointType_HandTipLeft);
  drawBone(joints, KinectPV2.JointType_WristLeft, KinectPV2.JointType_ThumbLeft);
  
  //Head
  drawBone(joints, KinectPV2.JointType_Head, KinectPV2.JointType_Neck);
}

/* incoming osc message are forwarded to the oscEvent method. */
void oscEvent(OscMessage theOscMessage) {
  /* print the address pattern and the typetag of the received OscMessage */
  print("### received an osc message.");
  print(" addrpattern: "+theOscMessage.addrPattern());
  println(" typetag: "+theOscMessage.typetag());
}
