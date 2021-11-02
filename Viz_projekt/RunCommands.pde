void drawSatellites(){
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
}

void createSatellites(){
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
}

void updateSatellitePositions(){
  sat1.updatePosition();
  sat2.updatePosition();
  sat3.updatePosition();
  sat4.updatePosition();
  sat5.updatePosition();
  sat6.updatePosition();
  sat7.updatePosition();
  sat8.updatePosition();
  sat9.updatePosition();
  sat10.updatePosition();
}
