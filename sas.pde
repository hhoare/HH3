void addCurley(String s) {
  String[] q = loadStrings("data/" + s);

  String[] output = new String[q.length];

  for (int i = 0; i < q.length; i++) {
    output[i] = "{"+q[i] + "},";
  }

  saveStrings("data/OVERWORLD2.txt", output); //change this to dungeon 1 once i make the dungeon map and save the numbers as a txt
}


void mousePressed() {     //this is just to test the new map loading


//draw heart inside black area. have it so that you need to press 'b' to buy the thing you're standing in front of


  //println(cameraX);
}