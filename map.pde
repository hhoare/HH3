
PImage[] mt = new PImage[18*8];

int[][] mapData;


PImage up1;
PImage up2;
PImage up3; //sword

PImage down1;
PImage down2;
PImage down3; //sword

PImage left1;
PImage left2;
PImage left3; //sword

PImage right1;
PImage right2;
PImage right3; //sword



int grid = 32;







void drawGrid() {
  stroke(0);
  strokeWeight(1);
  for (int i = 0; i <height; i+=grid) 
    line(0, i, width, i);//hor

  for (int i = 0; i <width; i+=grid) 
    line(i, 0, i, height);//ver
}



void fixImage(PImage q) {
  for (int i=0; i < q.pixels.length; i++) {
    if (q.pixels[i] == 0) {
      q.pixels[i] = color(0, 1);
    }
    //  println(q.pixels[i]);
  }
}

//PImage qqq; 