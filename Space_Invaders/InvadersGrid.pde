class InvadersGrid {
  Invaders[][] grid;
  int NUM_ROWS, NUM_COLS; //number of rows and columns in this grid
  PVector topLeft; //top left coors of each invader
  int iSize; //size of each invader

  InvadersGrid(int rows, int cols, int size) {
    grid = new Invaders[rows][cols];
    NUM_ROWS = rows;
    NUM_COLS = cols;
    iSize = size; //allows for size to be controlled in driver page
    topLeft= new PVector(0, 0); //sets the coors for the first invader
    makeGrid(); //fills grid with invader and appropriate coors
  }//constructor

  void makeGrid() {
    PVector pos = topLeft.copy(); //copies the components of PVector topLeft
    for (int r = 0; r < grid.length; r++) {
      for (int c = 0; c < grid[r].length; c++) {
        grid[r][c] = new Invaders(pos, 30, iSize);
        //println(pos);
        pos.x += iSize; // xcor increases for each alien inside a row
      }
      pos.y += iSize; //ycor increases once a row is completed
      pos.x = topLeft.x; //xcor returns to 0 to start over again for a new row
    }
  }//makeGrid

  void move() {
    changeDirection();
    for (int r=0; r<grid.length; r++) {
      for (int c=0; c<grid[r].length; c++) {

        if (grid[r][c] != null && frameCount % 20 == 0) {
          if (grid[r][c].direction == RIGHT) {
            grid[r][c].topLeft.x += iSize; //if direction is right -> move grid right
          } 
          else if (grid[r][c].direction == LEFT) {
            grid[r][c].topLeft.x -= iSize; //if direction is left -> move grid left
          } 
          else if (grid[r][c].direction == DOWN) { //if direction is down -> check what it was before
            //println(grid[r][c].previousDirection);
            if (grid[r][c].previousDirection == RIGHT) {
              grid[r][c].direction = LEFT; //now, move in reverse of the previous direction on the next time move() is called
            } 
            else {
              grid[r][c].direction = RIGHT;
            }
            grid[r][c].topLeft.y += iSize; //for now, move grid down
          }
        }
        
      }//columns
    }//rows
  }//move

  void changeDirection() {
    for (int r=0; r<grid.length; r++) {
      for (int c=0; c<grid[r].length; c++) {
        
        if (grid[r][c].direction == RIGHT) {
          if (width - grid[NUM_ROWS-1][NUM_COLS-1].topLeft.x < iSize) { //still rough (will need to adjust based on how wide of a grid we want)
            grid[r][c].previousDirection = grid[r][c].direction; //if at the right of the screen, make sure previousDirection is updated
            grid[r][c].direction = DOWN; //change direction to down
          }
        } else if (grid[r][c].direction == LEFT) { 
          if (grid[0][0].topLeft.x <= 0) {
            grid[r][c].previousDirection = grid[r][c].direction; //if at the left of the screen, make sure previousDirection is updated
            grid[r][c].direction = DOWN; //change direction to down
          }
        }
        
      }
    }
  }//changeDirection

  void display() {
    for (int r=0; r<grid.length; r++) {
      for (int c=0; c<grid[r].length; c++) {
        
        if (grid[r][c] != null) { //if there is a value there
          grid[r][c].display(); //calls upon each invader to display
          //          println(grid[r][c].topLeft);
        }
      }
      
    }
  }//display
}//InvadersGrid
