import controlP5.*; //<>//

ControlP5 controlP5;
DropdownList select;
ArrayList<Weight> wData = new ArrayList<Weight>();
void setup()
{
  size (500, 500); 
  loadData();
  controlP5 = new ControlP5(this);
  select = controlP5.addDropdownList("Select view",20,10,20,10);

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
   weight.weeks = Integer.parseInt(elements[1]);
   weight.weight = Float.parseFloat(elements[2]);
   weight.totalLost = Float.parseFloat(elements[3]);
   wData.add(weight);;

  }
}
void drawGraph (ArrayList<Weight> wData, float x1, float x2, float y1, float y2)
{
  background(0);
  float border = width *0.1f;
  stroke(319);
  
      float windowRange = (width - (border * 2.0f));
      float dataRange = 150;      
      float lineWidth =  windowRange / (float) (wData.size() - 1) ; 
      float scale = windowRange / dataRange;
      for (int i = 1 ; i < wData.size() ; i ++)
      {
     
        x1 = border + ((i - 1) * lineWidth);
        x2 = border + (i * lineWidth);
        y1 = (height - border) - (wData.get(i-1))* scale;
        y2 = (height - border) - (wData.get(i)) * scale;
        line(x1, y1, x2, y2);
      }
  
}
    
   