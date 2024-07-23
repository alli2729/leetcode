/*
leetcode.com
*412. Fizz Buzz
Given an integer n, return a string array answer (1-indexed) where:
  answer[i] == "FizzBuzz" if i is divisible by 3 and 5.
  answer[i] == "Fizz" if i is divisible by 3.
  answer[i] == "Buzz" if i is divisible by 5.
  answer[i] == i (as a string) if none of the above conditions are true.
*/
List<String> fizzBuzz(int n) {
  List<String> result = [];
  for (var i = 1; i <= n; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      result.add('FizzBuzz');
    } else if (i % 3 == 0) {
      result.add('Fizz');
    } else if (i % 5 == 0) {
      result.add('Buzz');
    } else {
      result.add('$i');
    }
  }
  return result;
}