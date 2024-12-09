class Invaders
{
  //instance variables
  int size; // length & height of each alien
  PVector topLeft; //coor of top left corner of each invader
  int xspeed = 1; //speed of movement in x direction
  int yspeed; //speed of movement in y direction
  boolean alive; //alive or dead status of the specific invader
  int type; //alien0, alien1, alien2
  PImage img0, img1, img2; //declared variable to store image of types of aliens
  int direction;
  int previousDirection;
  
  Invaders(PVector p, int shootingChance, int iSize)
  {
    topLeft = new PVector(p.x, p.y);
    alive = true;
    size = iSize;
    type = 0;
    direction = RIGHT;
//    type = int(random(0, 3));
//    println(type);
  }//constructor
  
  void shoot(int projectileSpeed){
    print(projectileSpeed);
    //launches a projectile from a random invader in the grid
  } //shoot
  
  void display(){
    img0 = loadImage("Alien0.png"); //loads image into a variable of type PImage
//  img1 = loadImage("Alien1.png");
//  img2 = loadImage("Alien2.png");
    if (type == Alien0){
      image(img0, topLeft.x, topLeft.y, size, size); //displays the image 
//      println(topLeft.x, topLeft.y);
    }
    /*
    if (type == Alien1){
      image(img0, 0, 0); //change to img1 later
    }
    if (type == Alien2){
      image(img0, 0, 0); //change to img2 later
    }
    */
  }//display
  
}//Invaders
