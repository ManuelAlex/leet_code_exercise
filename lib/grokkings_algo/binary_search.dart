void main(){ 
  triangle(8);
//   print(recursiveBinarySearch([1, 3, 5, 7, 9,11,13,15,17,19,21,23,25,27,29,31],11));
// BinarySearch().selectionSort([5,3,4,6,7,1,9,2,8]);
  
//   BinarySearch(). searchNumber([1, 3, 5, 7, 9,11,13,15,17,19,21,23,25,27,29,31],31);
}

class BinarySearch{
  // int? searchNumber(List<int> numbers,int target){
  //    int low= 0;
  //    int high = numbers.length-1;
  // int count= 0;
  //   while(low<high){
  //     count=count+1;
  //     print('$count inteneration ');
  //        int mid = ((low+high)~/2);
      
  //   final int guess = numbers[mid];
  //       print('array length:${numbers.length} low: $low, high: $high, mid: $mid, guess: $guess at count $count');

  //     if (guess == target) {
  //       print('Target found at index $mid');
  //       return mid;  // Return the index of the found target
  //     } else if (guess < target) {
  //       print('Guess is less than target');
  //       low = mid + 1;
  //       print('new low is $low');
  //     } else if(guess > target) {
  //       print('Guess is greater than target');
  //       high = mid - 1;
  //       print('new high is $high');
  //     }
  //   }
    
  //   return numbers.contains(target)?numbers.length-1: null;
  // }

  int? searchNumber(List<int> numbers,int target){
  int lowNumPos = 0;
  int highNumPos = numbers.length-1;
  while(lowNumPos<=highNumPos){
    int midNumPos = (lowNumPos+highNumPos)~/2;
    int guess = numbers[midNumPos];

    if(guess==target){
      return midNumPos;
    }
    else if(guess<target)
    {
   lowNumPos=   midNumPos+1;
    }
    else if(guess>target){
   highNumPos=   midNumPos-1;
    }

  }
  return null;
}


int findTheSmallest(List<int>numbers ){
  int smallest = numbers[0];
  int smallestIndex = 0;
  for(int i =0; i<numbers.length; i++){
    if( numbers[i]<smallest){
      smallest= numbers[i];
      smallestIndex =i;
      
    }
  }
  return smallestIndex;
}

 List<int> selectionSort(List<int> numbers) {
    List<int> newList = <int>[];
    List<int> copyList = List<int>.from(numbers);
    for (int i = 0; i < numbers.length; i++) {
      final smallestNumber = findTheSmallest(copyList);
      newList.add(copyList[smallestNumber]);
      copyList.removeAt(smallestNumber);
      
    }
    return newList;
  }
}


void countDown(int i) {
  if (i <= 0) {
    print(i);
  } else {
    print(i);
    countDown(i - 1);
  }
}
void triangle(int baseLength){
  if(baseLength<=0){
    return;
  }
  else{
    int count =1;
    if(count>=0&&count<=baseLength){
    print("x"*(count));
    triangle(count + 1);
    count++;
    }
  }
}

// recursion
// 4.1 Write out the code for the earlier sum function.
// 4.2 Write a recursive function to count the number of items in a list.
// 4.3 Write a recursive function to find the maximum number in a list.
// 4.4 Remember binary search from chapter 1? It’s a D&C algorithm, too. Can you come up with the base case and recursive case for binary search?

// 4.1 You’re given an array of numbers.
// You have to add up all the numbers and return the total
int arrayTotalWithRecursive(List<int> numbers){
  List<int>copyList= List<int>.from(numbers);
  if(numbers.isEmpty){
    return 0;
  }else if(numbers.length==1){
    return numbers.first;
  }else{
    copyList.removeAt(copyList.length-1);
   return numbers.last+ arrayTotalWithRecursive(copyList);
  }
}

int sumArray(List<int> arr) {
  if (arr.isEmpty) {
    return 0;
  }
   else {
    return arr.first + sumArray(arr.sublist(1));
  }
}
// 4.3 Write a recursive function to find the maximum number in a list.
int findMaxNum(List<int> arr){
    if (arr.isEmpty) {
    return 0;
  }else if(arr.length==1){
    return arr.first;
  }
   else {
    int firstNum  = arr.first;
    int maxNum  =findMaxNum(arr.sublist(1));
    return firstNum>maxNum?firstNum:maxNum ;
  }
}

int recursiveBinarySearch(List<int> numbers, int target, [int low = 0, int? high]) {
  high ??= numbers.length - 1;

  if (low > high) {
    return -1; // base case: target not found
  }

  int mid = (low + high) ~/ 2;
  int guess = numbers[mid];

  if (target == guess) {
    return mid; // base case: target found
  } else if (target < guess) {
    return recursiveBinarySearch(numbers, target, low, mid - 1); // search in the left half
  } else {
    return recursiveBinarySearch(numbers, target, mid + 1, high); // search in the right half
  }
}