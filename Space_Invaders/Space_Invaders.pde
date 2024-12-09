int Alien0 = 0;
int Alien1 = 1;
int Alien2 = 2;
InvadersGrid grid;

int shootingChance, numAliensinRows;

void setup() {
  size(800, 600); // Set the canvas size
  grid = new InvadersGrid(4, 3, 30);
  
}

void draw() {
  background(200); // Set a background color
  grid.display();
  grid.move();
}
