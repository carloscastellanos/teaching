import http.requests.*;

static final String url = "https://api.thingspeak.com/channels/1210866/fields/1.json?results=2";

void setup() {
  size(400,400);
  smooth();
  
  GetRequest get = new GetRequest(url);
  get.send(); // program will wait untill the request is completed
  println("response: " + get.getContent());

  JSONObject response = parseJSONObject(get.getContent());
  JSONArray feeds = response.getJSONArray("feeds");
  println("feeds: ");
    
  for(int i=0; i<feeds.size(); i++) {
    JSONObject feed = feeds.getJSONObject(i);
    println("field1: " + feed.getString("field1"));
    ellipse(width/2, height/2, Integer.valueOf(feed.getString("field1")), 40);
  }
}

void draw() {
}
