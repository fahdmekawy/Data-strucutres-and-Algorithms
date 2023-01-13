class RecursionCounter {
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
}
