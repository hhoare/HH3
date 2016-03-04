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

//  addCurley("map2num.txt");

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
  if (frogY > cameraY + 32*10 && cameraY < (mapHeight - height)) {//ASSUMING FROG VELOCITY = 40
    cameraY = frogY - 32*10;
  }
  if (frogY < cameraY + 32*8 && cameraY > 0) {//ASSUMING FROG VELOCITY = 40
    cameraY = frogY - 32*8;
  }
 // println(cameraX);
  
  
}





//PUT ALL THIS STUFF IN THE INPUT TAB




void mouseReleased() {
  //?
}



//PUT ALL THIS STUFF IN THE ART TAB







//  KEYBOARD STUFF GOES HERE








//OK LOL
int goUp, goDown, goLeft, goRight;
void keyPressed() {


  if (page==0) {

    if (key == ' ' ) {
      page=1;
      mapVar=1;
      loadLevelFromText("OVERWORLD.txt");    //change to STOREMAP to load the store
      frogX = 56*32;
      frogY = 46*32;
      cameraY = 1120;
      cameraX = 1440;
      //bordersAndCamera();
    }
  } else {

    if ((key == 'z' || key == 'Z') && types<=4 ) {
      types+=4;
    }



    if (key == 'w' || keyCode == UP) {
      goUp = 1;
    }

    if (key == 's'|| keyCode == DOWN) {
      goDown = 1;
    }

    if (key == 'a'|| keyCode == LEFT) {
      goLeft = 1;
    }
    if (key == 'd'|| keyCode == RIGHT) {
      goRight = 1;
    }

    if (key == 'g')
      dGrid = !dGrid;
  }
}

void keyReleased() {

  if ((key == 'z' || key == 'Z') && types> 4 ) {
    types-=4;
  }

  if (key == 'w' || keyCode == UP) {
    goUp = 0;
  }

  if (key == 's'|| keyCode == DOWN) {
    goDown = 0;
  }

  if (key == 'a'|| keyCode == LEFT) {
    goLeft = 0;
  }
  if (key == 'd'|| keyCode == RIGHT) {
    goRight = 0;
  }
}