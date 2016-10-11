Star s1; //declaring class and name for it
int numDrops = 30; //number of times the stars will drop down
Star[] drops = new Star[numDrops]; //replaces old number with new number of drop times
//declared variables for the diamond shape colors
int o = 50; //opacity for the diamond
int c = 229; // 1st color for diamond
int l = 253; //2nd color for diamond
int r = 255; //3rd color for diamond
int t= 40; // opacity for shine
int d; // variable coordinate x for disco function
int s; // variable coordinate y for disco function
int b = 232;// 1st color for disco
int n = 37; // 2nd color for disco
int m ; // 3rd color for disco (used with random function)
int num =50; // initial number for fairy array function
int [] x = new int [num]; // array variable for the x coordinate of fairy
int [] y = new int [num]; //array variable for the y coordinate of fairy


//Is an collection of different patterns that represent 'SPARKLE'
//for the full effect, press keys that spell out "SPARKLE" ! (Ex. press keys: 's','p','a'...etc.)

void setup() {
  size(1000, 1000);
  background(0);
  
  //for star confetti function
  noStroke(); //noStroke function for star function
  for (int i = 0; i < drops.length; i++) { //for loop function to create new stars

    drops[i] = new Star(); // Creates new star each time
    s1 = new Star(); // calling the class
  }
  //three different sized ellipses will constantly be seen on the screen
}


void draw() {
  background(0);



//If key s is pressed, a grid of circles will appear with changing colors 
//(circles will move if mouse is within the range of (200,200) or less)
  if (key == 's') { 
    disco();
  } 

  //if key e is pressed, the three different sized circles will show up 
  //and move in a frame rate of 1.75
  if (key == 'p') {
    frameRate(1.75);
    //these are all ellipse functions that are called
    smallestellipse(); 
    middleellipse();
    largeellipse();
  } 
  
  //if key d is pressed, diamond shapes will appear more and more each team 
  //and the opacity and color will change as well
  if (key == 'a') {
    frameRate (700);
    diamond (150, 60); //numbers inside the diamond function is for values R and G in RGB color
  }

  //if the r key is pressed, sparkle shapes will appear on the screen 
  if ( key == 'r') {
    sparkles(random(50), random(50)); // values inputted used for x and y coordinates
  }
  
  //if the k key is pressed, snowflake or shine like shapes will appear
  //the colors flash different and trails the user's mouse
  if ( key == 'k') {
     fairy(); 
  }
  
  //if the l key is pressed, shine like shapes will appear on the screen 
  //(very similar to sparkles but there is an extra shape included)
  if (key == 'l') {
    shine();
  } 
  
  //if the e key is pressed, stars that flash with different colors will 
  //appear and drop like a shower down the screen
  if ( key == 'e'){
      frameRate(50);
      fill(255,80);
      for (int q = 0; q < drops.length; q++) {
        drops[q].fall();
        }   //closer for star for loop
     } //closer for star if statement
} // closer for void draw


//function to create wand like shapes that follow user's mouse
void fairy(){
 for(int i = num -5; i >0; i--){ 
  x [i] = x [ i-1];
  y [i] = y [i -1];
  
 }// closer for i array for loop
  
 x [0] = mouseX;
 y [0] = mouseY;
 for( int i =0; i <num; i++) {
    noStroke();
    fill(random(105), random(110), random(100));
    Spark(x[i], y[i]);
 }// closer for i for loop
} //closer for fairy function


//function to create flashing ellipses
void disco() {
  float j;
  float y;
  frameRate(50);
  for ( j = 50; j <width; j+= 100) {
    for ( y = 50; y < height; y+=100) {
      ellipse(j, y, 50, 50);
      noStroke();
      fill(b, n, m);
      
   //if s key is pressed the R for RGB will increase by 10
    if (key == 's') {    
          if (m <= 255) {
            m += 10 ;
            
          } else {
            m = 0;
    //if the mouse is in the range of (200,200) or less the ellipses will move    
           if (mouseX <= 200 && mouseY <= 200) {
             frameRate(10);
              j += random(100);
              y += random(100);
               
             }//closer for mouse if statement
           } // closer for else and if statements for circles
         } // closer for mouse location if statement
       }// closer for height for loop
     } // closer for width for loop
   }//closer for disco function


//function that creates randomly moving shine shapes
void shine() {
    float q;
    float w;
    for ( q = 0; q < width; q += random (800) ) {
      for ( w = 0; w < height; w+= random (800)) {
        stroke( t +200, 237, 86, t +10);
        strokeWeight(2);
        fill(255, 237, 86, t);
        line(q, w, q, w +60);
        line(q +10, w +30, q -10, w +30);
        line(q + 5, w +46, q -5, w +16);
        line(q -5, w +46, q +5, w +16);
        ellipse(q, w +30, 7, 7);
        if (key == 'k') {
          q = q + random(1000);
        } // closer for if statement
      }// height for loop closer
    } // width for loop closer
  } // function closer


  //Create diamond shaped shapes
  void diamond (int c, int l) {
    for ( float g = random(800); g < 1000; g+= random(5000)) {
      for (float h = random(800); h <1000; h+= random(5000)) {
        noStroke();  
        fill ( c, l, r, o);
          if (key == 'a') { //if a key is pressed, the opacity will increase
            if ( o <= 255) {
              o += 10 ;
            } else {
              o = 0;
            } //closer for opacity rangle if statement
            
        //color values increase
          c = c + 250;
          l = l + 150;
          r = r +150;
        } //closer for opacity if statement
        //function for the shape used in function
        quad(g, h, g- 8, h + 15, g, h +35, g+8, h + 15);
      } //closer for height for loop
    } //closer for width for loop
  }//closer for diamond function


  //Create a function that will create a line shaped diamond
  void sparkles (float p, float o) {
    frameRate(10);
    for ( p = random(50); p<width; p +=random(500)) {
      for ( o = random(50); o <height; o+=random(500)) {
        //create yellow lines that will be put together to make a snowflake like shape
        stroke(255, 255, 0, 90);
        line(p, o, p +15, o +15);
        line(p +15, o, p, o+15 );
        line(p+7.5, o-10, p +7.5, o+25);
      }//closer for height for loop
    }//closer for width for loop
  } //closer for sparkles function
  
  
//ALL FUNCTIONS BELOW CREATE DIFFERENT SIZED ELLIPSES USED FOR ONE KEY PRESS

  //create a function that will create ellipses
  void smallestellipse() {
    //frameRate(15);
    //for loop for smallest ellipses
    //variable c and d stand for the x and y coordinates
    for (int c = 50; c <width; c += random(200)) {
      for (int d =50; d<height; d += random(200)) {
        noStroke();
        fill(255, 180); //has an opacity of 180 and the color white
        ellipse(c, d, 25, 25);
      } //closer for height for loop
    }// closer for width for loop
  } //closer for smallest ellipse function

  void middleellipse() {
    //frameRate(25);
    //for loops for smaller white ellipses
    for ( int x = 0; x < width; x+=random(250)) {
      for (int y = 0; y <height; y+=random(250)) {
        noStroke();
        fill(232, 232, 232, 120); //has an opacity of 150 and is the color gray
        ellipse(x, y, 50, 50);
      }//closer for height for loop
    }//closer for width for loop
  }//closer for middleellipses function

  void largeellipse() {
    //frameRate(35);
    //for loops for larger ellipses
    for (int a = 50; a < width; a += random(300)) {
      for (int b = 50; b < height; b += random(300)) {
        noStroke();
        fill(254, 252, 255, 40); //has an opacity of 40 and is a darker gray
        ellipse(a, b, 100, 100);
      }//closer for height for loop
    }//closer for width for loop
  }//closer for largeellipse function
