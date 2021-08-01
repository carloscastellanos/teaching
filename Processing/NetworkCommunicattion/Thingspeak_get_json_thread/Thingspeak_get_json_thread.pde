import http.requests.*;

static final String url = "https://api.thingspeak.com/channels/1210866/fields/1.json?results=2";
String field1;

void setup() {
  size(400,400);
  
  field1 = "-1";
}

void draw() {
  background(204);
  // Every 1200 frames (20 secs) request new data
  if (frameCount % 1200 == 0) {
    thread("requestData");
  }
  ellipse(width/2, height/2, Integer.valueOf(field1), 40);
}

void requestData() {
  GetRequest get = new GetRequest(url);
  get.send(); // program will wait untill the request is completed
  println("response: " + get.getContent());

  JSONObject response = parseJSONObject(get.getContent());
  JSONArray feeds = response.getJSONArray("feeds");
  println("feeds: ");
    
  for(int i=0; i<feeds.size(); i++) {
    JSONObject feed = feeds.getJSONObject(i);
    field1 = feed.getString("field1");
    println("field1: " + field1);
  }
}
