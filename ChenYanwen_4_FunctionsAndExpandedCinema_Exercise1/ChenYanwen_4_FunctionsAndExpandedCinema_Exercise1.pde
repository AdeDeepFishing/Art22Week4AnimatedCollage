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
int temp=1;
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



  // Calculate how much time has passed
  passedTime = millis() - savedTime;

  // Has 1 second passed?
  if (passedTime > totalTime) {

    randomMotionX=random(30, 450);
    randomMothionY=30;

    //get a random number from 1 to 17
    temp=int(random(1, 18));
    // Save the current time to restart the timer!
    savedTime = millis();
  }
  switch(temp) {
  case 1:
    image(img1, randomMotionX, randomMothionY );
    break;
  case 2:
    image(img2, randomMotionX, randomMothionY );
    break;
  case 3:
    image(img3, randomMotionX, randomMothionY );
    break;
  case 4:
    image(img4, randomMotionX, randomMothionY );
    break;
  case 5:
    image(img5, randomMotionX, randomMothionY );
    break;
  case 6:
    image(img6, randomMotionX, randomMothionY );
    break;
  case 7:
    image(img7, randomMotionX, randomMothionY );
    break;
  case 8:
    image(img8, randomMotionX, randomMothionY );
    break;
  case 9:
    image(img9, randomMotionX, randomMothionY );
    break;
  case 10:
    image(img10, randomMotionX, randomMothionY );
    break;
  case 11:
    image(img11, randomMotionX, randomMothionY );
    break;
  case 12:
    image(img12, randomMotionX, randomMothionY );
    break;
  case 13:
    image(img13, randomMotionX, randomMothionY );
    break;
  case 14:
    image(img14, randomMotionX, randomMothionY );
    break;
  case 15:
    image(img15, randomMotionX, randomMothionY );
    break;
  case 16:
    image(img16, randomMotionX, randomMothionY );
    break;
  case 17:
    image(img17, randomMotionX, randomMothionY );
    break;
  }
}
