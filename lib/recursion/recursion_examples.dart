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

  static findMaxNumber(List<int> arr) {
    if (arr.isEmpty) {
      return 'Empty List';
    } else if (arr.length == 1) {
      return arr[0];
    } else if (arr.length == 2) {
      return arr[0] > arr[1] ? arr[0] : arr[1];
    } else {
      int max = findMaxNumber(arr.sublist(1, arr.length));
      return arr[0] > max ? arr[0] : max;
    }
  }
}
