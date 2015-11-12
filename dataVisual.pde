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
    weight.week1 = Float.parseFloat(parts[1]);
    weight.week2 = Float.parseFloat(parts[2]);
    weight.week3 = Float.parseFloat(parts[3]);
    weight.week4 = Float.parseFloat(parts[4]);
    float sum = week1 + week2 + week3+ week4;
    weight.totalLost = sum;
  }
  

}
  
  
void draw()
{
  

  
}
  
  