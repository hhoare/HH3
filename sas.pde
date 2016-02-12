void addCurley(String s) {
  String[] q = loadStrings("data/" + s);

  String[] output = new String[q.length];

  for (int i = 0; i < q.length; i++) {
    output[i] = "{"+q[i] + "},";
  }

  saveStrings("data/cheese.txt", output);
}


void mousePressed() {

  frogX = 32*0;
  frogY = 32*2;

  mapData = cheese;
  mapWidth = mapData[0].length*32;
  mapHeight = mapData.length*32;
  cameraX = 0;
  cameraY = 0;
  
  println(cameraX);
}