/*
 * Course: ART 22  - Computer Programming for the Arts
 * Assignment: Week 4 Practice 1 FunctionsAndExpandedCinema
 *
 * by Yanwen Chen
 *
 * Initiated: 2022/04/19
 * Last updated: 2022/04/23
 *
 * CITATIONS: List all sources you used for this assignment.
 * http://learningprocessing.com/examples/chp10/example-10-04-timer
 *
 * NOTE: This is where you write any notes you would like
 * to leave yourself or others using your code.
 *
 * Try to make the food fall down randomly, and let the panda get the food, and the background decoration panda just keeps doing the circular motion <33
 *
 * */


PImage img0;
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;
PImage img8;
PImage img9;
PImage img10;
PImage img11;
PImage img12;
PImage img13;
PImage img14;
PImage img15;
PImage img16;
PImage img17;
PImage img18;
PImage img19;
PImage img20;
PImage img21;

float imageX;
float temp;
float randomMotionX, randomMothionY;

int savedTime;
int totalTime = 1000;
int passedTime;

int constant = 350;
float angle = 0.05;
int scalar = 160;
float speed = 0.025;

float Circularx;
float Circulary;


void setup() {
  size(800, 800);
  img0=loadImage("img0.png");
  img1=loadImage("img1.jpg");
  img2=loadImage("img2.jpg");
  img3=loadImage("img3.jpg");
  img4=loadImage("img4.jpg");
  img5=loadImage("img5.jpg");
  img6=loadImage("img6.jpg");
  img7=loadImage("img7.jpg");
  img8=loadImage("img8.jpg");
  img9=loadImage("img9.jpg");
  img10=loadImage("img10.jpg");
  img11=loadImage("img11.jpg");
  img12=loadImage("img12.jpg");
  img13=loadImage("img13.jpg");
  img14=loadImage("img14.jpg");
  img15=loadImage("img15.jpg");
  img16=loadImage("img16.jpg");
  img17=loadImage("img17.jpg");

  img21=loadImage("img21.png");

  imageX = -img0.width;

  savedTime = millis();

  smooth();
}


void draw() {
  background(#ffc8d2);


  //panda in the bottom will move from left to right linearly
  imageX = (imageX + 1) % width;
  image(img0, imageX, 500);


  //panda head gonna move circularly in the middle
  Circularx = constant + sin(angle) * scalar;
  Circulary = constant + cos(angle) * scalar;
  image(img21, Circularx, Circulary);
  angle = angle + speed;



  //get a random number from 1 to 17
  temp=int(random(1, 18));

  //width of all of images are 320, margin is 30
  //so x should be in range(30,450)
  randomMotionX=random(30, 450);
  //just make the image in half upper
  randomMothionY=30;

  // Calculate how much time has passed
  passedTime = millis() - savedTime;

  // Has 1 second passed?
  if (passedTime > totalTime) {

    //get the random image and put it on the left
    //according to the random number we got
    if (temp==1) {
      image(img1, randomMotionX, randomMothionY );
    } else if (temp==2) {
      image(img2, randomMotionX, randomMothionY );
    } else if (temp==3) {
      image(img3, randomMotionX, randomMothionY );
    } else if (temp==4) {
      image(img4, randomMotionX, randomMothionY );
    } else if (temp==5) {
      image(img5, randomMotionX, randomMothionY );
    } else if (temp==6) {
      image(img6, randomMotionX, randomMothionY );
    } else if (temp==7) {
      image(img7, randomMotionX, randomMothionY );
    } else if (temp==8) {
      image(img8, randomMotionX, randomMothionY );
    } else if (temp==9) {
      image(img9, randomMotionX, randomMothionY );
    } else if (temp==10) {
      image(img10, randomMotionX, randomMothionY );
    } else if (temp==11) {
      image(img11, randomMotionX, randomMothionY );
    } else if (temp==12) {
      image(img12, randomMotionX, randomMothionY );
    } else if (temp==13) {
      image(img13, randomMotionX, randomMothionY );
    } else if (temp==14) {
      image(img14, randomMotionX, randomMothionY );
    } else if (temp==15) {
      image(img15, randomMotionX, randomMothionY );
    } else if (temp==16) {
      image(img16, randomMotionX, randomMothionY );
    } else {
      image(img17, randomMotionX, randomMothionY );
    }

    // Save the current time to restart the timer!
    savedTime = millis();
  }
}
