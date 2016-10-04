 //declared variables for the diamond shape colors
  int o = 50; //opacity for the diamond
  int c = 229; // 1st color for diamond
  int l = 253; //2nd color for diamond
  int r = 255; //3rd color for diamond
  int t= 40; // opacity for shine
 
 
 /*
 PROBLEMS TO SOLVE FOR NEXT TIME: 
 SHINE KEEPS CONGREGATING AT THE TOP AND BOTTOM
 WORK ON USING LESS RANDOM FUNCTIONS
 FIGURE OUT HOW TO MAKE THE CONFETTI FALL
 FIGURE OUT HOW TO HAVE SHAPES APPEAR WITHOUT ADDING KEYPRESS OR MOUSE FUNCTION
 
 */
 
void setup() {
  size(1000,1000);
  background(0);
 
  //three different sized ellipses will constantly be seen on the screen
   smallestellipse();
   middleellipse();
   largeellipse();
  
   
 
 
}

void draw() {
 
  
  //if mouse is pressed, diamond shapes will appear more and more each team and the opacity and color will change as well
 if (mousePressed){
   diamond (150, 60); 
 }
  //shine function coordinates start at q and w and if p key is pressed, the opacity will increase
  if (mousePressed){
   shine(); 
  
  }
 
 //if the r key is pressed, sparkle shapes will appear on the screen but must be stopped by pressing on another keyboard key
 
  if( key == 'r'){
  frameRate(10);
    sparkles(random(50), random(50));
  } else{
     
  }
//confetti(random(600), random(600));


   
}
//Using ellipse for now to get the function to work
//attempting to create a snowflake falling effect
void confetti(float k,float e) {
  for( k =0; k <width; k++) {
  for( e = 0; e < height; e ++){
    fill(255,0,0);
    ellipse(k, e, 4,4);
  }
    
  }
  
  
}
void shine () {
   float q;
  float w;

  for( q = 0; q < width; q += random (800) ) {
    for( w = 0; w < height; w+= random (800)){
  stroke( t +200, 237, 86,  t +10);
  strokeWeight(2);
  fill(255,237, 86, t);
  line(q, w ,q , w +60);
  line(q +10, w +30, q -10, w +30);
  line(q + 5, w +46, q -5, w +16);
  line(q -5, w +46, q +5, w +16);
  ellipse(q, w +30, 7, 7);
 
    }
  }
    
    


}


//Create diamond shaped shapes
 
  void diamond (int c, int l) {

     for ( float g = random(800); g < 1000; g+= random(5000)) {
      for (float h = random(800); h <1000; h+= random(5000)) {
        
    noStroke();  
    fill ( c, l, r, o);
    if(mousePressed){
     o = o+ 1; 
     c = c + 100;
     l = l + 100;
     r = r +100;
    }
    quad(g, h, g- 8, h + 15, g, h +35, g+8, h + 15);
   
       }
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
      fill(255, 180); //has an opacity of 180 and the color white
      ellipse(c, d, 25,25);
     }
    }
}

void middleellipse(){
  //for loops for smaller white ellipses
   for( int x = 0; x < width; x+=random(250)){
    for(int y = 0; y <height; y+=random(250)){
     noStroke();
     fill(232,232,232,120); //has an opacity of 150 and is the color gray
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
