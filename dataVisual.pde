ArrayList<Weight> wData = new ArrayList<Weight>();
void setup()
{
  size (500, 500); 
  background(0);
  loadData();
}

float x1,x2,y1,y2;



void loadData()
{
  String[] lines = loadStrings("weight.csv");
  for(int i = 0; i < lines.length; i++)
  {
    Weight weight = new Weight(lines[i]);
    wData.add(weight);
  }
}
void drawGraph (ArrayList<Weight> wData, float x1, float x2, float y1, float y2)
{
  float xInc = width/wData.size();
  
}
  



  
void draw()
{
  

  
}
  
  