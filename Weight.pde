 class Weight
{
  String month;
  String weeks;
  float weight;
  float totalLost;
  
public Weight(String line) 
 {
   String[] elements = line.split(",");
   month = elements[0];
   weeks = elements[1];
   weight = Float.parseFloat(elements[2]);
   totalLost = Float.parseFloat(elements[3]);

 }
}