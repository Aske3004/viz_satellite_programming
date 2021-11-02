//Switch between the selected satellite with RIGHTARROW and LEFTARROW
//1 second run in our program is equivalent to 10 minutes in real life

import java.util.Date;
Earth earth;
Satellite sat1;
Satellite sat2;
Satellite sat3;
Satellite sat4;
Satellite sat5;
Satellite sat6;
Satellite sat7;
Satellite sat8;
Satellite sat9;
Satellite sat10;
long time;

void setup() {
  frameRate(60);
  size(900, 900, P3D);
  noStroke();
  earth = new Earth();
  earth.create();
  createSatellites();
}

void draw() {
  clear();
  noStroke();
  background(51);
  fill(255);
  textSize(35);
  time = sat1.time;
  Date date = new Date(time*1000);
  text(date.toString(),10,35);
  changeSatellite();
  earth.update();
  drawSatellites();
}
