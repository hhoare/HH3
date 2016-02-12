int[] badTiles = {2, 137, 131, 18, 34, 0, 22, 94};

boolean checkDir(int x, int y, int q) {
  int i = 0;

  while (i < badTiles.length) {

    if (q == 1) {
      if (y > 0   && map1Data[y-1][x] == badTiles[i]    ) {
        return true;
      }
    }

    if (q == 2) {
      if (y < map1Data.length  && map1Data[y+1][x] == badTiles[i]    ) {
        return true;
      }
    }

    if (q == 3) {
      if (x > 0   && map1Data[y][x - 1] == badTiles[i]    ) {
        return true;
      }
    }

    if (q == 4) {
      //println(map1Data[y][x + 1]);
      if (x < map1Data[0].length-1  && map1Data[y][x + 1] == badTiles[i]    ) {
        
        return true;
      }
    }




    i++;
  }

  return false;
}