import 'dart:math' as math;

class RadixSort {
// work for intger numbers only
// Time complixty for all cases is O(nk)
// Space Complixty is O(n+k)
  static List<int> radixSort(List<int> arr) {
    int maxDigitCount = mostDigits(arr);
    for (int k = 0; k < maxDigitCount; k++) {
      final digitsBuckets = List.generate(10, (_) => <int>[]);
      for (int i = 0; i < arr.length; i++) {
        int numAtDigit = getNumberAtDigit(arr[i], k);
        digitsBuckets[numAtDigit].add(arr[i]);
      }

      arr = [...digitsBuckets].expand((element) => element).toList();
    }
    return arr;
  }

  static int digitCount(int num) {
    if (num == 0) return 1;
    int log10(x) => math.log(x) ~/ math.ln10;
    int count = log10(num.abs()) + 1;
    return count;
  }

  static int mostDigits(List numbers) {
    int maxDigits = 0;

    for (int i = 0; i < numbers.length; i++) {
      maxDigits = math.max(maxDigits, digitCount(numbers[i]));
    }

    return maxDigits;
  }

  static getNumberAtDigit(int num, int indexFromRight) {
    int number = (num.abs() / math.pow(10, indexFromRight)).floor() % 10;
    return number;
  }
}
