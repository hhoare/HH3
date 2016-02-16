ArrayList<ENEMY> enemies  = new ArrayList<ENEMY>();



void drawEnemy(int x, int y, int skin ) {
  if (skin == 1)
    fill(#0000FF);
  else
    fill(#FF0000);
  rect(x, y, 32, 32);
  fill(#FF0000, 100);
  ellipse(x+16, y+16, 32*8, 32*8);
}


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
    upBound = ub;
    downBound = db;
    leftBound = lb;
    rightBound = rb+1;

    skin=_skin;
  }


  void update() {
    egx1=(ex1+16)/32;
    egy1=(ey1+16)/32;



    if (    (dist(ex1, ey1, frogX+16, frogY+16 ) < 32*4) &&  egx1<=rightBound ){//&& egx1>leftBound && egy1>upBound && egy1<downBound) {

      if (edir1 == 0) {

    //    if (random(1) < 2) {

          if (ex1<frogX && checkDir(egx1, egy1, 4) &&  egx1<rightBound-1 ) {
            edir1 = 4;
            ecount1 = 0;
            etypes1 = 4;
          } else if (ex1 > frogX&& checkDir(egx1, egy1, 3)) {
            edir1 = 3;
            ecount1 = 0;
          } else if (ey1<frogY && checkDir(egx1, egy1, 2 ) ) {
            edir1 = 2;
            ecount1 = 0;
          } else if (ey1>frogY  && checkDir(egx1, egy1, 1)) {
            edir1 = 1;
            ecount1 = 0;
          }
        //}
        else {
          if (ey1<frogY && checkDir(egx1, egy1, 2 ) ) {
            edir1 = 2;
            ecount1 = 0;
          } else if (ey1>frogY  && checkDir(egx1, egy1, 1)) {
            edir1 = 1;
            ecount1 = 0;
          } else if (ex1<frogX && checkDir(egx1, egy1, 4) &&  egx1<rightBound-1  ) {
            edir1 = 4;
            ecount1 = 0;
            etypes1 = 4;
          } else if (ex1 > frogX&& checkDir(egx1, egy1, 3)) {
            edir1 = 3;
            ecount1 = 0;
          }
        }
      }
    }





    if (edir1 == 4) {
      ecount1++;

      ex1 += 4;
      if (ecount1 > 7) {
        ecount1 = 0;
        edir1 = 0;
      }
    }

    if (edir1 == 3) {
      ecount1++;
      ex1 -= 4;
      if (ecount1 > 7) {
        ecount1 = 0;
        edir1 = 0;
      }
    }


    if (edir1 == 1) {
      ecount1++;

      ey1 -= 4;
      if (ecount1 > 7) {
        ecount1 = 0;
        edir1 = 0;
      }
    }

    if (edir1 == 2) {
      ecount1++;
      ey1 += 4;
      if (ecount1 > 7) {
        ecount1 = 0;
        edir1 = 0;
      }
    }


    //collision with sword
    //collision with link
    if (random(1) < .01) {
      // enemies.remove(this);
    }

    drawEnemy(ex1-cameraX, ey1-cameraY, skin);
  }
}