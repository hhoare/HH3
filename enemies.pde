ArrayList<ENEMY> enemies  = new ArrayList<ENEMY>();

void drawEnemy(int x, int y, int skin ) {
  // red ball guy
  if (skin == 1) {
    image(en1u1, x, y, 32, 32);
    //  enhealth = 1;
  } 
  if (skin == -1) {
    image(en1u2, x, y, 32, 32);
    //  enhealth = 1;
  } 
  if (skin == 2) {
    image(en1d1, x, y, 32, 32);
    // enhealth = 1;
  } 
  if (skin == -2) {
    image(en1d2, x, y, 32, 32);
    // enhealth = 1;
  } 
  if (skin == 3) {
    image(en1l1, x, y, 32, 32);
    /// enhealth = 1;
  } 
  if (skin == -3) {
    image(en1l2, x, y, 32, 32);
    ///  enhealth = 1;
  } 
  if (skin == 4) {
    image(en1r1, x, y, 32, 32);
    /// enhealth = 1;
  } 
  if (skin == -4) {
    image(en1r2, x, y, 32, 32);
    /// enhealth = 1;
  } 
  /*
  noStroke();
   fill(#00FF00, 250);
   ellipse(x+16, y+16, 16, 16);
   fill(#0000FF, 100);
   ellipse(x+16, y+16, 60, 60);
   */
}

void drawEnemy2(int x, int y, int skin ) {

  // red dude
  if (skin == 1) {
    image(en2u1, x, y, 32, 32);
    //enhealth = 2;
  } 
  if (skin == -1) {
    image(en2u2, x, y, 32, 32);
    //enhealth = 2;
  } 
  if (skin == 2) {
    image(en2d1, x, y, 32, 32);
    //enhealth = 2;
  } 
  if (skin == -2) {
    image(en2d2, x, y, 32, 32);
    // enhealth = 2;
  }   
  if (skin == 3) {
    image(en2l1, x, y, 32, 32);
    // enhealth = 2;
  } 
  if (skin == -3) {
    image(en2l2, x, y, 32, 32);
    // enhealth = 2;
  }
  if (skin == 4) {
    image(en2r1, x, y, 32, 32);
    // enhealth = 2;
  } 
  if (skin == -4) {
    image(en2r2, x, y, 32, 32);
    // enhealth = 2;
  }
}

void drawEnemy3(int x, int y, int skin ) {

  // red dude
  if (skin == 1) {
    image(en3u1, x, y, 32, 32);
    //enhealth = 2;
  } 
  if (skin == -1) {
    image(en3u2, x, y, 32, 32);
    //enhealth = 2;
  } 
  if (skin == 2) {
    image(en3d1, x, y, 32, 32);
    //enhealth = 2;
  } 
  if (skin == -2) {
    image(en3d2, x, y, 32, 32);
    // enhealth = 2;
  }   
  if (skin == 3) {
    image(en3l1, x, y, 32, 32);
    // enhealth = 2;
  } 
  if (skin == -3) {
    image(en3l2, x, y, 32, 32);
    // enhealth = 2;
  }
  if (skin == 4) {
    image(en3r1, x, y, 32, 32);
    // enhealth = 2;
  } 
  if (skin == -4) {
    image(en3r2, x, y, 32, 32);
    // enhealth = 2;
  }
}

void drawEnemy4(int x, int y, int skin ) {

  // red dude
  if (skin == 1) {
    image(en4u1, x, y, 32, 32);
    //enhealth = 2;
  } 
  if (skin == -1) {
    image(en4u2, x, y, 32, 32);
    //enhealth = 2;
  } 
  if (skin == 2) {
    image(en4d1, x, y, 32, 32);
    //enhealth = 2;
  } 
  if (skin == -2) {
    image(en4d2, x, y, 32, 32);
    // enhealth = 2;
  }   
  if (skin == 3) {
    image(en4l1, x, y, 32, 32);
    // enhealth = 2;
  } 
  if (skin == -3) {
    image(en4l2, x, y, 32, 32);
    // enhealth = 2;
  }
  if (skin == 4) {
    image(en4r1, x, y, 32, 32);
    // enhealth = 2;
  } 
  if (skin == -4) {
    image(en4r2, x, y, 32, 32);
    // enhealth = 2;
  }
}



// enemy PImages

PImage en1r1;  // red ball guy
PImage en1r2;
PImage en1l1;
PImage en1l2;
PImage en1u1;
PImage en1u2;
PImage en1d1;
PImage en1d2;

PImage en2r1;   // blue ball guy
PImage en2r2;
PImage en2l1;
PImage en2l2;
PImage en2u1;
PImage en2u2;
PImage en2d1;
PImage en2d2;

PImage en3r1;  // red guy
PImage en3r2;
PImage en3l1;
PImage en3l2;
PImage en3u1;
PImage en3u2;
PImage en3d1;
PImage en3d2;

PImage en4r1;   // blue guy 
PImage en4r2;
PImage en4l1;
PImage en4l2;
PImage en4u1;
PImage en4u2;
PImage en4d1;
PImage en4d2;

PImage en5r1;   // dog guy 
PImage en5r2;
PImage en5l1;
PImage en5l2;
PImage en5u1;
PImage en5u2;
PImage en5d1;
PImage en5d2;

PImage en6r1;   // red knight 
PImage en6r2;
PImage en6l1;
PImage en6l2;
PImage en6u1;
PImage en6u2;
PImage en6d1;
PImage en6d2;

PImage en7r1;   // blue knight 
PImage en7r2;
PImage en7l1;
PImage en7l2;
PImage en7u1;
PImage en7u2;
PImage en7d1;
PImage en7d2;

PImage en8d1; // skeleton
PImage en8d2;



class ENEMY {
  int ex1=96, ey1=96;
  int etypes1;
  int egx1;
  int egy1;
  int edir1;
  int ecount1;
  int skin = 1;
  ;

  int type;

  int upBound, downBound, leftBound, rightBound;


  int enhealth;

  int stopMe;

  ENEMY(int _gx, int _gy, int ub, int db, int lb, int rb, int type) { //grid x, grid y, ub, db, lb, rb, skin

    ex1 = _gx*32;
    ey1 = _gy*32;
    upBound = ub-1;
    downBound = db-1;
    leftBound = lb-1;
    rightBound = rb+1;




    this.type = type;


    if (type == 1) {
      enhealth = 1;
    }

    if (type == 2) {
      enhealth = 1;                                                           // IT DOESNT WORK IF HEALTH IS MORE THAN 1
    }

    if (type == 3) {
      enhealth = 1;
    }
  }


  void update() {
    egx1=(ex1+16)/32;
    egy1=(ey1+16)/32;


    if (stopMe > 0) {

      stopMe++;
      if (stopMe == 10) {
        stopMe = 0;
      }
    }


    if ( stopMe == 0 && (   (dist(ex1, ey1, frogX+16, frogY+16 ) < 32*4 ) &&  egx1<=rightBound && egx1>=leftBound && egy1>=upBound && egy1<=downBound) ) {//) {

      if (edir1 == 0) {

        //    if (random(1) < 2) {

        if (ex1<frogX && checkDir(egx1, egy1, 4) &&  egx1<rightBound ) {
          edir1 = 4;
          ecount1 = 0;
          etypes1 = 4;
        } else if (ex1 > frogX&& checkDir(egx1, egy1, 3) &&  egx1>leftBound) {
          edir1 = 3;
          ecount1 = 0;
        } else if (ey1<frogY && checkDir(egx1, egy1, 2 )&&  egy1<downBound ) {
          edir1 = 2;
          ecount1 = 0;
        } else if (ey1>frogY  && checkDir(egx1, egy1, 1) &&  egy1>upBound) {
          edir1 = 1;
          ecount1 = 0;
        }
        //} else {
        if (ey1<frogY && checkDir(egx1, egy1, 2 ) &&  egy1<downBound ) {
          edir1 = 2;
          ecount1 = 0;
        } else if (ey1>frogY  && checkDir(egx1, egy1, 1) &&  egy1>upBound) {
          edir1 = 1;
          ecount1 = 0;
        } else if (ex1<frogX && checkDir(egx1, egy1, 4) &&  egx1<rightBound  ) {
          edir1 = 4;
          ecount1 = 0;
          etypes1 = 4;
        } else if (ex1 > frogX&& checkDir(egx1, egy1, 3) &&  egx1>leftBound) {
          edir1 = 3;
          ecount1 = 0;
        }
      }
    }






    if (edir1 == 4) {
      ecount1++;
      ex1 += 4;

      if (ecount1 < 4) {

        skin=4;
      } else {
        skin=-4;
      }




      if (ecount1 > 7) {
        ecount1 = 0;
        edir1 = 0;
      }
    }


    if (edir1 == 3) {
      ecount1++;
      ex1 -= 4;
      if (ecount1 < 4) {

        skin=3;
      } else {
        skin=-3;
      }
      if (ecount1 > 7) {
        ecount1 = 0;
        edir1 = 0;
      }
    }


    if (edir1 == 1) {
      ecount1++;
      ey1 -= 4;
      if (ecount1 < 4) {
        skin=1;
      } else {
        skin=-1;
      }
      if (ecount1 > 7) {
        ecount1 = 0;
        edir1 = 0;
      }
    }


    if (edir1 == 2) {
      ecount1++;
      ey1 += 4;
      if (ecount1 < 4) {
        skin=2;
      } else {
        skin=-2;
      }
      if (ecount1 > 7) {
        ecount1 = 0;
        edir1 = 0;
      }
    }


    //collision with sword
    //collision with link

    if (dist(ex1+16, ey1+16, frogX+16, frogY+16)  < 26) { // enemy hits you

      // println(types);

      ouch();
    }

    //below is sword hits enemy 
    if ((types == 8 &&  dist(ex1+16, ey1+16, frogX+18, frogY+16) < 26)  ||  (types == 6 &&  dist(ex1+16, ey1+16, frogX+18, frogY+48)  < 26) ||  (types == 7 &&  dist(ex1+16, ey1+16, frogX-20, frogY+16)  < 26) ||  (types == 5 &&  dist(ex1+16, egy1+16, frogX+14, frogY-20) < 26)  )    // FIX THIS, REDRAW THE CIRCLES AND SHIT
    {
      //   println("yes");



      enouch();
      if (enhealth==0) {

        if (random(1) <= .15) {  //gold rupee
          drops.add(new DROPS(egx1, egy1, 1));
        } else if ( random(1)<= .3) {            //image for potion
          drops.add(new DROPS(egx1, egy1, 2));
        } else if (random(1)<= .45) {            // image for blue
          drops.add(new DROPS(egx1, egy1, 3));
        } else if ( random(1)<=1) {            // image for green rupee
          drops.add(new DROPS(egx1, egy1, 4));
        }


        enemies.remove(this);
      }
    }


    if (type == 1) {
      drawEnemy(ex1-cameraX, ey1-cameraY, skin);
    }


    if (type == 2) {
      drawEnemy2(ex1-cameraX, ey1-cameraY, skin);
    }
    if (type == 3) {
      drawEnemy3(ex1-cameraX, ey1-cameraY, skin);
    }
    if (type == 4) {
      drawEnemy4(ex1-cameraX, ey1-cameraY, skin);
    }
  }


  void enouch() {  //enemy health
    ///println("hi" + types);

    stopMe = 1;
    enhealth-=1;
    types-=4;
    println("yes");
  }
}

PImage heartfull;
PImage hearthalf;
PImage grRupee;
PImage bRupee;
PImage goldRupee;
PImage potion;
PImage title;





void loadImages2() {
  PImage q = loadImage("data/enemies_items_chars.png");

  en1r1= new PImage(16, 16, ARGB);    //en1's are the red ball guy
  en1r1.copy(q, 48, 0, 16, 16, 0, 0, 16, 16); 
  en1r2= new PImage(16, 16, ARGB);
  en1r2.copy(q, 48, 16, 16, 16, 0, 0, 16, 16);

  en1l1= new PImage(16, 16, ARGB);
  en1l1.copy(q, 16, 0, 16, 16, 0, 0, 16, 16);
  en1l2= new PImage(16, 16, ARGB);
  en1l2.copy(q, 16, 16, 16, 16, 0, 0, 16, 16);

  en1u1= new PImage(16, 16, ARGB);
  en1u1.copy(q, 32, 0, 16, 16, 0, 0, 16, 16);
  en1u2= new PImage(16, 16, ARGB);
  en1u2.copy(q, 32, 16, 16, 16, 0, 0, 16, 16);

  en1d1= new PImage(16, 16, ARGB);
  en1d1.copy(q, 0, 0, 16, 16, 0, 0, 16, 16);
  en1d2= new PImage(16, 16, ARGB);
  en1d2.copy(q, 0, 16, 16, 16, 0, 0, 16, 16);


  en2r1= new PImage(16, 16, ARGB);    //en2's are the red dude
  en2r1.copy(q, 48, 0+32, 16, 16, 0, 0, 16, 16); 
  en2r2= new PImage(16, 16, ARGB);
  en2r2.copy(q, 48, 16+32, 16, 16, 0, 0, 16, 16);

  en2l1= new PImage(16, 16, ARGB);
  en2l1.copy(q, 16, 0+32, 16, 16, 0, 0, 16, 16);
  en2l2= new PImage(16, 16, ARGB);
  en2l2.copy(q, 16, 16+32, 16, 16, 0, 0, 16, 16);

  en2u1= new PImage(16, 16, ARGB);
  en2u1.copy(q, 32, 0+32, 16, 16, 0, 0, 16, 16);
  en2u2= new PImage(16, 16, ARGB);
  en2u2.copy(q, 32, 16+32, 16, 16, 0, 0, 16, 16);

  en2d1= new PImage(16, 16, ARGB);
  en2d1.copy(q, 0, 0+32, 16, 16, 0, 0, 16, 16);
  en2d2= new PImage(16, 16, ARGB);
  en2d2.copy(q, 0, 16+32, 16, 16, 0, 0, 16, 16);


  en3r1= new PImage(16, 16, ARGB);    //en3's are the red knight
  en3r1.copy(q, 48, 0+32+32, 16, 16, 0, 0, 16, 16); 
  en3r2= new PImage(16, 16, ARGB);
  en3r2.copy(q, 48, 16+32+32, 16, 16, 0, 0, 16, 16);

  en3l1= new PImage(16, 16, ARGB);
  en3l1.copy(q, 16, 0+32+32, 16, 16, 0, 0, 16, 16);
  en3l2= new PImage(16, 16, ARGB);
  en3l2.copy(q, 16, 16+32+32, 16, 16, 0, 0, 16, 16);

  en3u1= new PImage(16, 16, ARGB);
  en3u1.copy(q, 32, 0+32+32, 16, 16, 0, 0, 16, 16);
  en3u2= new PImage(16, 16, ARGB);
  en3u2.copy(q, 32, 16+32+32, 16, 16, 0, 0, 16, 16);

  en3d1= new PImage(16, 16, ARGB);
  en3d1.copy(q, 0, 0+32+32, 16, 16, 0, 0, 16, 16);
  en3d2= new PImage(16, 16, ARGB);
  en3d2.copy(q, 0, 16+32+32, 16, 16, 0, 0, 16, 16);

  en4r1= new PImage(16, 16, ARGB);    //en4's are the blue ball guy
  en4r1.copy(q, 48, 0+32+32+32, 16, 16, 0, 0, 16, 16); 
  en4r2= new PImage(16, 16, ARGB);
  en4r2.copy(q, 48+64, 16+32+32+16, 16, 16, 0, 0, 16, 16);

  en4l1= new PImage(16, 16, ARGB);
  en4l1.copy(q, 16, 0+32+32+32, 16, 16, 0, 0, 16, 16);
  en4l2= new PImage(16, 16, ARGB);
  en4l2.copy(q, 16+64, 16+32+32+16, 16, 16, 0, 0, 16, 16);

  en4u1= new PImage(16, 16, ARGB);
  en4u1.copy(q, 32, 0+32+32+32, 16, 16, 0, 0, 16, 16);
  en4u2= new PImage(16, 16, ARGB);
  en4u2.copy(q, 32+64, 16+32+32+16, 16, 16, 0, 0, 16, 16);

  en4d1= new PImage(16, 16, ARGB);
  en4d1.copy(q, 0, 0+32+32+32, 16, 16, 0, 0, 16, 16);
  en4d2= new PImage(16, 16, ARGB);
  en4d2.copy(q, 0+64, 16+32+32+16, 16, 16, 0, 0, 16, 16);



  //items
  heartfull= new PImage(16, 16, ARGB);
  heartfull.copy(q, 32, 208, 16, 16, 0, 0, 16, 16);
  hearthalf= new PImage(16, 16, ARGB);
  hearthalf.copy(q, 128+16, 208, 16, 16, 0, 0, 16, 16);

  grRupee= new PImage(16, 16, ARGB);
  grRupee.copy(q, 128+32, 208, 16, 16, 0, 0, 16, 16);
  bRupee= new PImage(16, 16, ARGB);
  bRupee.copy(q, 48+16, 208, 16, 16, 0, 0, 16, 16);
  goldRupee= new PImage(16, 16, ARGB);
  goldRupee.copy(q, 48, 208, 16, 16, 0, 0, 16, 16);
  potion= new PImage(16, 16, ARGB);
  potion.copy(q, 16*6, 208, 16, 16, 0, 0, 16, 16);

  q = loadImage("data/zeldatitlescreen.png");
  //title screen
  title= new PImage(296, 164, ARGB);
  title.copy(q, 0, 200, 296, 164, 0, 0, 592, 328);
}

//items and chars pimages


//items and chars pimages