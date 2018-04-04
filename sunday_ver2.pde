import processing.video.*;

Capture cam;

int rectX, rectY;      // Position of square button
int rect1X, rect1Y;      // Position of square button
int rect2X, rect2Y; 
int rect3X, rect3Y;
int rect4X, rect4Y;
int rect5X, rect5Y;
int rect6X, rect6Y;
int rect7X, rect7Y;
int rect8X, rect8Y;
int rect9X, rect9Y;
int rect10X, rect10Y;

int rectSize = 80;     // Diameter of rect

color rectColor,  baseColor;
//color rectHighlight;
color currentColor;

boolean rectOver = false;
boolean rect1Over = false;
boolean rect2Over = false;
boolean rect3Over = false;
boolean rect4Over = false;
boolean rect5Over = false;
boolean rect6Over = false;
boolean rect7Over = false;
boolean rect8Over = false;
boolean rect9Over = false;
boolean rect10Over = false;


PImage img1  ; //YEEZY
PImage img2  ; //BALENCIAGA
PImage img3  ; //
PImage img4  ; //
PImage img5  ; //
PImage img6  ; //
PImage img7  ; //
PImage img8  ; //
PImage img9  ; //
PImage img10 ; //

PImage screenshot ;



void setup() {
  fullScreen();
  //size(5000, 5000);
  rectColor = color(#366F5E);
  //rectHighlight = color(0);
 
  baseColor = color(#F0ADA3);
  currentColor = baseColor;

  rectX = 100;
  rectY = 800;
  
  rect1X = 200;
  rect1Y = 800;
  
  rect2X = 300;
  rect2Y = 800;
  
  rect3X = 400;
  rect3Y = 800;
  
  rect4X = 500;
  rect4Y = 800;
  
  rect5X = 600;
  rect5Y = 800;
  
  rect6X = 700;
  rect6Y = 800;
  
  rect7X = 800;
  rect7Y = 800;
  
  rect8X = 900;
  rect8Y = 800;
  
  rect9X = 1000;
  rect9Y = 800;
  
  rect10X = 1000;
  rect10Y = 800;
  
  //ellipseMode(CENTER);
   
  
  String[] cameras = Capture.list();
  
  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }
    
    // The camera can be initialized directly using an 
    // element from the array returned by list():
    cam = new Capture(this, cameras[0]);
    cam.start();   
   
  } 

 
   img1 = loadImage("shoe1.png");
   img2 = loadImage("shoe2.png");
   img3 = loadImage("shoe3.png");
   img4 = loadImage("shoe4.png");
   img5 = loadImage("shoe5.png");
   img6 = loadImage("shoe6.png");
   img7 = loadImage("shoe7.png");
   img8 = loadImage("shoe8.png");
   img9 = loadImage("shoe9.png");
   img10 = loadImage("shoe10.png");
   
   
}

void draw() {
  
   background(currentColor);
  
   if (cam.available() == true) {
    cam.read();
  }
  image(cam, 0, 0);
  

  update(mouseX, mouseY);
  
  
  if (rectOver) {
    //fill(rectHighlight);
    image(img1, 400, 230, 480, 320);
    

    
  } else {
    fill(rectColor);
  }
  stroke(255);
  rect(rectX, rectY, rectSize, rectSize);
  
  stroke(255);
  rect(rect1X, rect1Y, rectSize, rectSize);
  
    stroke(255);
  rect(rect2X, rect2Y, rectSize, rectSize);
  
      stroke(255);
  rect(rect3X, rect3Y, rectSize, rectSize);
  
       stroke(255);
  rect(rect4X, rect4Y, rectSize, rectSize);
  
         stroke(255);
  rect(rect5X, rect5Y, rectSize, rectSize);
  
           stroke(255);
  rect(rect6X, rect6Y, rectSize, rectSize);
  
             stroke(255);
  rect(rect7X, rect7Y, rectSize, rectSize);
  
               stroke(255);
  rect(rect8X, rect8Y, rectSize, rectSize);
  
                 stroke(255);
  rect(rect9X, rect9Y, rectSize, rectSize);
  
                   stroke(255);
  rect(rect10X, rect10Y, rectSize, rectSize);
  
          //image(img1,75,790,120,80);

  if (rect1Over) {
    //fill(rectHighlight);
    image(img2, 400, 230, 480, 320);
   
  } 
  
     //image(img2,180,785,120,80);
     
    if (rect2Over) {
    //fill(rectHighlight);
    image(img3, 400, 225, 480, 320);
  }
  
     //image(img3,285,785,120,80);
  
      if (rect3Over) {
    //fill(rectHighlight);
    image(img4, 400, 215, 480, 320);
  }
  
    //image(img4,386,783,120,80);
  
        if (rect4Over) {
    //fill(rectHighlight);
    image(img5, 400, 230, 480, 320);
  }
  
   //image(img5,475,790,120,80);
  
          if (rect5Over) {
    //fill(rectHighlight);
    image(img6, 405, 250, 480, 320);
  } 
  
     //image(img6,578,787,120,80);
  
            if (rect6Over) {
    //fill(rectHighlight);
    image(img7, 400, 250, 480, 320);
  }
  
      //image(img7,685,790,110,80);
  
              if (rect7Over) {  
    //fill(rectHighlight);
    image(img8, 400, 220, 480, 320);
  }
  
     //image(img8,780,785,120,80);
  
                if (rect8Over) {
    //fill(rectHighlight);
    image(img9, 400, 250, 480, 320);
  }
  
  //image(img9,886,790,110,80);
  
                  if (rect9Over) {
    //fill(rectHighlight);
    image(img10, 400, 200, 480, 320);
  }
  
    //image(img10,986,775,110,80);
    
}

void update(int x, int y) {
 
  if ( overRect(rectX, rectY, rectSize, rectSize) ) {
    rectOver = true;

    
   } else if ( overRect(rect1X, rect1Y, rectSize, rectSize) ) {
    rect1Over = true;
    
   } else if ( overRect(rect2X, rect2Y, rectSize, rectSize) ) {
    rect2Over = true;
    
       } else if ( overRect(rect3X, rect3Y, rectSize, rectSize) ) {
    rect3Over = true;
    
           } else if ( overRect(rect4X, rect4Y, rectSize, rectSize) ) {
    rect4Over = true;
    
               } else if ( overRect(rect5X, rect5Y, rectSize, rectSize) ) {
    rect5Over = true;
    
                   } else if ( overRect(rect6X, rect6Y, rectSize, rectSize) ) {
    rect6Over = true;
    
                       } else if ( overRect(rect7X, rect7Y, rectSize, rectSize) ) {
    rect7Over = true;
    
                           } else if ( overRect(rect8X, rect8Y, rectSize, rectSize) ) {
    rect8Over = true;
    
                               } else if ( overRect(rect9X, rect9Y, rectSize, rectSize) ) {
    rect9Over = true;

    
  } else {
    rectOver = false;
       rect1Over = false;
       rect2Over = false;
       rect3Over = false;
       rect4Over = false;
       rect5Over = false;
       rect6Over = false;
       rect7Over = false;
       rect8Over = false;
       rect9Over = false;
  }
 
  
  //if (rectOver) {
  //  currentColor = rectColor;
   
  //}
}

boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

void mouseClicked() {
  fullScreen();
  saveFrame("png/line-####################.png");
  //save("Users/Savaya/sunday_ver2/png.png");
  
}
