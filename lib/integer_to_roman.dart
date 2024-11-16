import 'dart:math';

void main() {
  final Solution solution = Solution();
  print(solution.intToRoman(1995));

}

//"MCMXCIV";
// Symbol	Value
// I	1
// V	5
// X	10
// L	50
// C	100
// D	500
// M	1000





class Solution {
 final Map<int ,String> valueBoot =<int ,String> {  
  1:'I',
  5:'V',
	10:'X',
	50:'L',
	100:'C',
	500:'D',
	1000:'M',
  };
  


  String intToRoman(int num) {
    assert(num>0 && num <= 3999,
    'Out of range num should be between 1 <= num <= 3999');
     int numLength = num.toString().length;
     String resolvedString='';
    

   
    while(num!=0 && numLength!=0){
      int placeValue = pow(10, numLength-1).toInt();
      int quotient = num~/ placeValue;
  
     
      int workingNum = (quotient*placeValue)%(pow(10, numLength).toInt());
         
       int powerCount = workingNum~/ placeValue;
      
         if(powerCount==0){
          resolvedString+='';
         }
         else if(powerCount>0&&powerCount<=3){
           resolvedString += valueBoot[placeValue]!*powerCount;   
      
        }else if(powerCount==4){
          resolvedString+=valueBoot[placeValue]!+valueBoot[placeValue*5]!;
          
          
        }else if(powerCount==5){
          resolvedString += valueBoot[placeValue*5]!;
          
        }
        else if(powerCount>5 &&powerCount<9){
            resolvedString += valueBoot[placeValue*5]!+(valueBoot[placeValue]!)*(powerCount-5);  
      
        }else if(powerCount==9){
          resolvedString+=valueBoot[placeValue]!+valueBoot[placeValue*10]!;
        }
        else {
          resolvedString += valueBoot[placeValue]!;
          
        }
         numLength--;
      }
  
    return resolvedString;
  }
}