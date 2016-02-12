void addCurley(String s) {
  String[] q = loadStrings("data/" + s);

  String[] output = new String[q.length];

  for (int i = 0; i < q.length; i++) {
    output[i] = "{"+q[i] + "},";
  }
  
  saveStrings("data/cheese.txt",output);
}