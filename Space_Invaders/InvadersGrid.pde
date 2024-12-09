class InvadersGrid {
  Invaders[][] grid;
  int gridWidth;
  int gridHeight;
  int direction;
  PVector topLeft;
  int iSize;

  InvadersGrid(int rows, int cols, int size) {
    grid = new Invaders[rows][cols];
    iSize = size;
    gridWidth = iSize * cols;
    gridHeight = iSize * rows;
    topLeft= new PVector(0, 0);
    makeGrid();
    direction = RIGHT;
  }//constructor

  void makeGrid() {
    PVector pos = topLeft.copy(); //copy
    for (int r = 0; r < grid.length; r++) {
      for (int c = 0; c < grid[r].length; c++) {
        grid[r][c] = new Invaders(pos, 30, iSize);
        //        println(pos);
        pos.x += iSize;
      }
      pos.y += iSize;
      pos.x = topLeft.x;
    }
  }//makeGrid

  void move() {
    for (int r=0; r<grid.length; r++) {
      for (int c=0; c<grid[r].length; c++) {
        if (grid[r][c] != null) {
          grid[r][c].move();
        }
      }//columns
    }//rows
  }

    void display() {
      for (int r=0; r<grid.length; r++) {
        for (int c=0; c<grid[r].length; c++) {
          if (grid[r][c] != null) {
            grid[r][c].display();
            //          println(grid[r][c].topLeft);
          }
        }
      }
    }//display
  }//InvadersGrid
