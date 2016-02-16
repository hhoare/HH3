

int frogX = 32*5;
int frogY = 32*8;

float speed=8;

int cameraX;
int cameraY;


//ASSUMING FROG VELOCITY = 40
int mapWidth, mapHeight;

int r=0;
int l=0;
int u=0;
int d=0;

int type=8;










void setup() {
  size(640, 480);//ASSUMING FROG VELOCITY = 40
  frameRate(30);
  noStroke();

  //addCurley("map1test.txt");

  loadImages();
  //if (page==1){
  mapData = overWorld;

  mapWidth = mapData[0].length*32;
  mapHeight = mapData.length*32;



frogX = 56*32;
frogY = 42*32;
bordersAndCamera(); //this goes after setting the character position 


  enemies.add(new ENEMY(2, 2, -2, 999, -2, 5, 1)); //grid x, grid y, ub, db, lb, rb, skin
  enemies.add(new ENEMY(4, 5,-2,999,0,999, 2));
}



long tick;


boolean dGrid;


int gx, gy;

void draw() {
  // println(uFix + " " +u + " " + keyPressed + "    " + random(1));

  background(-206680);

  gx = (frogX+16)/32;
  gy = (frogY+16)/32;


  if (keyPressed) {
    keyPressed1();
  } else if (uFix == 1 || dFix == 1 | lFix == 1 || rFix == 1) {
    keyPressed2();
  }


  // println(gx + "  " + gy);



  map1();
  fill(0);
  //text(1000.0/(System.currentTimeMillis()- tick), 50, 50);


  if (dGrid)
    drawGrid();




  if (u > 0) {
    frogY-=speed;
    u++;
    if (u > 4)
      u = 0;
  }

  if (d > 0) {
    frogY+=speed;
    d++;
    if (d > 4)
      d = 0;
  }


  if (l > 0) {
    frogX-=speed;
    l++;
    if (l > 4)
      l = 0;
  }


  if (r > 0) {
    frogX+=speed;
    r++;
    if (r > 4)
      r = 0;
  }


  for (int i=0; i < enemies.size(); i++) {
    enemies.get(i).update();
  }





  bordersAndCamera();


  fill(0);
  textSize(30);
  text(types, 300, 100);
  text(frogX, 300, 200);



  tick  = System.currentTimeMillis();
  /*
  image(down3, 100, 100, 32, 32);
   image(right3, 100, 150, 32, 32);
   image(left3, 100, 200, 32, 32);
   image(up3, 100, 250, 32, 32);
   */
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


  //image(qqq,0,0);



  if (types==1) {
    if (u<3) {
      image(up1, frogX - cameraX, frogY - cameraY, 32, 32);
    } else {
      image(up2, frogX - cameraX, frogY - cameraY, 32, 32);
    }
  }


  if (types==2) {
    if (d<3) {
      image(down1, frogX - cameraX, frogY - cameraY, 32, 32);
    } else {
      image(down2, frogX - cameraX, frogY - cameraY, 32, 32);
    }
  }


  if (types==3) {
    if (l<3) {
      image(left1, frogX - cameraX, frogY - cameraY, 32, 32);
    } else {
      image(left2, frogX - cameraX, frogY - cameraY, 32, 32);
    }
  }

  if (types==4) {
    if (r<3) {
      image(right1, frogX - cameraX, frogY - cameraY, 32, 32);
    } else {
      image(right2, frogX - cameraX, frogY - cameraY, 32, 32);
    }
  }

  if (types==5) {     //down sword
    image(down3, frogX - cameraX, frogY - cameraY, 32, 64);
  }

  if (types==6) {     //left sword
    image(left3, frogX - cameraX-32, frogY - cameraY, 64, 32);
  }
  if (types==7) {     //right sword
    image(right3, frogX - cameraX, frogY - cameraY, 64, 32);
  }

  if (types==8) {     //up sword
    image(up3, frogX - cameraX, frogY - cameraY-32, 32, 64);
  }
}






int types =8;

void bordersAndCamera() {
  //left
  if (frogX < 0) {
    frogX = 0;
  }
  //right       
  if (frogX > mapWidth - 40) {
    frogX = mapWidth - 40;
  }
  //top      
  if (frogY < 0) {
    frogY = 0;
  }
  //bottom     
  if (frogY > mapHeight - 40) {
    frogY = mapHeight - 40;
  }

  //horizontal camera 
  if (frogX > cameraX + 32*12 && cameraX < (mapWidth - width)) {//ASSUMING FROG VELOCITY = 40
    cameraX = frogX - 32*12;
  }

  if (frogX < cameraX + 32*8 && cameraX > 0) {//ASSUMING FROG VELOCITY = 40
    cameraX = frogX - 32*8;
  }
  //vertical camera 
  if (frogY > cameraY + 32*12 && cameraY < (mapHeight - height)) {//ASSUMING FROG VELOCITY = 40
    cameraY = frogY - 32*12;
  }
  if (frogY < cameraY + 32*4 && cameraY > 0) {//ASSUMING FROG VELOCITY = 40
    cameraY = frogY - 32*4;
  }
}





//PUT ALL THIS STUFF IN THE INPUT TAB




void mouseReleased() {
  //?
}



//PUT ALL THIS STUFF IN THE ART TAB







//  KEYBOARD STUFF GOES HERE







int uFix = 0, dFix= 0, lFix = 0, rFix=0;


int newFix = 0;


void keyPressed1() {





  // print("part1" );






  boolean moveRight = checkDir(gx, gy, 4);
  boolean  moveLeft = checkDir(gx, gy, 3);
  boolean moveUp =   checkDir(gx, gy, 1);
  boolean moveDown = checkDir(gx, gy, 2);



  //  println(mapData[gy][gx + 1]  +  "  " + moveRight);




  if (key == 'g')
    dGrid = !dGrid;

  if (((key == 'w' || keyCode == UP) || uFix == 1) && ( u == 0 && moveUp)) {
    if (lFix == 1) {
      lFix = 2;
    }

    if (rFix == 1) {
      rFix = 2;
    }
    u = 1;
    types=1;
    uFix = 1;
    newFix = 1;
  }



  if (((key == 's' || keyCode == DOWN) || dFix == 1)  && (d == 0 && moveDown)) {
    if (lFix == 1) {
      lFix = 2;
    }

    if (rFix == 1) {
      rFix = 2;
    }
    d = 1;
    types =2;
    dFix = 1;
    newFix = 2;
  }


  if (((key == 'a' || keyCode == LEFT) || lFix == 1 ) && (l == 0 && moveLeft)) {
    if (uFix == 1) {
      uFix = 2;
    }

    if (dFix == 1) {
      dFix = 2;
    }
    l = 1;
    types=3;
    lFix = 1;
    newFix = 3;
  }




  if (((key == 'd' || keyCode == RIGHT) || rFix == 1) && (r == 0 && moveRight)) {
    if (uFix == 1) {
      uFix = 2;
    }

    if (dFix == 1) {
      dFix = 2;
    }
    r = 1;
    types=4;
    rFix = 1;
    newFix = 4;
  }




  // println(types);
  if (key == 'z' && types==2) {
    /// println("z");
    types=5;
  }

  if (key == 'z' && types==3) {
    /// println("z");
    types=6;
  }

  if (key == 'z' && types==4) {
    /// println("z");
    types=7;
  }

  if (key == 'z' && types==1) {
    /// println("z");
    types=8;
  }
}





void keyPressed2() {













  //2  137  131  18  34 0 22 94

  boolean moveRight = checkDir(gx, gy, 4);
  boolean  moveLeft = checkDir(gx, gy, 3);
  boolean moveUp =   checkDir(gx, gy, 1);
  boolean moveDown = checkDir(gx, gy, 2);





  //  println(mapData[gy][gx + 1]  +  "  " + moveRight);




  if (key == 'g')
    dGrid = !dGrid;

  if (( uFix == 1) && ( u == 0 && moveUp)) {
    if (lFix == 1) {
      lFix = 2;
    }

    if (rFix == 1) {
      rFix = 2;
    }
    /// println("goUP" + random(1));
    u = 1;
    types=1;
    uFix = 1;
    newFix = 1;
  }



  if (( dFix == 1)  && (d == 0 && moveDown)) {
    if (lFix == 1) {
      lFix = 2;
    }

    if (rFix == 1) {
      rFix = 2;
    }
    d = 1;
    types =2;
    dFix = 1;
    newFix = 2;
  }


  if (( lFix == 1 ) && (l == 0 && moveLeft)) {
    if (uFix == 1) {
      uFix = 2;
    }

    if (dFix == 1) {
      dFix = 2;
    }
    l = 1;
    types=3;
    lFix = 1;
    newFix = 3;
  }


  if (( rFix == 1) && (r == 0 && moveRight)) {
    if (uFix == 1) {
      uFix = 2;
    }

    if (dFix == 1) {
      dFix = 2;
    }
    r = 1;
    types=4;
    rFix = 1;
    newFix = 4;
  }

  // println(types);
  if (key == 'z' && types==2) {
    /// println("z");
    types=5;
  }

  if (key == 'z' && types==3) {
    /// println("z");
    types=6;
  }

  if (key == 'z' && types==4) {
    /// println("z");
    types=7;
  }

  if (key == 'z' && types==1) {
    /// println("z");
    types=8;
  }
}














void keyReleased() {

  if (key == 'z' && types == 5) {
    types = 2;
  }

  if (key == 'z' && types == 6) {
    types = 3;
  }

  if (key == 'z' && types == 7) {
    types = 4;
  }

  if (key == 'z' && types == 8) {
    types = 1;
  }



  if (key == 'w' || keyCode == UP) {
    uFix = 0;

    if (lFix == 2) {
      lFix = 1;
    }

    if (rFix == 2) {
      rFix = 1;
    }
  }


  if (key == 's' || keyCode == DOWN) {
    dFix = 0;
    if (lFix == 2) {
      lFix = 1;
    }

    if (rFix == 2) {
      rFix = 1;
    }
  }


  if (key == 'a' || keyCode == LEFT) {
    lFix = 0;

    if (uFix == 2) {
      uFix = 1;
    }

    if (dFix == 2) {
      dFix = 1;
    }
  }


  if (key == 'd' || keyCode == RIGHT) {
    rFix = 0;
    //  println("D WAS RELEASED");

    if (uFix == 2) {
      uFix = 1;
    }

    if (dFix == 2) {
      dFix = 1;
    }
  }
}