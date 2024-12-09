class InvadersGrid{
  Invaders[][] grid;
  int gridWidth;
  int gridHeight;
  int direction;
  PVector topLeft;
  int iSize;
  
  InvadersGrid(int rows, int cols, int size){
    grid = new Invaders[rows][cols];
    iSize = size;
    gridWidth = iSize * cols;
    gridHeight = iSize * rows;
    topLeft= new PVector(size/2, size/2);
    makeGrid();
  }//constructor
  
  void makeGrid() {
    PVector pos = topLeft.copy(); //copy
    for (int r = 0; r < grid.length; r++){
      for (int c = 0; c < grid[r].length; c++){
        grid[r][c] = new Invaders(pos, 30, iSize);
        pos.x += iSize;
      }
      pos.y += iSize;
      pos.x += topLeft.x;
    }
  }//makeGrid
  
  void display(){
    for (int r=0; r<grid.length; r++) {
      for (int c=0; c<grid[r].length; c++) {
        if (grid[r][c] != null) {
          grid[r][c].display();
        }
      }
    }
  }//display
  
}//InvadersGrid
