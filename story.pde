//int storycounter;


void story() {
  background(#1BA032);
  fill(0);
  textSize(25);
  text("This is Link's story, not Zelda's", 120-50, 30);
  textSize(15);
  text("Your princess has been captured, \nbut not because she's a girl, \nshe was outnumbered", 20, 70);
  image(princess, 300, 50, 32*2, 32*2);
  image(right3, 100, 150, 64*2, 32*2);
  text("As Link, you must explore your surroundings,\n clearing all 4 dungeons in order\n to rescue the princess", 300-50, 150);
  text("Use the arrow keys to move,\nand SPACE or Z to attack. \nDon't forget to visit the shop to upgrade your health", 20, 270); 
  image(shop,425,235,48*2,32*2);
  textSize(75);
  text("GOOD LUCK", 85-50, 400);
  textSize(25);
  text("ENTER TO BEGIN", 200-50, 450);
}


void win() {
  background(#0ACB4F);
  fill(0);
  image(t1, 300-20, 50-20, 20*3, 20*3);
  image(princess2,298-20,110-20,32*2, 32*2);
  textSize(30);
  text("              Congratulations!\nYou've gotten through all 4 dungeons\n      and now the princess is free!\nYou've been awarded three triangles!",0,200);
}