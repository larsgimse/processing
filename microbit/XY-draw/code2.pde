import processing.serial.*;
Serial port;
int xdraw;
int ydraw;

void setup() {
  size(400, 400);
  printArray(Serial.list());
  port = new Serial(this, Serial.list()[3], 115200);
  port.bufferUntil(10);
}

void draw() {
  fill(0, 12);
  rect(0, 0, width, height);
  fill(255,0,0);
  ellipse(xdraw, ydraw, 20, 20);
}

void serialEvent(Serial port) {
  String inData = port.readString();
  if (inData.charAt(0) == 'm') {
    inData = inData.substring(1);
    inData = trim(inData);
    String items[] = (split(inData, ' '));
    //println("x=" + items[0] + " y=" + items[1] + " z=" + items[2]);
    
    xdraw = (int) map(int(trim(items[0])), -1023, 1023, 0, height);
    ydraw = (int) map(int(trim(items[1])), -1023, 1023, 0, width);
    println("x=" + xdraw);
    println("y=" + ydraw);
  }
}
