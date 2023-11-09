// Read a text file into an array names 'lines' with loadStrings()
String data[];
void setup() {
  size(600, 600);
}

/* void draw() {
  background(255);
  data = loadStrings("namesData.txt");
  
  for (int i = 0; i<data.length; i++) {
    String line = data[i];
    
    String[] tokens = split(data[i], ",");
    
    fill(0);
    textSize(15);
    text(line, 10, (i+5)*20);
  }
} */

void draw() {
  background(255);
  data = loadStrings("namesData.XLS");
  
  for (int i = 0; i<data.length; i++) {
    String line = data[i];
    
    String[] tokens = split(data[i], ",");
    
    float age = 2023 - float(tokens[4]);
    
    fill(0);
    textSize(20);
    text(line, 10, 25+i*25);
    
    fill(#DEB83C);
    rect(200, i+25, map(age, 0, 63, 0, width-200), 25);
  }
}
