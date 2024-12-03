class Invaders{
  //instance variables
  int[][] invaders; //creates a grid of invaders
  int invaderSize;
  PVector center;
  int invaderSpeed;
  
  
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
  
  boolean alive(int r, int c){ //invaders[r][c] should be a single invader in the grid
    if (invaders[r][c] == null){
      return false;
    }
    else{
      return true;
    }
  }//alive
  
}//Invaders
