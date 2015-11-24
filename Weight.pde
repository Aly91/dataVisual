 class Weight
{
  String month;
  String weeks;
  float weight;
  float totalLost;
  
  
 Weight(String month, String weeks, float weight, float totalLost)
 {
   this.month = month;
   this.weeks = weeks;
   this.weight = weight;
   this.totalLost = totalLost;
   
 }
 public Weight() 
 {
   month = "";
   weeks = "";
   weight = 0.0f;
   totalLost = 0.0f;
 }
}