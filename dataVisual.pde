void setup()
{
  size (500, 500); 
  background(0);
}

void loadData()
{
  
  String[] lines = loadStrings("weight.csv");
  ArrayList<Float> wData = new ArrayList<Float>();
  
  for(String s: lines)
  {
    float f = Float.parseFloat(s);
    wData.add(f);
  }
  
  
void draw()
{
  
 drawGraph.update();
 drawGraph.render(); 
  
}
  
  
}



