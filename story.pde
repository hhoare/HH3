//int storycounter;

void story() {
  background(#1BA032);
  fill(0);
  textSize(25);
  text("This is Link's story, not Zelda's", 120, 30);
  textSize(15);
  text("Your princess has been captured, \n but not because she's a girl, \n she was outnumbered", 20, 50);
  image(princess, 300, 50, 32*2, 32*2);
  image(right3, 100, 150, 64*2, 32*2);
  text("As Link, you must explore your surroundings,\n clearing all 4 dungeons in order\n to rescue the princess", 300, 150);
  text("Use the arrow keys to move,\nand SPACE or Z to attack. \nDon't forget to visit the shop to upgrade your health", 20, 250); 
  image(shop,425,235,48*2,32*2);
  textSize(75);
  text("GOOD LUCK", 85, 400);
  textSize(25);
  text("ENTER TO BEGIN", 200, 450);
}


void win() {
  background(#0ACB4F);
  fill(0);
  image(t1, 300, 50, 20*3, 20*3);
  image(princess2,298,110,32*2, 32*2);
}