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
  }//constructor
  
  void display(){
  }
}//InvadersGrid
