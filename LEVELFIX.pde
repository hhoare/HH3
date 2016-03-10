int storeVar=1;

int completion=0;

int d1;
int d2;
int d3;


int cheapFix;

void gamePlay() {


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
    text("1000", 10.5*32-cameraX, 10.75*32-cameraY);
    text("One more heart", 9*32-cameraX, 9.75*32-cameraY);
    image(grRupee, 125.*32-cameraX, 10*32-cameraY, 32, 32);
    text("'B' to purchase", 9*32-cameraX, 11.5*32-cameraY);
  }

  if (healthcounter%2 == 0) {
    drawLink();
  }

  if (health == 0) {
    page=1;
    loadLevelFromText("OVERWORLD.txt");    //change to STOREMAP to load the store
    completion = 0;
    d1=0;
    d2=0;
    d3=0;
    healthmax=3;
    health=healthmax;
    coins=0;
    mapVar=1;
    frogX = 56*32;
    frogY = 46*32;
    // cameraY = 1120;
    // cameraX = 1440;
    cheapFix=0;
    u=0;
    d=0;
    r=0;
    l=0;
  }


  if (mapVar == 1 ) {                               //OVERWORLD
    for (int i=0; i < enemies.size (); i++) {
      enemies.get(i).update();
    }
  }

  if (mapVar == 3) {                               //dungeon 1 to the right 
    for (int i=0; i < enemiesD1.size (); i++) {
      enemiesD1.get(i).update();
    }
  }
  if (mapVar == 4) {                               //dungeon 1 to the right 
    for (int i=0; i < enemiesD2.size (); i++) {
      enemiesD2.get(i).update();
    }
  }
  if (mapVar == 5) {                               //dungeon 1 to the right 
    for (int i=0; i < enemiesD3.size (); i++) {
      enemiesD3.get(i).update();
    }
  }
  if (mapVar == 6) {                               //dungeon 1 to the right 
    for (int i=0; i < enemiesD4.size (); i++) {
      enemiesD4.get(i).update();
    }
  }

  //////////////////////// ADD REST OF CALLING ENEMY CLASSES



  for (int i=0; i < drops.size (); i++) {
    drops.get(i).update();
  }

  drawHealth();
  drawCoins();

  fill(0);
  textSize(30);
  text(gx, 500, 200);
  text(gy, 500, 250);
  //  fill(255);
  //  text(types, 500, 200);
  //  text(completion, 500, 250);


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
      if ((d1+d2+d3)<3) {
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
    d1=1;
    mapVar = 1;
    storeVar=1;
    if ((d1+d2+d3)<3) {
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
    d2=1;
    mapVar = 1;
    storeVar=1;
    if ((d1+d2+d3)<3) {
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
    d3=1;
    mapVar = 1;
    storeVar=1;
    if ((d1+d2+d3)<3) {
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
    if (completion>3) {
      page =3;
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
  textFont(myfont, 64);
  text("LINK'S", 200, 150);
  text("STORY", 195, 210);
  //stroke(80);
  textSize(20);
  text("PRESS SPACE TO BEGIN", 210-25, 300);
  textSize(15);
  text("By Henry Hoare", 265-25, 245);
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
  enemies.add(new ENEMY(23, 41, 31, 48, 22, 44, 2));
  enemies.add(new ENEMY(77, 38, 36, 48, 70, 87, 1));
  enemies.add(new ENEMY(82, 41, 36, 48, 70, 87, 1));
  enemies.add(new ENEMY(77, 45, 36, 48, 70, 87, 1));
  enemies.add(new ENEMY(93, 42, 36, 48, 88, 93, 1));
  enemies.add(new ENEMY(105, 42, 36, 48, 100, 106, 1));
  enemies.add(new ENEMY(113, 46, 36, 48, 109, 118, 1));

  enemies.add(new ENEMY(16, 47, 31, 48, 1, 17, 1));
  enemies.add(new ENEMY(5, 47, 31, 48, 1, 17, 2));
  enemies.add(new ENEMY(2, 37, 31, 48, 1, 17, 1));
  enemies.add(new ENEMY(15, 32, 31, 48, 1, 17, 1));

  enemies.add(new ENEMY(14, 26, 23, 31, 1, 15, 1));
  enemies.add(new ENEMY(8, 29, 23, 31, 1, 15, 1));
  enemies.add(new ENEMY(2, 26, 23, 31, 1, 15, 2));

  enemies.add(new ENEMY(1, 15, 0, 22, 0, 30, 1));
  enemies.add(new ENEMY(5, 11, 0, 22, 0, 30, 1));
  enemies.add(new ENEMY(2, 8, 0, 22, 0, 30, 1));
  enemies.add(new ENEMY(2, 1, 0, 22, 0, 30, 2));
  enemies.add(new ENEMY(5, 5, 0, 22, 0, 30, 1));
  enemies.add(new ENEMY(5, 11, 0, 22, 0, 30, 1));
  enemies.add(new ENEMY(18, 0, 0, 22, 0, 30, 1));
  enemies.add(new ENEMY(18, 1, 0, 22, 0, 30, 2));
  enemies.add(new ENEMY(18, 2, 0, 22, 0, 30, 1));

  enemies.add(new ENEMY(18, 12, 6, 15, 14, 24, 2));
  enemies.add(new ENEMY(20, 12, 6, 15, 14, 24, 2));

  enemies.add(new ENEMY(22, 27, 20, 29, 21, 51, 1));
  enemies.add(new ENEMY(22, 24, 20, 29, 21, 51, 1));
  enemies.add(new ENEMY(27, 26, 20, 29, 21, 51, 1));
  enemies.add(new ENEMY(31, 25, 20, 29, 21, 51, 1));
  enemies.add(new ENEMY(33, 21, 20, 29, 21, 51, 1));
  enemies.add(new ENEMY(37, 25, 20, 29, 21, 51, 1));
  enemies.add(new ENEMY(40, 22, 20, 29, 21, 51, 1));
  enemies.add(new ENEMY(41, 22, 20, 29, 21, 51, 1));
  enemies.add(new ENEMY(42, 26, 20, 29, 21, 51, 1));
  enemies.add(new ENEMY(47, 25, 20, 29, 21, 51, 1));
  enemies.add(new ENEMY(49, 22, 20, 29, 21, 51, 1));

  enemies.add(new ENEMY(56, 24, 20, 31, 53, 66, 1));
  enemies.add(new ENEMY(56, 25, 20, 31, 53, 66, 1));
  enemies.add(new ENEMY(59, 28, 20, 31, 53, 66, 1));
  enemies.add(new ENEMY(59, 21, 20, 31, 53, 66, 1));
  enemies.add(new ENEMY(62, 24, 20, 31, 53, 66, 1));
  enemies.add(new ENEMY(62, 25, 20, 31, 53, 66, 1));

  enemies.add(new ENEMY(78, 21, 20, 31, 68, 89, 1));
  enemies.add(new ENEMY(78, 25, 20, 31, 68, 89, 1));
  enemies.add(new ENEMY(78, 29, 20, 31, 68, 89, 1));
  enemies.add(new ENEMY(82, 22, 20, 31, 68, 89, 1));
  enemies.add(new ENEMY(82, 25, 20, 31, 68, 89, 1));
  enemies.add(new ENEMY(82, 28, 20, 31, 68, 89, 1));
  enemies.add(new ENEMY(86, 24, 20, 31, 68, 89, 1));
  enemies.add(new ENEMY(86, 25, 20, 31, 68, 89, 1));

  enemies.add(new ENEMY(38, 14, 0, 18, 32, 54, 2));
  enemies.add(new ENEMY(38, 8, 0, 18, 32, 54, 2));
  enemies.add(new ENEMY(42, 17, 0, 18, 32, 54, 2));
  enemies.add(new ENEMY(42, 5, 0, 18, 32, 54, 2));
  enemies.add(new ENEMY(46, 8, 0, 18, 32, 54, 2));
  enemies.add(new ENEMY(46, 14, 0, 18, 32, 54, 2));
  enemies.add(new ENEMY(51, 1, 0, 18, 32, 54, 3));

  enemies.add(new ENEMY(64, 11, 0, 17, 56, 82, 1));
  enemies.add(new ENEMY(70, 11, 0, 17, 56, 82, 3));
  enemies.add(new ENEMY(76, 11, 0, 17, 56, 82, 1));
  enemies.add(new ENEMY(70, 15, 0, 17, 56, 82, 1));
  enemies.add(new ENEMY(70, 7, 0, 17, 56, 82, 1));
  enemies.add(new ENEMY(79, 1, 0, 17, 56, 82, 1));

  enemies.add(new ENEMY(87, 1, 0, 18, 84, 95, 3));
  enemies.add(new ENEMY(89, 5, 0, 18, 84, 95, 1));
  enemies.add(new ENEMY(93, 4, 0, 18, 84, 95, 1));
  enemies.add(new ENEMY(95, 1, 0, 18, 84, 95, 3));
  enemies.add(new ENEMY(89, 11, 0, 18, 84, 95, 2));
  enemies.add(new ENEMY(92, 11, 0, 18, 84, 95, 1));
  enemies.add(new ENEMY(89, 14, 0, 18, 84, 95, 1));
  enemies.add(new ENEMY(92, 14, 0, 18, 84, 95, 2));

  enemies.add(new ENEMY(106, 7, 2, 9, 98, 95, 117));
  enemies.add(new ENEMY(109, 7, 2, 9, 98, 95, 117));

  enemies.add(new ENEMY(93, 23, 15, 35, 89, 119, 1));
  enemies.add(new ENEMY(93, 26, 15, 35, 89, 119, 1));
  enemies.add(new ENEMY(97, 19, 15, 35, 89, 119, 1));
  enemies.add(new ENEMY(99, 16, 15, 35, 89, 119, 1));
  enemies.add(new ENEMY(99, 30, 15, 35, 89, 119, 1));
  enemies.add(new ENEMY(99, 33, 15, 35, 89, 119, 1));
  enemies.add(new ENEMY(100, 24, 15, 35, 89, 119, 1));
  enemies.add(new ENEMY(103, 20, 15, 35, 89, 119, 1));
  enemies.add(new ENEMY(106, 17, 15, 35, 89, 119, 1));
  enemies.add(new ENEMY(107, 17, 15, 35, 89, 119, 1));
  enemies.add(new ENEMY(108, 17, 15, 35, 89, 119, 1));
  enemies.add(new ENEMY(109, 17, 15, 35, 89, 119, 1));
  enemies.add(new ENEMY(107, 20, 15, 35, 89, 119, 1));
  enemies.add(new ENEMY(108, 20, 15, 35, 89, 119, 1));
  enemies.add(new ENEMY(107, 28, 15, 35, 89, 119, 1));
  enemies.add(new ENEMY(108, 27, 15, 35, 89, 119, 1));
  enemies.add(new ENEMY(112, 20, 15, 35, 89, 119, 1));
  enemies.add(new ENEMY(112, 33, 15, 35, 89, 119, 1));
  enemies.add(new ENEMY(115, 25, 15, 35, 89, 119, 1));
  enemies.add(new ENEMY(116, 23, 15, 35, 89, 119, 1));
  enemies.add(new ENEMY(116, 30, 15, 35, 89, 119, 1));
  enemies.add(new ENEMY(116, 17, 15, 35, 89, 119, 1));
  enemies.add(new ENEMY(117, 18, 15, 35, 89, 119, 1));


  enemiesD1.add(new ENEMY(33, 40, 37, 44, 31, 44, 2));
  enemiesD1.add(new ENEMY(39, 40, 37, 44, 31, 44, 1));
  enemiesD1.add(new ENEMY(40, 37, 37, 44, 31, 44, 1));
  enemiesD1.add(new ENEMY(40, 43, 37, 44, 31, 44, 1));

  enemiesD1.add(new ENEMY(35, 34, 28, 35, 31, 44, 1));
  enemiesD1.add(new ENEMY(35, 31, 28, 35, 31, 44, 1));
  enemiesD1.add(new ENEMY(35, 28, 28, 35, 31, 44, 1));
  enemiesD1.add(new ENEMY(41, 31, 28, 35, 31, 44, 2));

  enemiesD1.add(new ENEMY(39, 22, 19, 26, 31, 44, 2));
  enemiesD1.add(new ENEMY(35, 22, 19, 26, 31, 44, 2));
  enemiesD1.add(new ENEMY(34, 19, 19, 26, 31, 44, 3));
  enemiesD1.add(new ENEMY(40, 19, 19, 26, 31, 44, 3));

  enemiesD1.add(new ENEMY(31, 14, 10, 17, 31, 44, 1));
  enemiesD1.add(new ENEMY(35, 13, 10, 17, 31, 44, 2));
  enemiesD1.add(new ENEMY(35, 10, 10, 17, 31, 44, 1));
  enemiesD1.add(new ENEMY(39, 10, 10, 17, 31, 44, 1));
  enemiesD1.add(new ENEMY(39, 13, 10, 17, 31, 44, 2));
  enemiesD1.add(new ENEMY(43, 14, 10, 17, 31, 44, 1));

  enemiesD1.add(new ENEMY(33, 3, 1, 8, 31, 44, 1));
  enemiesD1.add(new ENEMY(35, 5, 1, 8, 31, 44, 1));
  enemiesD1.add(new ENEMY(38, 2, 1, 8, 31, 44, 8));
  enemiesD1.add(new ENEMY(39, 6, 1, 8, 31, 44, 8));
  enemiesD1.add(new ENEMY(42, 3, 1, 8, 31, 44, 1));

  enemiesD1.add(new ENEMY(25, 3, 1, 8, 16, 28, 1));
  enemiesD1.add(new ENEMY(22, 2, 1, 8, 16, 28, 1));
  enemiesD1.add(new ENEMY(21, 5, 1, 8, 16, 28, 1));
  enemiesD1.add(new ENEMY(16, 4, 1, 8, 16, 28, 3));

  enemiesD1.add(new ENEMY(19, 11, 10, 17, 16, 28, 1));
  enemiesD1.add(new ENEMY(17, 15, 10, 17, 16, 28, 1));
  enemiesD1.add(new ENEMY(22, 13, 10, 17, 16, 28, 3));
  enemiesD1.add(new ENEMY(22, 15, 10, 17, 16, 28, 8));
  enemiesD1.add(new ENEMY(25, 11, 10, 17, 16, 28, 1));
  enemiesD1.add(new ENEMY(27, 15, 10, 17, 16, 28, 8));

  enemiesD1.add(new ENEMY(18, 21, 19, 26, 16, 28, 1));
  enemiesD1.add(new ENEMY(18, 23, 19, 26, 16, 28, 1));
  enemiesD1.add(new ENEMY(22, 22, 19, 26, 16, 28, 3));
  enemiesD1.add(new ENEMY(26, 21, 19, 26, 16, 28, 1));
  enemiesD1.add(new ENEMY(26, 23, 19, 26, 16, 28, 1));

  enemiesD1.add(new ENEMY(19, 29, 28, 35, 16, 28, 1));
  enemiesD1.add(new ENEMY(20, 32, 28, 35, 16, 28, 1));
  enemiesD1.add(new ENEMY(22, 34, 28, 35, 16, 28, 3));
  enemiesD1.add(new ENEMY(24, 32, 28, 35, 16, 28, 1));
  enemiesD1.add(new ENEMY(25, 29, 28, 35, 16, 28, 1));

  enemiesD1.add(new ENEMY(4, 31, 28, 35, 1, 13, 3));
  enemiesD1.add(new ENEMY(7, 31, 28, 35, 1, 13, 2));
  enemiesD1.add(new ENEMY(7, 29, 28, 35, 1, 13, 8));
  enemiesD1.add(new ENEMY(7, 33, 28, 35, 1, 13, 8));
  enemiesD1.add(new ENEMY(10, 33, 28, 35, 1, 13, 1));
  enemiesD1.add(new ENEMY(10, 29, 28, 35, 1, 13, 1));

  enemiesD1.add(new ENEMY(5, 24, 11, 26, 1, 13, 1));
  enemiesD1.add(new ENEMY(9, 24, 11, 26, 1, 13, 1));
  enemiesD1.add(new ENEMY(3, 22, 11, 26, 1, 13, 1));
  enemiesD1.add(new ENEMY(11, 22, 11, 26, 1, 13, 1));
  enemiesD1.add(new ENEMY(7, 21, 11, 26, 1, 13, 8));
  enemiesD1.add(new ENEMY(3, 19, 11, 26, 1, 13, 1));
  enemiesD1.add(new ENEMY(11, 19, 11, 26, 1, 13, 1));
  enemiesD1.add(new ENEMY(3, 12, 11, 26, 1, 13, 3));
  enemiesD1.add(new ENEMY(5, 14, 11, 26, 1, 13, 2));
  enemiesD1.add(new ENEMY(7, 12, 11, 26, 1, 13, 3));
  enemiesD1.add(new ENEMY(9, 14, 11, 26, 1, 13, 2));
  enemiesD1.add(new ENEMY(11, 12, 11, 26, 1, 13, 3));


  enemiesD2.add(new ENEMY(33, 37, 37, 44, 31, 43, 8));
  // enemiesD2.add(new ENEMY(31, 37, 37, 44, 31, 43, 1));
  enemiesD2.add(new ENEMY(31, 43, 37, 44, 31, 43, 1));
  enemiesD2.add(new ENEMY(37, 39, 37, 44, 31, 43, 6));
  enemiesD2.add(new ENEMY(41, 37, 37, 44, 31, 43, 1));
  enemiesD2.add(new ENEMY(43, 42, 37, 44, 31, 43, 8));

  enemiesD2.add(new ENEMY(32, 33, 28, 35, 31, 43, 1));
  enemiesD2.add(new ENEMY(33, 30, 28, 35, 31, 43, 1));
  enemiesD2.add(new ENEMY(37, 31, 28, 35, 31, 43, 1));
  enemiesD2.add(new ENEMY(37, 28, 28, 35, 31, 43, 1));
  enemiesD2.add(new ENEMY(41, 30, 28, 35, 31, 43, 1));
  enemiesD2.add(new ENEMY(42, 33, 28, 35, 31, 43, 1));

 // enemiesD2.add(new ENEMY(42, 33, 28, 35, 16, 28, 1));
  enemiesD2.add(new ENEMY(22, 29, 28, 35, 16, 28, 2));
  enemiesD2.add(new ENEMY(19, 30, 28, 35, 16, 28, 1));
  enemiesD2.add(new ENEMY(19, 33, 28, 35, 16, 28, 8));

  enemiesD2.add(new ENEMY(19, 24, 19, 26, 16, 28, 1));
  enemiesD2.add(new ENEMY(17, 21, 19, 26, 16, 28, 8));
  enemiesD2.add(new ENEMY(22, 21, 19, 26, 16, 28, 1));
  enemiesD2.add(new ENEMY(25, 23, 19, 26, 16, 28, 1));
  enemiesD2.add(new ENEMY(28, 21, 19, 26, 16, 28, 2));


  enemiesD2.add(new ENEMY(22, 13, 10, 17, 16, 28, 2));
  enemiesD2.add(new ENEMY(17, 13, 10, 17, 16, 28, 1));
  enemiesD2.add(new ENEMY(27, 14, 10, 17, 16, 28, 1));
  enemiesD2.add(new ENEMY(22, 10, 10, 17, 16, 28, 8));

  enemiesD2.add(new ENEMY(34, 11, 10, 17, 31, 48, 8));
  enemiesD2.add(new ENEMY(34, 15, 10, 17, 31, 48, 1));
  enemiesD2.add(new ENEMY(37, 13, 10, 17, 31, 48, 2));
  enemiesD2.add(new ENEMY(40, 11, 10, 17, 31, 48, 1));
  enemiesD2.add(new ENEMY(40, 15, 10, 17, 31, 48, 8));

  enemiesD2.add(new ENEMY(41, 4, 0, 8, 31, 48, 8));
  enemiesD2.add(new ENEMY(37, 4, 0, 8, 31, 48, 8));
  enemiesD2.add(new ENEMY(33, 4, 0, 8, 31, 48, 8));
  enemiesD2.add(new ENEMY(37, 1, 0, 8, 31, 48, 2));

  enemiesD2.add(new ENEMY(1, 1, 0, 8, 0, 29, 2));
  enemiesD2.add(new ENEMY(2, 2, 0, 8, 0, 29, 1));
  enemiesD2.add(new ENEMY(3, 3, 0, 8, 0, 29, 8));
  enemiesD2.add(new ENEMY(4, 4, 0, 8, 0, 29, 2));
  enemiesD2.add(new ENEMY(3, 5, 0, 8, 0, 29, 8));
  enemiesD2.add(new ENEMY(2, 6, 0, 8, 0, 29, 1));
  enemiesD2.add(new ENEMY(1, 7, 0, 8, 0, 29, 2));
  enemiesD2.add(new ENEMY(8, 4, 0, 8, 0, 29, 1));
  enemiesD2.add(new ENEMY(9, 4, 0, 8, 0, 29, 8));
  enemiesD2.add(new ENEMY(10, 4, 0, 8, 0, 29, 1));
  enemiesD2.add(new ENEMY(11, 4, 0, 8, 0, 29, 8));
  enemiesD2.add(new ENEMY(12, 4, 0, 8, 0, 29, 1));
  enemiesD2.add(new ENEMY(13, 4, 0, 8, 0, 29, 8));
  enemiesD2.add(new ENEMY(11, 2, 0, 8, 0, 29, 1));
  enemiesD2.add(new ENEMY(11, 6, 0, 8, 0, 29, 1));
  enemiesD2.add(new ENEMY(18, 1, 0, 8, 0, 29, 1));
  enemiesD2.add(new ENEMY(18, 2, 0, 8, 0, 29, 8));
  enemiesD2.add(new ENEMY(18, 3, 0, 8, 0, 29, 1));
  enemiesD2.add(new ENEMY(18, 4, 0, 8, 0, 29, 8));
  enemiesD2.add(new ENEMY(18, 5, 0, 8, 0, 29, 1));
  enemiesD2.add(new ENEMY(18, 6, 0, 8, 0, 29, 8));
  enemiesD2.add(new ENEMY(18, 7, 0, 8, 0, 29, 1));
  enemiesD2.add(new ENEMY(22, 4, 0, 8, 0, 29, 1));
  enemiesD2.add(new ENEMY(25, 2, 0, 8, 0, 29, 8));
  enemiesD2.add(new ENEMY(25, 6, 0, 8, 0, 29, 8));

  enemiesD2.add(new ENEMY(7, 10, 10, 16, 0, 29, 1));
  enemiesD2.add(new ENEMY(9, 12, 10, 16, 0, 29, 8));
  enemiesD2.add(new ENEMY(5, 14, 10, 16, 0, 29, 2));
  enemiesD2.add(new ENEMY(7, 16, 10, 16, 0, 29, 3));
  enemiesD2.add(new ENEMY(9, 14, 10, 16, 0, 29, 2));
  enemiesD2.add(new ENEMY(5, 12, 10, 16, 0, 29, 8));
 // enemiesD2.add(new ENEMY(1, 10, 10, 16, 0, 29, 1));

  enemiesD3.add(new ENEMY(3, 31, 28, 35, 0, 13, 4));
  enemiesD3.add(new ENEMY(7, 31, 28, 35, 0, 13, 4));
  enemiesD3.add(new ENEMY(11, 31, 28, 35, 0, 13, 4));
  enemiesD3.add(new ENEMY(7, 28, 28, 35, 0, 13, 4));

  enemiesD3.add(new ENEMY(4, 20, 19, 26, 0, 13, 5));
  enemiesD3.add(new ENEMY(5, 23, 19, 26, 0, 13, 4));
  enemiesD3.add(new ENEMY(6, 23, 19, 26, 0, 13, 4));
  enemiesD3.add(new ENEMY(7, 23, 19, 26, 0, 13, 4));
  enemiesD3.add(new ENEMY(8, 23, 19, 26, 0, 13, 4));
  enemiesD3.add(new ENEMY(9, 23, 19, 26, 0, 13, 4));
  enemiesD3.add(new ENEMY(10, 20, 19, 26, 0, 13, 5));

  enemiesD3.add(new ENEMY(3, 16, 10, 17, 0, 13, 5));
  enemiesD3.add(new ENEMY(4, 13, 10, 17, 0, 13, 4));
  enemiesD3.add(new ENEMY(7, 14, 10, 17, 0, 13, 7));
  enemiesD3.add(new ENEMY(10, 13, 10, 17, 0, 13, 4));
  enemiesD3.add(new ENEMY(11, 16, 10, 17, 0, 13, 5));

  enemiesD3.add(new ENEMY(3, 3, 1, 8, 0, 13, 4));
  enemiesD3.add(new ENEMY(4, 7, 1, 8, 0, 13, 8));
  enemiesD3.add(new ENEMY(10, 7, 1, 8, 0, 13, 8));
  enemiesD3.add(new ENEMY(7, 5, 1, 8, 0, 13, 5));
  enemiesD3.add(new ENEMY(7, 2, 1, 8, 0, 13, 4));
  enemiesD3.add(new ENEMY(11, 3, 1, 8, 0, 13, 4));

  enemiesD3.add(new ENEMY(19, 2, 1, 8, 16, 28, 8));
  enemiesD3.add(new ENEMY(19, 6, 1, 8, 16, 28, 4));
  enemiesD3.add(new ENEMY(22, 3, 1, 8, 16, 28, 5));
  enemiesD3.add(new ENEMY(25, 2, 1, 8, 16, 28, 8));
  enemiesD3.add(new ENEMY(25, 6, 1, 8, 16, 28, 4));

  enemiesD3.add(new ENEMY(22, 11, 10, 17, 16, 28, 7));
  enemiesD3.add(new ENEMY(19, 12, 10, 17, 16, 28, 4));
  enemiesD3.add(new ENEMY(18, 15, 10, 17, 16, 28, 4));
  enemiesD3.add(new ENEMY(25, 12, 10, 17, 16, 28, 4));
  enemiesD3.add(new ENEMY(26, 15, 10, 17, 16, 28, 4));

  enemiesD3.add(new ENEMY(17, 23, 19, 26, 16, 28, 4));
  enemiesD3.add(new ENEMY(19, 20, 19, 26, 16, 28, 8));
  enemiesD3.add(new ENEMY(22, 22, 19, 26, 16, 28, 5));
  enemiesD3.add(new ENEMY(25, 20, 19, 26, 16, 28, 8));
  enemiesD3.add(new ENEMY(27, 23, 19, 26, 16, 28, 4));

  enemiesD3.add(new ENEMY(22, 29, 28, 35, 16, 28, 4));
  enemiesD3.add(new ENEMY(19, 31, 28, 35, 16, 28, 4));
  enemiesD3.add(new ENEMY(25, 31, 28, 35, 16, 28, 5));
  enemiesD3.add(new ENEMY(22, 33, 28, 35, 16, 28, 4));

  enemiesD3.add(new ENEMY(33, 6, 1, 8, 31, 44, 4));
  enemiesD3.add(new ENEMY(36, 6, 1, 8, 31, 44, 4));
  enemiesD3.add(new ENEMY(38, 6, 1, 8, 31, 44, 4));
  enemiesD3.add(new ENEMY(41, 6, 1, 8, 31, 44, 4));
  enemiesD3.add(new ENEMY(36, 3, 1, 8, 31, 44, 4));
  enemiesD3.add(new ENEMY(38, 3, 1, 8, 31, 44, 4));

  enemiesD3.add(new ENEMY(34, 11, 10, 17, 31, 44, 4));
  enemiesD3.add(new ENEMY(32, 13, 10, 17, 31, 44, 4));
  enemiesD3.add(new ENEMY(35, 16, 10, 17, 31, 44, 4));
  enemiesD3.add(new ENEMY(39, 11, 10, 17, 31, 44, 4));
  enemiesD3.add(new ENEMY(42, 10, 10, 17, 31, 44, 4));

  enemiesD3.add(new ENEMY(32, 23, 19, 26, 31, 44, 4));
  enemiesD3.add(new ENEMY(35, 21, 19, 26, 31, 44, 4));
  enemiesD3.add(new ENEMY(37, 24, 19, 26, 31, 44, 4));
  enemiesD3.add(new ENEMY(39, 21, 19, 26, 31, 44, 4));
  enemiesD3.add(new ENEMY(42, 23, 19, 26, 31, 44, 4));

  enemiesD3.add(new ENEMY(20, 39, 37, 44, 19, 45, 4));
  enemiesD3.add(new ENEMY(22, 41, 37, 44, 19, 45, 4));
  enemiesD3.add(new ENEMY(25, 40, 37, 44, 19, 45, 4));
  enemiesD3.add(new ENEMY(28, 38, 37, 44, 19, 45, 4));
  enemiesD3.add(new ENEMY(28, 42, 37, 44, 19, 45, 4));
  enemiesD3.add(new ENEMY(31, 40, 37, 44, 19, 45, 4));
  enemiesD3.add(new ENEMY(34, 41, 37, 44, 19, 45, 4));
  enemiesD3.add(new ENEMY(37, 39, 37, 44, 19, 45, 4));
  enemiesD3.add(new ENEMY(37, 42, 37, 44, 19, 45, 4));
  enemiesD3.add(new ENEMY(41, 39, 37, 44, 19, 45, 4));
  enemiesD3.add(new ENEMY(41, 42, 37, 44, 19, 45, 4));


  enemiesD4.add(new ENEMY(6, 64, 61, 69, 6, 18, 1));
  enemiesD4.add(new ENEMY(8, 62, 61, 69, 6, 18, 1));
  enemiesD4.add(new ENEMY(12, 62, 61, 69, 6, 18, 1));
  enemiesD4.add(new ENEMY(16, 62, 61, 69, 6, 18, 1));
  enemiesD4.add(new ENEMY(10, 64, 61, 69, 6, 18, 1));
  enemiesD4.add(new ENEMY(14, 64, 61, 69, 6, 18, 1));
  enemiesD4.add(new ENEMY(8, 66, 61, 69, 6, 18, 1));
  enemiesD4.add(new ENEMY(12, 6, 61, 69, 6, 18, 1));
  enemiesD4.add(new ENEMY(16, 66, 61, 69, 6, 18, 1));

  enemiesD4.add(new ENEMY(15, 54, 53, 55, 14, 20, 1));
  enemiesD4.add(new ENEMY(39, 54, 53, 55, 34, 40, 1));

  enemiesD4.add(new ENEMY(6, 47, 41, 49, 6, 18, 1));
  enemiesD4.add(new ENEMY(6, 43, 41, 49, 6, 18, 1));
  enemiesD4.add(new ENEMY(8, 45, 41, 49, 6, 18, 1));
  enemiesD4.add(new ENEMY(8, 41, 41, 49, 6, 18, 1));
  enemiesD4.add(new ENEMY(10, 48, 41, 49, 6, 18, 1));
  enemiesD4.add(new ENEMY(11, 45, 41, 49, 6, 18, 1));
  enemiesD4.add(new ENEMY(11, 41, 41, 49, 6, 18, 1));
  enemiesD4.add(new ENEMY(14, 48, 41, 49, 6, 18, 1));
  enemiesD4.add(new ENEMY(14, 44, 41, 49, 6, 18, 1));
  enemiesD4.add(new ENEMY(14, 41, 41, 49, 6, 18, 1));
  enemiesD4.add(new ENEMY(16, 44, 41, 49, 6, 18, 1));

  enemiesD4.add(new ENEMY(7, 35, 31, 39, 6, 18, 1));
  enemiesD4.add(new ENEMY(8, 31, 31, 39, 6, 18, 1));
  enemiesD4.add(new ENEMY(10, 37, 31, 39, 6, 18, 1));
  enemiesD4.add(new ENEMY(12, 32, 31, 39, 6, 18, 1));
  enemiesD4.add(new ENEMY(18, 38, 31, 39, 6, 18, 1));
  enemiesD4.add(new ENEMY(17, 32, 31, 39, 6, 18, 1));

  enemiesD4.add(new ENEMY(21, 58, 51, 59, 21, 33, 1));
  enemiesD4.add(new ENEMY(21, 51, 51, 59, 21, 33, 1));
  enemiesD4.add(new ENEMY(33, 58, 51, 59, 21, 33, 1));
  enemiesD4.add(new ENEMY(33, 51, 51, 59, 21, 33, 1));
  enemiesD4.add(new ENEMY(25, 53, 51, 59, 21, 33, 1));
  enemiesD4.add(new ENEMY(25, 55, 51, 59, 21, 33, 1));
  enemiesD4.add(new ENEMY(29, 53, 51, 59, 21, 33, 1));
  enemiesD4.add(new ENEMY(29, 55, 51, 59, 21, 33, 1));

  enemiesD4.add(new ENEMY(23, 46, 41, 49, 21, 33, 1));
  enemiesD4.add(new ENEMY(23, 41, 41, 49, 21, 33, 1));
  enemiesD4.add(new ENEMY(31, 42, 41, 49, 21, 33, 1));

  enemiesD4.add(new ENEMY(23, 38, 31, 39, 21, 33, 1));
  enemiesD4.add(new ENEMY(24, 34, 31, 39, 21, 33, 1));
  enemiesD4.add(new ENEMY(27, 36, 31, 39, 21, 33, 1));
  enemiesD4.add(new ENEMY(27, 32, 31, 39, 21, 33, 1));
  enemiesD4.add(new ENEMY(30, 34, 31, 39, 21, 33, 1));
  enemiesD4.add(new ENEMY(31, 38, 31, 39, 21, 33, 1));

  enemiesD4.add(new ENEMY(39, 66, 61, 69, 36, 48, 1));
  enemiesD4.add(new ENEMY(39, 63, 61, 69, 36, 48, 1));
  enemiesD4.add(new ENEMY(42, 63, 61, 69, 36, 48, 1));
  enemiesD4.add(new ENEMY(43, 65, 61, 69, 36, 48, 1));
  enemiesD4.add(new ENEMY(47, 63, 61, 69, 36, 48, 1));
  enemiesD4.add(new ENEMY(47, 66, 61, 69, 36, 48, 1));

  enemiesD4.add(new ENEMY(40, 47, 41, 49, 36, 48, 1));
  enemiesD4.add(new ENEMY(40, 42, 41, 49, 36, 48, 1));
  enemiesD4.add(new ENEMY(44, 45, 41, 49, 36, 48, 1));
  enemiesD4.add(new ENEMY(44, 44, 41, 49, 36, 48, 1));

  enemiesD4.add(new ENEMY(36, 35, 31, 39, 36, 48, 1));
  enemiesD4.add(new ENEMY(39, 33, 31, 39, 36, 48, 1));
  enemiesD4.add(new ENEMY(40, 33, 31, 39, 36, 48, 1));
  enemiesD4.add(new ENEMY(42, 36, 31, 39, 36, 48, 1));
  enemiesD4.add(new ENEMY(44, 33, 31, 39, 36, 48, 1));
  enemiesD4.add(new ENEMY(45, 33, 31, 39, 36, 48, 1));
  enemiesD4.add(new ENEMY(48, 35, 31, 39, 36, 48, 1));

  enemiesD4.add(new ENEMY(5, 5, 1, 26, 1, 48, 1));
  enemiesD4.add(new ENEMY(6, 13, 1, 26, 1, 48, 1));
  enemiesD4.add(new ENEMY(7, 20, 1, 26, 1, 48, 1));
  enemiesD4.add(new ENEMY(18, 20, 1, 26, 1, 48, 1));
  enemiesD4.add(new ENEMY(18, 13, 1, 26, 1, 48, 1));
  enemiesD4.add(new ENEMY(20, 5, 1, 26, 1, 48, 1));
  enemiesD4.add(new ENEMY(29, 8, 1, 26, 1, 48, 1));
  enemiesD4.add(new ENEMY(31, 13, 1, 26, 1, 48, 1));
  enemiesD4.add(new ENEMY(31, 20, 1, 26, 1, 48, 1));
  enemiesD4.add(new ENEMY(42, 20, 1, 26, 1, 48, 1));
  enemiesD4.add(new ENEMY(43, 13, 1, 26, 1, 48, 1));
  enemiesD4.add(new ENEMY(44, 8, 1, 26, 1, 48, 1));
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