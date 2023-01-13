import 'dart:math';

class RecursiveBinarySearch {
  static binarySearch(List<int> arr, int target, int start, int end) {
    int mid = (start + end) ~/ 2;

    if (arr[mid] == target) {
      return " Founded key at  Index $mid";
    }
    if (target > arr[mid]) {
      return binarySearch(arr, target, mid + 1, end);
    }
    if (target < arr[mid]) {
      return binarySearch(arr, target, start, mid - 1);
    }
  }
}
