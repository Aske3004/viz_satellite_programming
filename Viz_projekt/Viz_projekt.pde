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
Satellite sat11;
Satellite sat12;
Satellite sat13;
Satellite sat14;
Satellite sat15;
Satellite sat16;
Satellite sat17;
Satellite sat18;
Satellite sat19;
Satellite sat20;
long time;

void setup() {
  frameRate(60);
  size(900, 900, P3D);
  noStroke();
  earth = new Earth();
  earth.create();
  
  sat1 = new Satellite(25544,1);
  sat2 = new Satellite(5,2);
  sat3 = new Satellite(22,3);
  sat4 = new Satellite(29,4);
  sat5 = new Satellite(58,5);
  sat6 = new Satellite(11,6);
  sat7 = new Satellite(12,7);
  sat8 = new Satellite(46,8);
  sat9 = new Satellite(20,9);
  sat10 = new Satellite(45,10);
  //sat11 = new Satellite("47/41.702/-76.014/0/1/&apiKey=A3H9WM-AYYDBG-RRDS8C-4SPM",11);
  //sat12 = new Satellite("https://api.n2yo.com/rest/v1/satellite/positions/59/41.702/-76.014/0/1/&apiKey=A3H9WM-AYYDBG-RRDS8C-4SPM",12);
  //sat13 = new Satellite("https://api.n2yo.com/rest/v1/satellite/positions/51/41.702/-76.014/0/1/&apiKey=A3H9WM-AYYDBG-RRDS8C-4SPM",13);
  //sat14 = new Satellite("https://api.n2yo.com/rest/v1/satellite/positions/115/41.702/-76.014/0/1/&apiKey=A3H9WM-AYYDBG-RRDS8C-4SPM",14);
  //sat15 = new Satellite("https://api.n2yo.com/rest/v1/satellite/positions/53/41.702/-76.014/0/1/&apiKey=A3H9WM-AYYDBG-RRDS8C-4SPM",15);
  //sat16 = new Satellite("https://api.n2yo.com/rest/v1/satellite/positions/59/41.702/-76.014/0/1/&apiKey=A3H9WM-AYYDBG-RRDS8C-4SPM",16);
  //sat17 = new Satellite("https://api.n2yo.com/rest/v1/satellite/positions/118/41.702/-76.014/0/1/&apiKey=A3H9WM-AYYDBG-RRDS8C-4SPM",17);
  //sat18 = new Satellite("https://api.n2yo.com/rest/v1/satellite/positions/82/41.702/-76.014/0/1/&apiKey=A3H9WM-AYYDBG-RRDS8C-4SPM",18);
  //sat19 = new Satellite("https://api.n2yo.com/rest/v1/satellite/positions/85/41.702/-76.014/0/1/&apiKey=A3H9WM-AYYDBG-RRDS8C-4SPM",19);
  //sat20 = new Satellite("https://api.n2yo.com/rest/v1/satellite/positions/107/41.702/-76.014/0/1/&apiKey=A3H9WM-AYYDBG-RRDS8C-4SPM",20);
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
  sat1.update();
  sat2.update();
  sat3.update();
  sat4.update();
  sat5.update();
  sat6.update();
  sat7.update();
  sat8.update();
  sat9.update();
  sat10.update();
  //sat11.update();
  //sat12.update();
  //sat13.update();
  //sat14.update();
  //sat15.update();
  //sat16.update();
  //sat17.update();
  //sat18.update();
  //sat19.update();
  //sat20.update();
}
