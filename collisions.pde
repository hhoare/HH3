

void ouch() {

  if (healthcounter == 0) {
    healthcounter = 1;
    health-=.5;
  }
}






void drawHealth() {
  if ( healthcounter > 0) {
    healthcounter++;
    if (healthcounter == 30) {
      healthcounter = 0;
    }
  }

  for ( int i = 0; i < (int)health; i++) {
    image(heartfull, 550-40*i, 3, 32, 32);
  }

  if ((health - (int)health) == .5) {
    image(hearthalf, 550-40*((int)health), 3, 32, 32);
  }
}

int coincolor=0;
void drawCoins() {
  image(grRupee, 540, 420, 32, 32);
  fill(coincolor);
  stroke(20);
  textSize(20);
  text("x", 565, 440);
  textSize(25);
  text(coins, 575, 443);
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