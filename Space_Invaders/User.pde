class User{
  //instance variables
  PVector center;
  int userSize;
  int userSpeed;
  int Lives;
  color userColor;
  boolean alive;
  Projectile p;
  
  User(color c, int size, int l, PVector p){
    userColor = c;
    fill(userColor);
    userSize = size;
    Lives = l;
    center = p;
  }//constructor
  
  void shoot(){
    p = new Projectile(255, 10, center);
    
    //launches a projectile
  } //shoot
  
  void moving(int s){
    //moves the grid based on speed s
    center.x += s;
  }//moving
  
  void display(){
    square(center.x, center.y, userSize);
  }//display
  
  boolean collisionCheck(Projectile other){ //we'll need a PROJECTILE class
    //check the distance between the centers
    return ( this.center.dist(other.center)
       <= (this.userSize/2 + other.psize/2) );
  }//collisionCheck
  
  void updateLives(){
    if(alive == false){
      Lives -= 1;
      //needs a case for when lives = 0
    }
  }
  
}//User
