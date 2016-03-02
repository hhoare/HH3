/* @pjs preload="data/hhtitle.png, data/hhlink.png, data/hhenemies_items_chars.png, data/hhmaptiles.png"; */

int page = 0;

int frogX = 32*5;
int frogY = 32*8;

float speed=8;

int cameraX;
int cameraY;


//ASSUMING FROG VELOCITY = 40
int mapWidth, mapHeight;
//
int r=0;
int l=0;
int u=0;
int d=0;

int type=8;





int mapVar;





void setup() {
  size(640, 480);//ASSUMING FROG VELOCITY = 40
  frameRate(30);
  noStroke();

  //addCurley("dungeon1numbers.txt");

  loadLinkSprites();
  loadImages2(); // enemies






  populateArrays();
}
float healthmax = 3;
float health = healthmax;
int healthcounter = 0;
//if healthcounter is 0 and you collide, then health -=.5 and health counter = 1;

long tick;


boolean dGrid;


int gx, gy;

void draw() {

  if (page==0) {
    drawTitle();
  } else if (page == 1) {
    gamePlay();
  }



}






int types =2;

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
  if (frogY < cameraY + 32*8 && cameraY > 0) {//ASSUMING FROG VELOCITY = 40
    cameraY = frogY - 32*8;
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

  if (page==0) {

    if (key == ' ' ) {
      page=1;
      mapVar=1;
      loadLevelFromText("OVERWORLD.txt");    //change to STOREMAP to load the store
      frogX = 56*32;
      frogY = 46*32;
      bordersAndCamera();
    }
  } else {


    boolean moveRight = checkDir(gx, gy, 4);
    boolean moveLeft = checkDir(gx, gy, 3);
    boolean moveUp =   checkDir(gx, gy, 1);
    boolean moveDown = checkDir(gx, gy, 2);
    
    boolean canMove = ( u == 0 && d == 0 && l == 0 && r == 0);



    if ( mapVar==2 && (key == 'b' || key == 'B') && (gx == 11 || gx == 9 || gx == 13) && gy == 12 && coins>=500) {
      coins-=500;
      healthmax+=1;
      health=healthmax;
    }

    if (key == 'g')
      dGrid = !dGrid;

    if (((key == 'w' || keyCode == UP) ) && (canMove && moveUp)) {
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



    if (((key == 's' || keyCode == DOWN) )  && (canMove && moveDown)) {
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


    if (((key == 'a' || keyCode == LEFT)  ) && (canMove  && moveLeft)) {
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




    if (((key == 'd' || keyCode == RIGHT) ) && (canMove  && moveRight)) {
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

    if ((key == 'z' || key == 'Z') && types<=4 ) {
      types+=4;
      linkSwordFix = 1;
    }
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
}










int linkSwordFix = 0;



void keyReleased() {

  if ((key == 'z' || key == 'Z') && types>4) {
    types-=4;
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