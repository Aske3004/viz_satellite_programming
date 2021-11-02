int value = 0;
int currentSatellite = 1;
String satelliteName;

void changeSatellite() {
  if (value==0) {
    if (key == ' '){
        updateSatellitePositions();
      }
    else if (key == CODED) {
      if (keyCode == LEFT) {
        currentSatellite--;
      } else if (keyCode == RIGHT) {
        currentSatellite++;
      }
    }
    value=255;
  }
  if(currentSatellite>10){
    currentSatellite=1;
  }
  else if (currentSatellite<1){
    currentSatellite=10;
  }
  if(currentSatellite==1)satelliteName=sat1.satName;
  else if(currentSatellite==2)satelliteName=sat2.satName;
  else if(currentSatellite==3)satelliteName=sat3.satName;
  else if(currentSatellite==4)satelliteName=sat4.satName;
  else if(currentSatellite==5)satelliteName=sat5.satName;
  else if(currentSatellite==6)satelliteName=sat6.satName;
  else if(currentSatellite==7)satelliteName=sat7.satName;
  else if(currentSatellite==8)satelliteName=sat8.satName;
  else if(currentSatellite==9)satelliteName=sat9.satName;
  else if(currentSatellite==10)satelliteName=sat10.satName;
  fill(255);
  textSize(35);
  text("The current satellite is: "+satelliteName,10,height-25);
}

void keyReleased() {
  if (value == 0) {
    value = 255;
  } else {
    value = 0;
  }
}
