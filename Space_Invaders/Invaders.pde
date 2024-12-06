class Invaders
{
  //instance variables
  int size;
  PVector center;
  int xspeed;
  int yspeed;
  color c;
  boolean alive;
  
  //constructor
  Invaders(PVector p, int shootingChance, int numInRow)
  {
    center = new PVector(p.x, p.y);
    alive = true;
  }
  
  
  void shoot(int projectileSpeed){
    
    //launches a projectile from a random invader in the grid
  } //shoot
  
  void move(){
    //moves based on speed s
  }//moving
  
  void display(){
    
  }//display
  
  boolean collisionCheck(Projectile bullet){ //we'll need a PROJECTILE class
    //check the distance between the centers
  }//collisionCheck
  
  void setColor(){
    c = newC;
  }//setColor()
  
}//Invaders
