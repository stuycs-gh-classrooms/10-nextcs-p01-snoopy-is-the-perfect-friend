class Invaders
{
  //instance variables
  int size;
  PVector center;
  int xspeed;
  int yspeed;
  color c;
  boolean alive;
  int type;
  
  
  Invaders(PVector p, int shootingChance, int numInRow)
  {
    center = new PVector(p.x, p.y);
    alive = true;
    type = int(random(0, 3));
  }//constructor
  
  void shoot(int projectileSpeed){
    print(projectileSpeed);
    //launches a projectile from a random invader in the grid
  } //shoot
  
  void move(){
    if (center.x > width - size/2 || center.x < size/2){
      xspeed *= -1;
    }
    if (center.y > height - size/2 || center.y < height/2){
      yspeed *= -1;
    }
    center.x += xspeed;
    center.y += yspeed;
  }//moving
  
  void display(){
    if (type == Alien0){
      image(img0, 0, 0); 
    }
    if (type == Alien1){
      image(img0, 0, 0); //change to img1 later
    }
    if (type == Alien2){
      image(img0, 0, 0); //change to img2 later
    }
  }//display
  
  void setColor(color newC){
    c = newC;
  }//setColor
  
}//Invaders
