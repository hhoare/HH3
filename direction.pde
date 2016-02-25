int[] badTiles = {2, 137, 131, 18, 34, 0, 22, 94, 58};

boolean checkDir(int x, int y, int q) {
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