ArrayList<DROPS> drops  = new ArrayList<DROPS>();


void drawItems(int x, int y, int type) {
 // fill(#FF0000);
  //rect(x,y,50,50);
  //println("hi");
  if (type == 1) {
    image(goldRupee, x, y, 32, 32);
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
    igx=(ix+16)/32;
    igy=(iy+16)/32;

    if (dist(ix+16, iy+16, frogX+16, frogY+16)  < 30) { // enemy hits you
      pickup();
    }
    drawItems(ix-cameraX, iy-cameraY, itypes);
    
    //println(ix);
  }
  

}

void pickup() {
}