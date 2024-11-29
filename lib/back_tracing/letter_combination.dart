// Given a string containing digits from 2-9 inclusive, return all possible letter combinations that the number could represent. Return the answer in any order.

// A mapping of digits to letters (just like on the telephone buttons) is given below. Note that 1 does not map to any letters.
 
//1 abc,2,def,3ghi

 

// Example 1:

// Input: digits = "23"
// Output: ["ad","ae","af","bd","be","bf","cd","ce","cf"]
// Example 2:

// Input: digits = ""
// Output: []
// Example 3:

// Input: digits = "2"
// Output: ["a","b","c"]
void main() {
  final Solution solution = Solution();
  print(solution.letterCombinations('36626835'));

}
class Solution {
  List<String> letterCombinations(String digits) {
    const Map<String, String> keyPad = {
      '2': 'abc',
      '3': 'def',
      '4': 'ghi',
      '5': 'jkl',
      '6': 'mno',
      '7': 'pqrs',
      '8': 'tuv',
      '9': 'wxyz'
    };

    List<String> possibleWordList = [];

    void possibleWord(String currentString, String answerString) {
      if (currentString.isEmpty) {
        possibleWordList.add(answerString);
        return;
      }

      String key = keyPad[currentString[0]]!;
      for (int i = 0; i < key.length; i++) {
        possibleWord(currentString.substring(1), answerString + key[i]);
      }
    }

    if (digits.isNotEmpty) {
      possibleWord(digits, '');
    }

  
     return possibleWordList;
  }
}
