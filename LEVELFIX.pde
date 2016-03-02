


void loadLevelFromText(String s) {
  //s is the name of the text file
  String[] q = loadStrings("data/hh" + s);



  //get width and height of map
  int rows = q.length;
  int cols = q[0].length()/2;//since there are 2 digits per tile

  mapData = new int[rows][cols];

  for (int j =0; j < rows; j++) {
    for (int i =0; i < cols; i++) {
      mapData[j][i] = parseInt(q[j].substring(2*i, 2*i+2));
    }
  }


  mapWidth = mapData[0].length*32;
  mapHeight = mapData.length*32;
}