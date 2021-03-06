class Satellite {
  PVector rAxis, position, xaxis;
  float rotateAngle, radius, angleBetween;
  String satLink,satName;
  int satId, NORAD;
  long time;

  Satellite(int NORAD,int satId) {
    this.satId=satId;
    this.NORAD=NORAD;
    //JSON api
    JSONObject j = loadJSONObject("https://api.n2yo.com/rest/v1/satellite/positions/"+NORAD+"/41.702/-76.014/0/1/&apiKey=A3H9WM-AYYDBG-RRDS8C-4SPM");
    JSONArray positionsJson = j.getJSONArray("positions");
    JSONObject info = j.getJSONObject("info");
    satName = info.getString("satname");

    //get positions of satellite
    JSONObject pos = positionsJson.getJSONObject(0);

    float satLon = pos.getFloat("satlongitude");
    float satLat = pos.getFloat("satlatitude");
    float satAlt = pos.getFloat("sataltitude");
    time = pos.getLong("timestamp");

    //radius of satellites orbit from center of earth
    radius = earth.r + (satAlt *0.031);

    //spheric to cartesian coordinates
    float theta = radians(satLat);
    float phi = radians(satLon)+PI;

    position = new PVector(radius * cos(theta) * cos(phi), -radius * sin(theta), -radius * cos(theta) * sin(phi));
    xaxis = new PVector(1,0,0);
    angleBetween = PVector.angleBetween(xaxis,position);

    //axis satellite rotates around
    rAxis = xaxis.cross(position);
}

  void update() {
    //rotate satellite around earth
    pushMatrix();
    translate(position.x,position.y,position.z);
    rotate(angleBetween, rAxis.x, rAxis.y, rAxis.z);
    if(currentSatellite==satId) fill(255,255,0);
    else fill(255);
    box(5);
    popMatrix();
  }
  
  void updatePosition(){
    //JSON api
    JSONObject j = loadJSONObject("https://api.n2yo.com/rest/v1/satellite/positions/"+NORAD+"/41.702/-76.014/0/1/&apiKey=A3H9WM-AYYDBG-RRDS8C-4SPM");
    JSONArray positionsJson = j.getJSONArray("positions");
    JSONObject info = j.getJSONObject("info");
    satName = info.getString("satname");

    //get positions of satellite
    JSONObject pos = positionsJson.getJSONObject(0);

    float satLon = pos.getFloat("satlongitude");
    float satLat = pos.getFloat("satlatitude");
    float satAlt = pos.getFloat("sataltitude");
    time = pos.getLong("timestamp");

    //radius of satellites orbit from center of earth
    radius = earth.r + (satAlt *0.031);

    //spheric to cartesian coordinates
    float theta = radians(satLat);
    float phi = radians(satLon)+PI;

    position = new PVector(radius * cos(theta) * cos(phi), -radius * sin(theta), -radius * cos(theta) * sin(phi));
    xaxis = new PVector(1,0,0);
    angleBetween = PVector.angleBetween(xaxis,position);

    //axis satellite rotates around
    rAxis = xaxis.cross(position);
  }
}
