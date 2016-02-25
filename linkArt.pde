void drawLink() {

  if (types==1) {
    if (u<3) {
      image(up1, frogX - cameraX, frogY - cameraY, 32, 32);
    } else {
      image(up2, frogX - cameraX, frogY - cameraY, 32, 32);
    }
  }


  if (types==2) {
    if (d<3) {
      image(down1, frogX - cameraX, frogY - cameraY, 32, 32);
    } else {
      image(down2, frogX - cameraX, frogY - cameraY, 32, 32);
    }
  }


  if (types==3) {
    if (l<3) {
      image(left1, frogX - cameraX, frogY - cameraY, 32, 32);
    } else {
      image(left2, frogX - cameraX, frogY - cameraY, 32, 32);
    }
  }

  if (types==4) {
    if (r<3) {
      image(right1, frogX - cameraX, frogY - cameraY, 32, 32);
    } else {
      image(right2, frogX - cameraX, frogY - cameraY, 32, 32);
    }
  }

  if (types==5) {     //down sword
    image(down3, frogX - cameraX, frogY - cameraY, 32, 64);
    noStroke();
    fill(#0000FF, 250);
    ellipse(frogX+18-cameraX, frogY+48- cameraY, 16, 16);
  }

  if (types==6) {     //left sword
    image(left3, frogX - cameraX-32, frogY - cameraY, 64, 32);
    noStroke();
    fill(#0000FF, 250);
    ellipse(frogX-20-cameraX, frogY+16- cameraY, 16, 16);
  }
  if (types==7) {     //right sword
    image(right3, frogX - cameraX, frogY - cameraY, 64, 32);
    noStroke();
    fill(#0000FF, 250);
    ellipse(frogX+48-cameraX, frogY+16- cameraY, 16, 16);
  }

  if (types==8) {     //up sword
    image(up3, frogX - cameraX, frogY - cameraY-32, 32, 64);
    noStroke();
    fill(#0000FF, 250);
    ellipse(frogX+14-cameraX, frogY-20- cameraY, 16, 16);
  } 
  noStroke();
  fill(#0000FF, 250);
  ellipse(frogX+16-cameraX, frogY+16- cameraY, 16, 16);
}