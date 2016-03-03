int storeVar=1;

int completion=0;


int cheapFix;

void gamePlay() {


  if (page == 1) {
    background(-206680);
  }




  if (page == 2) {
    background(-206680);
  }


  gx = (int)((frogX+16)/32);
  gy = (int)((frogY+16)/32);


  if (goUp == 1) {

    if (u == 0 && checkDir(gx, gy, 1)) {
      u = 1;
      types=1;
    }
  } else if (goDown == 1) {

    if (d == 0 && checkDir(gx, gy, 2)) {
      d = 1;
      types =2;
    }
  } else if (goLeft== 1) {
    if (l == 0 && checkDir(gx, gy, 3)) {
      l = 1;
      types =3;
    }
  } else if (goRight== 1) {
    if (r == 0 && checkDir(gx, gy, 4)) {
      r = 1;
      types =4;
    }
  }








  //if (keyPressed) {
  // keyPressed1();
  // }//} else if (uFix == 1 || dFix == 1 | lFix == 1 || rFix == 1) {
  //   keyPressed2();
  /// }

  moveFrog();
  if (cheapFix>1) {
    bordersAndCamera();
  }

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
    for (int i=0; i < enemies.size (); i++) {
      enemies.get(i).update();
    }
  }

  if (mapVar == 3) {                               //dungeon 1 to the right 
    for (int i=0; i < enemiesD1.size (); i++) {
      enemiesD1.get(i).update();
    }

    //////////////////////// ADD REST OF CALLING ENEMY CLASSES
  }

  for (int i=0; i < drops.size (); i++) {
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
  text(completion, 500, 250);


  if ((mapVar == 1 || mapVar == 7) &&  gx == 52 && gy == 37) {
    mapVar = 2;
    loadLevelFromText("store.txt");    //change to store.txt to load the store
    coincolor=255;
    frogX = 32*6;
    frogY = 32*16;
    cameraX = 0;//32*2;
    cameraY = 0;//32*5;
    //  bordersAndCamera();
    cheapFix = 0;
    u=0;
    d=0;
    r=0;
    l=0;
  }
  if (mapVar == 2 && gx == 6 && gy ==17 ) {            /////////////////STORE EXIT
    if (storeVar==1) {
      mapVar = 1;
      if (completion<3) {
        loadLevelFromText("OVERWORLD.txt");
      } else {
        loadLevelFromText("OVERWORLD2.txt");
      }
      frogX = 52*32;
      frogY = 38*32;
      cameraX = 0;//32*2;
      cameraY = 0;//32*5;
      u=0;
      d=0;
      r=0;
      l=0;
    }
    if (storeVar==3) {
      mapVar = 3;
      loadLevelFromText("d4.txt"); 
      frogX = 18*32;
      frogY = 40*32;
      cameraX = 0;//32*2;
      cameraY = 0;//32*5;
      coincolor=0;
      u=0;
      d=0;
      r=0;
      l=0;
    }
    if (storeVar==4) {
      mapVar = 4;
      loadLevelFromText("d2.txt"); 
      frogX = 18*32;
      frogY = 40*32;
      cameraX = 0;//32*2;
      cameraY = 0;//32*5;
      coincolor=0;
      u=0;
      d=0;
      r=0;
      l=0;
    }
    if (storeVar==5) {
      mapVar = 5;
      loadLevelFromText("d3.txt"); 
      frogX = 3*32;
      frogY = 40*32;
      cameraX = 0;//32*2;
      cameraY = 0;//32*5;
      coincolor=0;
      u=0;
      d=0;
      r=0;
      l=0;
    }
    if (storeVar==6) {
      mapVar = 6;
      loadLevelFromText("d1.txt"); 
      frogX = 23*32;
      frogY = 64*32;
      cameraX = 0;//32*2;
      cameraY = 0;//32*5;
      coincolor=0;
      u=0;
      d=0;
      r=0;
      l=0;
    }
  }





  if (mapVar == 1 &&  gx == 116 && gy == 39) {
    mapVar = 3;
    storeVar=3;
    loadLevelFromText("d4.txt");    
    coincolor=0;
    frogX = 32*22;
    frogY = 32*42;
    cameraX = 0;//32*2;
    cameraY = 0;//32*5;
    u=0;
    d=0;
    r=0;
    l=0;
  }
  if (mapVar == 1 &&  gx == 2 && gy == 48) {
    mapVar = 4;
    storeVar=4;
    loadLevelFromText("d2.txt");    
    coincolor=0;
    frogX = 32*22;
    frogY = 32*42;
    cameraX = 0;//32*2;
    cameraY = 0;//32*5;
    u=0;
    d=0;
    r=0;
    l=0;
  }
  if (mapVar == 1 &&  gx == 19 && gy == 9) {
    mapVar = 5;
    storeVar=5;
    loadLevelFromText("d3.txt");    
    coincolor=0;
    frogX = 32*7;
    frogY = 32*42;
    cameraX = 0;//32*2;
    cameraY = 0;//32*5;
    u=0;
    d=0;
    r=0; 
    l=0;
  }
  if (mapVar == 1 &&  (gx == 106 ||gx == 107 ||gx == 108 ||gx == 109) && gy == 4) {   // this is the boss dungeon 
    mapVar = 6;
    storeVar=6;
    loadLevelFromText("d1.txt");    
    coincolor=0;
    frogX = 32*27;
    frogY = 32*67;
    cameraX = 0;//32*2;
    cameraY = 0;//32*5;
    u=0;
    d=0;
    r=0;
    l=0;
  }

  if (mapVar == 3 &&  gx == 18 && gy == 39) {    
    mapVar = 2;
    loadLevelFromText("store.txt");    
    coincolor=255;
    frogX = 32*6;
    frogY = 32*16;
    cameraX = 0;//32*2;
    cameraY = 0;//32*5;
    u=0;
    d=0;
    r=0;
    l=0;
  }

  if (mapVar == 5 &&  gx == 3 && gy == 39) {    
    mapVar = 2;
    loadLevelFromText("store.txt");    
    coincolor=255;
    frogX = 32*6;
    frogY = 32*16;
    cameraX = 0;//32*2;
    cameraY = 0;//32*5;
    u=0;
    d=0;
    r=0;
    l=0;
  }


  if (mapVar == 6 &&  gx == 23 && gy == 63) {    
    mapVar = 2;
    loadLevelFromText("store.txt");    
    coincolor=255;
    frogX = 32*6;
    frogY = 32*16;
    cameraX = 0;//32*2;
    cameraY = 0;//32*5;
    u=0;
    d=0;
    r=0;
    l=0;
  }
  if (mapVar == 4 &&  gx == 18 && gy == 39) {    
    mapVar = 2;
    loadLevelFromText("store.txt");    
    coincolor=255;
    frogX = 32*6;
    frogY = 32*16;
    cameraX = 0;//32*2;
    cameraY = 0;//32*5;
    u=0;
    d=0;
    r=0;
    l=0;
  }

  ////////////////////////////////////// DUNGEON EXITS

  if (mapVar == 3 &&  gx == 1 && gy == 11) {    
    completion++;
    mapVar = 1;
    storeVar=1;
    if (completion<3) {
      loadLevelFromText("OVERWORLD.txt");
    } else {
      loadLevelFromText("OVERWORLD2.txt");
    }
    coincolor=255;
    frogX = 32*116;
    frogY = 32*40;
    cameraX = 0;//32*2;
    cameraY = 0;//32*5;
    u=0;
    d=0;
    r=0;
    l=0;
  }

  if (mapVar == 4 &&  gx == 1 && gy == 16) {    
    completion++;
    mapVar = 1;
    storeVar=1;
    if (completion<3) {
      loadLevelFromText("OVERWORLD.txt");
    } else {
      loadLevelFromText("OVERWORLD2.txt");
    }   
    coincolor=255;
    frogX = 32*1;
    frogY = 32*48;
    cameraX = 0;//32*2;
    cameraY = 0;//32*5;
    u=0;
    d=0;
    r=0;
    l=0;
  }

  if (mapVar == 5 &&  gx == 19 && gy == 43) {    
    completion++;
    mapVar = 1;
    storeVar=1;
    if (completion<3) {
      loadLevelFromText("OVERWORLD.txt");
    } else {
      loadLevelFromText("OVERWORLD2.txt");
    }   
    coincolor=255;
    frogX = 32*19;
    frogY = 32*10;
    cameraX = 0;//32*2;
    cameraY = 0;//32*5;
    u=0;
    d=0;
    r=0;
    l=0;
  }

  if (mapVar == 6 &&  gx == 1 && gy == 1) {    
    completion++;
    mapVar = 1;
    storeVar=1;
    if (completion<3) {
      loadLevelFromText("OVERWORLD.txt");
    } else {
      loadLevelFromText("OVERWORLD2.txt");
    }  
    coincolor=255;
    frogX = 32*108;
    frogY = 32*5;
    cameraX = 0;//32*2;
    cameraY = 0;//32*5;
    u=0;
    d=0;
    r=0;
    l=0;
  }

  cheapFix++;
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
//Pfont titlefont = createFont("lucidahandwriting.ttf",32);

void drawTitle() {
  mapVar=0;
  background(260, 207, 203);
  image(title, 0, 0, 320*2, 240*2);
  fill(0);
  textSize(50);
  // textFont(titlefont, 32);
  text("LINK'S", 250, 150);
  text("STORY", 245, 210);
  //stroke(80);
  textSize(20);
  text("PRESS SPACE TO BEGIN", 210, 300);
  textSize(15);
  text("By Henry Hoare", 265, 245);
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
  enemies.add(new ENEMY(25, 35, 31, 48, 22, 44, 8)); //grid x, grid y, ub, db, lb, rb, skin
  enemies.add(new ENEMY(36, 35, 31, 48, 22, 44, 8));
  enemies.add(new ENEMY(36, 47, 31, 48, 22, 44, 8));
  enemies.add(new ENEMY(25, 47, 31, 48, 22, 44, 8));
  enemies.add(new ENEMY(23, 41, 31, 48, 22, 44, 8));
  enemies.add(new ENEMY(77, 38, 36, 48, 70, 87, 8));
  enemies.add(new ENEMY(82, 41, 36, 48, 70, 87, 8));
  enemies.add(new ENEMY(77, 45, 36, 48, 70, 87, 8));
  enemies.add(new ENEMY(93, 42, 36, 48, 88, 93, 8));
  enemies.add(new ENEMY(105, 42, 36, 48, 100, 106, 8));
  enemies.add(new ENEMY(113, 46, 36, 48, 109, 118, 8));

  // enemiesD1.add(new ENEMY(23, 41, 31, 48, 22, 44, 1));
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