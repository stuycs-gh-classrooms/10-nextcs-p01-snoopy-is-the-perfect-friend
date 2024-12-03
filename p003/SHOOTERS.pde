class Shooters{
  //instance variables
  PVector center;
  int shooterSize;
  int shooterSpeed;
  int Lives;
  
  
  void shoot(int projectileSpeed){
    //launches a projectile from a random invader in the grid
  } //shoot
  
  void moving(int s){
    //moves the grid based on speed s
  }//moving
  
  void display(){
    
  }//display
  
  boolean collisionCheck(projectile other){ //we'll need a PROJECTILE class
    //check the distance between the centers
  }//collisionCheck
  
  boolean alive(){
    if (collisionCheck(invaderProjectile)){
      return false;
    }
    else{
      return true;
    }
  }//alive
  
  void updateLives(){
    if(alive == false){
      Lives -= 1;
    }
  }
  
}//Shooters
