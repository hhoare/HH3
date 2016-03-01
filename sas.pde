void addCurley(String s) {
  String[] q = loadStrings("data/" + s);

  String[] output = new String[q.length];

  for (int i = 0; i < q.length; i++) {
    output[i] = "{"+q[i] + "},";
  }

  saveStrings("data/mapOne.txt", output); //change this to dungeon 1 once i make the dungeon map and save the numbers as a txt
}


void mousePressed() {     //this is just to test the new map loading
  loadLevelFromText("store.txt");    //change to STOREMAP to load the store
  coins=500;
  frogX = 32*6;
  frogY = 32*16;
  cameraX = 0;
  cameraY = 0;

//draw heart inside black area. have it so that you need to press 'b' to buy the thing you're standing in front of


  //println(cameraX);
}