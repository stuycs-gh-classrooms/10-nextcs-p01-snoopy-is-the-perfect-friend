class Projectile{
  //instance variables
  PVector center;
  int psize;
  int pspeed;
  color pColor;
  
  Projectile(color c, int size, PVector p){
    pColor = c;
    fill(pColor);
    psize = size;
    center = p;
  }//constructor

  boolean collisionInvadersCheck(Invaders other){
    return ( this.center.dist(other.topLeft)
     <= (this.psize/2 + other.size/2) );
    }//collisionInvadersCheck()  
  
  boolean collisionUserCheck(User other){
    return ( this.center.dist(other.center)
     <= (this.psize/2 + other.userSize/2) );
    }//collisionUserCheck()  
  
  void setColor(color newC){
    pColor = newC;
  }//setColor()
  
  void display() {
    fill(pColor);
    circle(center.x, center.y, psize);
  }//display()
  
  void moving(int s){
    center.y -= s;
  }//moving
  
}
