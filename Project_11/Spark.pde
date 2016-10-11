//creates the shape that is used for the spark function in main window

void Spark (float x, float y) { 
  stroke(random(255));
  strokeWeight(1);
  line(x, y, x, y + 40);
  line( x -10, y + 20, x + 10, y+ 20);
  line( x - 7, y + 13, x + 7, y+ 28);
  line( x + 7, y + 13, x - 7, y + 28);
  
  
  
}