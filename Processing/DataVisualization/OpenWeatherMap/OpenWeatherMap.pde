void setup() {
  size(600, 400);
  background(150);
  
  String url = "http://api.openweathermap.org/data/2.5/weather?q=";
  String miami = "Miami";
  String london = "London";
  String apiKey = "&appid=4eb706c1d64a12478a1021bceacbe040";
  String units = "&units=imperial";
  
  // Load the JSON documents
  JSONObject jsonMiami = loadJSONObject(url+miami+apiKey+units);
  delay(1000);
  JSONObject jsonLondon = loadJSONObject(url+london+apiKey+units);

  // get the temperature and wind speed 
  float tempMiami = jsonMiami.getJSONObject("main").getFloat("temp");
  float tempLondon = jsonLondon.getJSONObject("main").getFloat("temp");
  
  // draw ellipses to represent temp & wind speed
  // also print text to the screen and console
  ellipse(100, 100, tempMiami, tempMiami);
  text("Miami temperature", 100, 150, 150, 25);
  text(tempMiami, 100, 175);
  println("Miami temperature: " + tempMiami);
  ellipse(400, 100, tempLondon, tempLondon);
  text("London temperature", 400, 150, 150, 25);
  text(tempLondon, 400, 175);
  println("London temperature: " + tempLondon);
}