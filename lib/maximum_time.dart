///You are given a string that represents time in the format hh:mm.
///Some of the digits are blank (represented by ?). 
///Fill in ? such that the time represented by this string is the maximum possible.
/// Maximum time: 23:59, minimum time: 00:00.
///  You can assume that input string is always valid.
/// 
/// Example 1:

///Input: "?4:5?"
///Output: "14:59"


void main(){
print(Solution(). constructTime('23:59'));
}
class Solution{
  //let use lists to store strings

 
   constructTime (String givenString){
    final List<String> part = givenString.split(':');
final String hhPart =part.first;
//final String mmPart =part.last;
// final String hFirst = hhPart[0];
// final String hLast = hhPart[1];
// final String mFirst = mmPart[0];
// final String mLast = mmPart[1];

    return hhPart;
  }


}