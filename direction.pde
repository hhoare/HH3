int[] badTiles = {12, 02, 64, 22, 18, 00, 24, 58, 14, 34, 51, 30};  

boolean checkDir(int x, int y, int q) {
 // println("hi");
  int i = 0;

  while (i < badTiles.length) {

    if (q == 1) {
      if (y > 0   && mapData[y-1][x] == badTiles[i]    ) {
        return true;
      }
    }

    if (q == 2) {
      if (y < mapData.length-1  && mapData[y+1][x] == badTiles[i]    ) {
        return true;
      }
    }

    if (q == 3) {
      if (x > 0   && mapData[y][x - 1] == badTiles[i]    ) {
        return true;
      }
    }

    if (q == 4) {
      //println(mapData[y][x + 1]);
      if (x < mapData[0].length-1  && mapData[y][x + 1] == badTiles[i]    ) {

        return true;
      }
    }




    i++;
  }

  return false;
}