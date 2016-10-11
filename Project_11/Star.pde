class Star {
  float a = random(1000);
  float y = random(-height);

  void fall() {
    y = y + 7;
    fill(0,10,200,180);
    display();
    
//determines where the stars will fall
   if(y>height){
   a = random(1000);
   y = random(-200);
   }

  }
 //creates the star shape that is used in the star dropping function (when key e is pressed)
  void display(){
   pushMatrix();
   translate(a,y);
   fill(random(255),random(250),random(101));
   beginShape();
   vertex(a,y);
   vertex(a + 5, y + 10);
   vertex( a + 15, y + 10);
   vertex(a + 10, y + 20);
   vertex( a + 13, y + 30);
   vertex( a, y + 25);
   vertex(a - 13, y + 30);
   vertex( a - 10, y + 20);
   vertex( a - 15, y + 10);
   vertex(a - 5, y + 10);
   endShape(CLOSE);
   popMatrix();
  }
}