void setup()
{
  size (500, 500); 
  background(0);
  loadData();
}

ArrayList<Weight> wData = new ArrayList<Weight>();

void loadData()
{
  String[] lines = loadStrings("weight.txt");
  for(String line:lines)
  {
    String[] parts = line.split(" , ");
    Weight weight = new Weight();
    weight.month = parts[0];
    weight.weight = Float.parseFloat(parts[1]);
    weight.totalLost = weight.weight;
  }
  

}
  
  
void draw()
{
  
 //drawGraph.update();
 //drawGraph.render(); 
  
}
  
  