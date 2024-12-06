class User{
  //instance variables
  PVector center;
  int userSize;
  int userSpeed;
  int Lives;
  color user;
  boolean alive;
  
  User(color c, int size, int l, PVector p){
    user = c;
    fill(user);
    userSize = size;
    Lives = l;
    center = p;
  }//constructor
  
  void shoot(int projectileSpeed){
    //launches a projectile
  } //shoot
  
  void moving(int s){
    //moves the grid based on speed s
    center.x += s;
  }//moving
  
  void display(){
    
  }//display
  
  boolean collisionCheck(projectile other){ //we'll need a PROJECTILE class
    //check the distance between the centers
    return ( this.center.dist(other.center)
       <= (this.userSize/2 + other.bsize/2) );
  }//collisionCheck
  
  void updateLives(){
    if(alive == false){
      Lives -= 1;
    }
  }
  
}//User
