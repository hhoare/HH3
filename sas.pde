void addCurley(String s) {
  String[] q = loadStrings("data/" + s);

  String[] output = new String[q.length];

  for (int i = 0; i < q.length; i++) {
    output[i] = "{"+q[i] + "},";
  }

  saveStrings("data/test.txt", output); //change this to dungeon 1 once i make the dungeon map and save the numbers as a txt
}


void mousePressed() {     //this is just to test the new map loading
  page=2;

  mapData = store;
  mapWidth = mapData[0].length*32;
  mapHeight = mapData.length*32;
  frogX = 32*3;
  frogY = 32*2;
  cameraX = 0;
  cameraY = 0;
  


  //println(cameraX);
}