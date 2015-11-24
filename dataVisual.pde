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
  for(String line:lines)
  { 
   String[] elements = line.split(",");
   Weight weight = new Weight();
   weight.month = elements[0];
   weight.weeks = elements[1];
   weight.weight = Float.parseFloat(elements[2]);
   weight.totalLost = Float.parseFloat(elements[3]);
   wData.add(weight);;

  }
}
void drawGraph (ArrayList<Weight> wData, float x1, float x2, float y1, float y2)
{
  float xInc = width/wData.size();
  float lineWidth = 
  scale();
  stroke(319);
  for(int i = 0; i<wData.size(); i++)
  {
    if(i==0)
    {
    x1 = 0;
    x2 = 0;
    y1 = height - wData.get(i);
    y2 = height - wData[i];
    }
 
    else
    {
      x1=x2;
      y1=y2;
      y2 = height - wData[i];
      x2 = x2 +xInc;
    }
    line(x1,y1,x2,y2);
      
    }
  }
    
   

  
void draw()
{
  

  
}
  
  