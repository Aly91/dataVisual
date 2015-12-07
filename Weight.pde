class Weight
{
  String month;
  int weeks;
  float weight;
  float totalLost;
  
  
   Weight(String month, int weeks, float weight, float totalLost)
   {
     this.month = month;
     this.weeks = weeks;
     this.weight = weight;
     this.totalLost = totalLost;
   }
   
   Weight() 
   {
     month = "";
     weeks = 0;
     weight = 0.0f;
     totalLost = 0.0f;
   }
}