ArrayList<ENEMY> enemies  = new ArrayList<ENEMY>();




void drawEnemy(int x, int y, int skin ) {
  // red ball guy
  if (skin == 1) {
    image(en1u1, x, y, 32, 32);
    enhealth = 1;
  } 
  if (skin == -1) {
    image(en1u2, x, y, 32, 32);
    enhealth = 1;
  } 
  if (skin == 2) {
    image(en1d1, x, y, 32, 32);
    enhealth = 1;
  } 
  if (skin == -2) {
    image(en1d2, x, y, 32, 32);
    enhealth = 1;
  } 
  if (skin == 3) {
    image(en1l1, x, y, 32, 32);
    enhealth = 1;
  } 
  if (skin == -3) {
    image(en1l2, x, y, 32, 32);
    enhealth = 1;
  } 
  if (skin == 4) {
    image(en1r1, x, y, 32, 32);
    enhealth = 1;
  } 
  if (skin == -4) {
    image(en1r2, x, y, 32, 32);
    enhealth = 1;
  } 
  // red dude
  if (skin == 5) {
    image(en2u1, x, y, 32, 32);
    enhealth = 2;
  } 
  if (skin == -5) {
    image(en2u2, x, y, 32, 32);
    enhealth = 2;
  } 
  if (skin == 6) {
    image(en2d1, x, y, 32, 32);
    enhealth = 2;
  } 
  if (skin == -6) {
    image(en2d2, x, y, 32, 32);
    enhealth = 2;
  }   
  if (skin == 7) {
    image(en2l1, x, y, 32, 32);
    enhealth = 2;
  } 
  if (skin == -7) {
    image(en2l2, x, y, 32, 32);
    enhealth = 2;
  }
  if (skin == 8) {
    image(en2r1, x, y, 32, 32);
    enhealth = 2;
  } 
  if (skin == -8) {
    image(en2r2, x, y, 32, 32);
    enhealth = 2;
  }

  /*
  noStroke();
   fill(#00FF00, 250);
   ellipse(x+16, y+16, 16, 16);
   fill(#0000FF, 100);
   ellipse(x+16, y+16, 60, 60);
   */
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
  int skin;

  int upBound, downBound, leftBound, rightBound;

  ENEMY(int _gx, int _gy, int ub, int db, int lb, int rb, int _skin) { //grid x, grid y, ub, db, lb, rb, skin

    ex1 = _gx*32;
    ey1 = _gy*32;
    upBound = ub-1;
    downBound = db-1;
    leftBound = lb-1;
    rightBound = rb+1;

    skin=_skin;
  }


  void update() {
    egx1=(ex1+16)/32;
    egy1=(ey1+16)/32;



    if (    (dist(ex1, ey1, frogX+16, frogY+16 ) < 32*4 ) &&  egx1<=rightBound && egx1>=leftBound && egy1>=upBound && egy1<=downBound ) {//) {

      if (edir1 == 0) {

        //    if (random(1) < 2) {

        if (ex1<frogX && checkDir(egx1, egy1, 4) &&  egx1<rightBound ) {
          edir1 = 4;
          ecount1 = 0;
          if (etypes1<=4) {
            etypes1 = 4;
          }
          if (etypes1>=5) {
            etypes1 = 8;
          }
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
          if (etypes1<=4) {
            etypes1 = 4;
          }
          if (etypes1>=5) {
            etypes1 = 8;
          }
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

        if (etypes1<=4) {
          skin=4;
        }
        if (etypes1>=5) {
          skin=8;
        }
      } else {
        if (etypes1<=4) {
          skin=-4;
        }        
        if (etypes1>=5) {
          skin = -8;
        }
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

        if (etypes1<=4) {
          skin=3;
        }
        if (etypes1>=5) {
          skin=7;
        }
      } else {
        if (etypes1<=4) {
          skin=-3;
        }
        if (etypes1>=5) {
          skin=-7;
        }
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
        if (etypes1<=4) {
          skin=1;
        }
        if (etypes1>=5) {
          skin=5;
        }
      } else {
        if (etypes1<=4) {
          skin=-1;
        }
        if (etypes1>=5) {
          skin=-5;
        }
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
        if (etypes1<=4) {
          skin=2;
        }
        if (etypes1>=5) {
          skin=6;
        }
      } else {
        if (etypes1<=4) {
          skin=-2;
        }
        if (etypes1>=5) {
          skin=-6;
        }
      }
      if (ecount1 > 7) {
        ecount1 = 0;
        edir1 = 0;
      }
    }


    //collision with sword
    //collision with link

    if (dist(ex1+16, ey1+16, frogX+16, frogY+16)  < 26) { // enemy hits you
      ouch();
    }


    //below is sword hits enemy 
    if (  ((dist(egx1+16, egy1+16, frogX+18, frogY+48)< 40) ||  (dist(ex1, ey1, frogX-20, frogY+16)< 24) ||  (dist(ex1, ey1, frogX+48, frogY+16)< 24) ||  (dist(ex1, ey1, frogX+14, frogY-20)< 24)) && types >4  ) { 
      {


        enouch();
        if (enhealth==0) {


          if (random(1) <= .20) {  //gold rupee
            drops.add(new DROPS(egx1, egy1, 1));
          } else if ( random(1)<= .4) {            //image for potion
            drops.add(new DROPS(egx1, egy1, 2));
          } else if (random(1)<= .5) {            // image for blue
            drops.add(new DROPS(egx1, egy1, 3));
          } else if ( random(1)<=1) {            // image for green rupee
            drops.add(new DROPS(egx1, egy1, 4));
          }


          enemies.remove(this);
        }
      }
    }


    drawEnemy(ex1-cameraX, ey1-cameraY, skin);
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