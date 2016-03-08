/* @pjs preload="data/hhtitle.png, data/hhlink.png, data/hhenemies_items_chars.png, data/hhmaptiles.png"; */

PFont myfont;

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
//  String[] fontList = PFont.list();    
//  printArray(fontList);
  
  myfont = createFont("LucidaHandwriting-Italic", 32);

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
  }
  if (page == 1) {
    story();
  }

  if (page == 2) {
    gamePlay();
  }
  if (page == 3){
  win();
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
if (key == 'o'){
page = 3;
}

  if (page==0) {

    if (key == ' ' ) {
      page=1;
    }
  } 


  if (page == 1) {
    if (key == ENTER ) {
      page=2;
      mapVar=1;
      loadLevelFromText("OVERWORLD.txt");    //change to STOREMAP to load the store
      frogX = 56*32;
      frogY = 46*32;
      cameraY = 1120;
      cameraX = 1440;
      //bordersAndCamera();
    }
  }


  if (page == 2) {

    if ((key == 'z' || key == 'Z' || key == ' ') && types<=4 ) {
      types+=4;
    }

    if (mapVar==2 && key == 'b' && gx==11 && gy ==12 && coins>=1000) {
      healthmax++;
      health=healthmax;
      coins-=1000;
    }
    if (key == '5') {

      coins+=500;
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

  if ((key == 'z' || key == 'Z' || key == ' ') && types> 4 ) {
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