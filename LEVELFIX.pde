void gamePlay() {


  if (page == 1) {
    background(-206680);
  }




  if (page == 2) {
    background(-206680);
  }


  gx = (int)((frogX+16)/32);
  gy = (int)((frogY+16)/32);
  
  
  
  if (keyPressed) {
    keyPressed1();
  } else if (uFix == 1 || dFix == 1 | lFix == 1 || rFix == 1) {
 //   keyPressed2();
  }

  moveFrog();
  bordersAndCamera();


  if (dGrid)
    drawGrid();


  map1();//draw any map 


  if (mapVar == 2) {
    // coins=1000;
    image(heartfull, 11*32-cameraX, 8*32-cameraY, 32, 32);
    fill(255);
    textSize(25);
    text("500", 10.5*32-cameraX, 10.75*32-cameraY);
    text("One more heart", 9*32-cameraX, 9.75*32-cameraY);
    image(grRupee, 12*32-cameraX, 10*32-cameraY, 32, 32);
  }

  if (healthcounter%2 == 0) {
    drawLink();
  }

  if (mapVar == 1) {                               //OVERWORLD
    for (int i=0; i < enemies.size(); i++) {
      enemies.get(i).update();
    }
  }

  if (mapVar == 3) {                               //dungeon 1
    for (int i=0; i < enemiesD1.size(); i++) {
      enemiesD1.get(i).update();
    }
  }

  for (int i=0; i < drops.size(); i++) {
    drops.get(i).update();
  }

  drawHealth();
  drawCoins();

  fill(0);
  textSize(30);
  text(gx, 500, 100);
  text(gy, 500, 150);
  fill(255);
  text(types, 500, 200);

  if (mapVar == 1 &&  gx == 52 && gy == 37) {
    mapVar = 2;
    loadLevelFromText("store.txt");    //change to store.txt to load the store
    coincolor=255;
    frogX = 32*6;
    frogY = 32*16;
    bordersAndCamera();
    u=0;
    d=0;
    r=0;
    l=0;
  }
  if (mapVar == 2 && gx == 6 && gy ==17 ) {
    mapVar = 1;
    loadLevelFromText("OVERWORLD.txt"); 
    frogX = 52*32;
    frogY = 38*32;
    bordersAndCamera();
    coincolor=0;
    u=0;
    d=0;
    r=0;
    l=0;
  }
}



//
void map1() {
  int q = -1;
  for (int r = 0; r < mapData.length; r++) {
    for (int c = 0; c < mapData[0].length; c++) {    
      q = mapData[r][c];
      if (q!= 2 && c*grid-cameraX < 32*20   &&   c*grid-cameraX> -32   && r*grid-cameraY < 32*15   &&   r*grid-cameraY> -32)
        image(mt[q], c*grid-cameraX, r*grid-cameraY, grid, grid); //first 30 is columns, second is rows
    }
  }
}


void drawTitle() {
  mapVar=0;
  background(260, 207, 203);
  image(title, 0, 0, 320*2, 240*2);
  keyPressed1();
}

void loadLinkSprites() {
  PImage q = loadImage("data/hhmaptiles.png");
  for (int r = 0; r < mt.length; r++) {
    mt[r] = new PImage(16, 16);
    mt[r].copy(q, 1+17* ((int)(r%18)), 1 + 17* ((int)(r/18)), 16, 16, 0, 0, 16, 16);   //this loads sprite sheet
  }
  
  
  
  
  

  q= loadImage("data/hhlink.png");



  // qqq.updatePixels();


  up1= new PImage(16, 16, ARGB);
  up1.copy(q, 32, 0, 16, 16, 0, 0, 16, 16);
  //fixImage(up1);

  up2= new PImage(16, 16, ARGB);
  up2.copy(q, 32, 16, 16, 16, 0, 0, 16, 16);
  //fixImage(up2);


  up3= new PImage(16, 32, ARGB);
  up3.copy(q, 64, 0, 16, 32, 0, 0, 16, 32);
  // fixImage(up3);

  down1= new PImage(16, 16, ARGB);
  down1.copy(q, 0, 0, 16, 16, 0, 0, 16, 16);
  //fixImage(down1);


  down2= new PImage(16, 16, ARGB);
  down2.copy(q, 0, 16, 16, 16, 0, 0, 16, 16);
  down3= new PImage(16, 32, ARGB);
  down3.copy(q, 80, 0, 16, 32, 0, 0, 16, 32);

  left1= new PImage(16, 16, ARGB);
  left1.copy(q, 16, 0, 16, 16, 0, 0, 16, 16);
  left2= new PImage(16, 16, ARGB);
  left2.copy(q, 16, 16, 16, 16, 0, 0, 16, 16);
  left3= new PImage(32, 16, ARGB);
  left3.copy(q, 64, 32, 32, 16, 0, 0, 32, 16);

  right1= new PImage(16, 16, ARGB);
  right1.copy(q, 48, 0, 16, 16, 0, 0, 16, 16);
  right2= new PImage(16, 16, ARGB);
  right2.copy(q, 48, 16, 16, 16, 0, 0, 16, 16);
  right3= new PImage(32, 16, ARGB);
  right3.copy(q, 64, 48, 32, 16, 0, 0, 32, 16);
}



void populateArrays() {
  enemies.add(new ENEMY(25, 35, 31, 48, 22, 44, 1)); //grid x, grid y, ub, db, lb, rb, skin
  enemies.add(new ENEMY(36, 35, 31, 48, 22, 44, 1));
  enemies.add(new ENEMY(36, 47, 31, 48, 22, 44, 1));
  enemies.add(new ENEMY(25, 47, 31, 48, 22, 44, 1));
  enemies.add(new ENEMY(23, 41, 31, 48, 22, 44, 1));
  enemies.add(new ENEMY(77, 38, 36, 48, 70, 87, 1));
  enemies.add(new ENEMY(82, 41, 36, 48, 70, 87, 1));
  enemies.add(new ENEMY(77, 45, 36, 48, 70, 87, 1));
  enemies.add(new ENEMY(93, 42, 36, 48, 88, 93, 1));
  enemies.add(new ENEMY(105, 42, 36, 48, 100, 106, 1));
  enemies.add(new ENEMY(113, 46, 36, 48, 109, 118, 1));
  enemiesD1.add(new ENEMY(23, 41, 31, 48, 22, 44, 1));
}




void loadLevelFromText(String s) {
  //s is the name of the text file
  String[] q = loadStrings("data/hh" + s);



  //get width and height of map
  int rows = q.length;
  int cols = q[0].length()/2;//since there are 2 digits per tile

  mapData = new int[rows][cols];

  for (int j =0; j < rows; j++) {
    for (int i =0; i < cols; i++) {
      mapData[j][i] = parseInt(q[j].substring(2*i, 2*i+2));
    }
  }


  mapWidth = mapData[0].length*32;
  mapHeight = mapData.length*32;
}