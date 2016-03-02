ArrayList<DROPS> drops  = new ArrayList<DROPS>();


void drawItems(int x, int y, int type) {
  // fill(#FF0000);
  //rect(x,y,50,50);
  //println("hi");
  if (type == 1) {
    image(goldRupee, x, y, 32, 32);
    //image(grRupee, x, y, 32, 32);
  }
  if (type ==2) {
    image(potion, x, y, 32, 32);
  }
  if (type ==3) {
    image(bRupee, x, y, 32, 32);
  }
  if (type ==4) {
    image(grRupee, x, y, 32, 32);
  }
}



class DROPS {
  int ix=96, iy=96;
  int itypes;
  int igx;
  int igy;
  int edir1;
  int ecount1;


  DROPS(int gx, int gy, int types) { //grid x, grid y, ub, db, lb, rb, skin

    ix = gx*32;
    iy = gy*32;


    itypes=types;
  }

  void update() {
    igx=(int) ((ix+16)/32);
    igy=(int)((iy+16)/32);


    drawItems(ix-cameraX, iy-cameraY, itypes);

    if (dist(ix+16, iy+16, frogX+16, frogY+16)  < 30) { // item hits you
      drops.remove(this);
      if (itypes== 1) {
        coins+=50;
      }
      if (itypes==2) {
        health=healthmax;
      }
      if (itypes== 3) {
        coins+=20;
      }
      if (itypes== 4) {
        coins+=5;
      }
    }
  //  println(coins);
  }
}

int coins= 000;