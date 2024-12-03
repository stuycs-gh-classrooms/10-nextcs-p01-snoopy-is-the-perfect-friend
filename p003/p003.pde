int NUM_ROWS = 3;
int NUM_COLS = 5;
int BALL_SIZE = 40;
int PROJECTILE_SIZE = 20;
Invaders enemies;
int enemySpeed = 30;

void setup() {
  size(400, 400);

}//setup

void draw() {
  background(255);
  
  if (frameCount % 30 == 0) {
    enemies.moving(enemySpeed);
  }
}//draw
