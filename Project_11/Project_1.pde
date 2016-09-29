void setup() {
  size(1000,1000);
  background(0);
 
  //three different sized ellipses will constantly be seen on the screen
   smallestellipse();
   middleellipse();
   largeellipse();
 

}

void draw() {
  //Multiple snowflake shapes will appear when the mouse is clicked
 if(mousePressed) {
   sparkles(random(50), random(50));
}
  
   
   
}
//Create a function that will create a line shaped diamond
void sparkles (float p, float o) {
  frameRate(15);
 for ( p = random(50);p<width; p +=random(500))  {
   for( o = random(50); o <height; o+=random(500)) {
     //create yellow lines that will be put together to make a snowflake like shape
  stroke(255, 255,0, 90);
  line(p, o, p +15, o +15);
  line(p +15, o,  p , o+15 );
  line(p+7.5, o-10,p +7.5, o+25);
   }
 }
}
//create a function that will create ellipses
void smallestellipse(){
 
   //for loop for smallest ellipses
   //variable c and d stand for the x and y coordinates
    for(int c = 50; c <width; c += random(200)) {
     for(int d =50; d<height; d += random(200)){
      noStroke();
      fill(255, 260); //has an opacity of 260 and the color white
      ellipse(c, d, 25,25);
     }
    }
}

void middleellipse(){
  //for loops for smaller white ellipses
   for( int x = 0; x < width; x+=random(250)){
    for(int y = 0; y <height; y+=random(250)){
     noStroke();
     fill(232,232,232,150); //has an opacity of 150 and is the color gray
     ellipse(x,y,50,50);
    }
   }
}

void largeellipse() {
   //for loops for larger ellipses
   for(int a = 50; a < width; a += random(300)) {
    for(int b = 50; b < height; b += random(300)) {
     noStroke();
     fill(254,252,255,40); //has an opacity of 40 and is a darker gray
     ellipse(a, b, 100,100);
    }
   }
 
}