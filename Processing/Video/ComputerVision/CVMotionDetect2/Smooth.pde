/*
Class to smooth the values out,
creating an array of the last tracked values and averaging them together.
Larger values result in more smoothing but makes it less responsive to changes
*/

class Smooth {
  float floatTab[];
  
  // constructor
  Smooth(int size) { // number of pixels to smooth out
    floatTab = new float[size];
    for(int i=0; i<size; i++) {
      floatTab[i] = 0; // initialize the items in the arry to 0;
    }
  }
  
  // returns a mean (average) value of set of numbers
  int process(float newVal) {
    // shift the values in the array one to the right
    for(int i=floatTab.length - 1; i>0; i--) {
      floatTab[i] = floatTab[i-1];
    }
    
    // put the new value at the beginning of the array
    floatTab[0] = newVal;
    int sum = 0;
    
    // sum then average the values
    for(int i=0; i<floatTab.length; i++) {
      sum += floatTab[i];
    }
    
    int mean = sum / floatTab.length;
    return mean;
  }
  
  
}
