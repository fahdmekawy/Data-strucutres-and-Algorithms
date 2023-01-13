class Recursion {
  static countDown(int number) {
    print(number);
    // base case
    if (number <= 0) {
      return 0;
    } else {
      // recursive case
      countDown(number - 1);
    }
  }

  static factorial(int number) {
    if (number == 1) {
      return 1;
    } else {
      return number * factorial(number - 1);
    }
  }

  static count(List<int> arr) {
    if (arr.isEmpty) {
      return 0;
    } else {
      print(arr);
      arr.removeAt(0);
      return 1 + count(arr);
    }
  }
}
