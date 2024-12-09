class Invaders
{
  //instance variables
  int size;
  PVector topLeft;
  int xspeed = 1;
  int yspeed;
  color c;
  boolean alive;
  int type;
  PImage img0, img1, img2; //declared variable to store image

  
  
  Invaders(PVector p, int shootingChance, int iSize)
  {
    topLeft = new PVector(p.x, p.y);
    alive = true;
    size = iSize;
    type = 0;
//    type = int(random(0, 3));
//    println(type);
  }//constructor
  
  void shoot(int projectileSpeed){
    print(projectileSpeed);
    //launches a projectile from a random invader in the grid
  } //shoot
  
  void move(){//needs to be adjusted
//    if (topLeft.x > width - size/2 || topLeft.x < size/2){
    xspeed += 1;
//    println(xspeed);
//    }
//    if (topLeft.y > height - size/2 || topLeft.y < height/2){
//      yspeed *= -1;
//    }
    topLeft.x += xspeed;
    topLeft.y += yspeed;
  }//moving
  
  void display(){
    img0 = loadImage("Alien0.png");
//  img1 = loadImage("Alien1.png");
//  img2 = loadImage("Alien2.png");
    if (type == Alien0){
      image(img0, topLeft.x, topLeft.y, size, size); 
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
