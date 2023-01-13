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
}
