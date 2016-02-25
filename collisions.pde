

void ouch() {

  if (healthcounter == 0) {
    healthcounter = 1;
    health-=.5;
  }
}

float enhealth;

void enouch() {  //enemy health
  enhealth-=1;

}


void drawHealth() {
  if ( healthcounter > 0) {
    healthcounter++;
    if (healthcounter == 30) {
      healthcounter = 0;
    }
  }

  for ( int i = 0; i < (int)health; i++) {
    image(heartfull, 500-40*i, 3, 32, 32);
  }

  if ((health - (int)health) == .5) {
    image(hearthalf, 500-40*((int)health), 3, 32, 32);
  }
}

void moveFrog() {
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
}