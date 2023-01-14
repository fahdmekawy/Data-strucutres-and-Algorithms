class Sum {
  static getSum(List<int> arr) {
    int total = 0;
    for (int i = 0; i < arr.length; i++) {
      total += arr[i];
    }
    return total;
  }

  static recursiveSum(List<int> arr) {
    // ignore: unnecessary_null_comparison
    if (arr.isEmpty) {
      return 0;
    } else {
      return arr[0] + recursiveSum(arr.sublist(1));
    }
  }
}
