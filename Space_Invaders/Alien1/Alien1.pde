void setup(){
  size(140, 70);
}

void draw(){
  background(0);
  /*
  for (int y = 0; y < height; y +=10){
    stroke(255);
    line(0, y, width, y);
  }
  for (int x = 0; x < width; x +=10){
    stroke(255);
    line(x, 0, x, height);
  }
  */
  
  fill(255, 0, 0);
  stroke(255, 0, 0);
  rect(50, 0, 40, 10);
  rect(30, 10, 80, 10);
  rect(20, 20, 100, 10);
  rect(10, 30, 20, 10);
  rect(40, 30, 10, 10);
  rect(60, 30, 20, 10);
  rect(90, 30, 10, 10);
  rect(110, 30, 20, 10);
  rect(0, 40, 140, 10);
  rect(20, 50, 30, 10);
  rect(60, 50, 20, 10);
  rect(90, 50, 30, 10);
  rect(30, 60, 10, 10);
  rect(100, 60, 10, 10);
  save("Alien1.jpg");
}
