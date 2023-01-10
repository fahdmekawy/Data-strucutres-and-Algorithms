class BinarySearch {
  static binarySearch(List<int> arr, int target) {
    int min = 0;
    int max = arr.length - 1;

    while (min <= max) {
      int mid = ((min + max) / 2).floor();

      if (target == arr[mid]) {
        return " Founded key at  Index $mid";
      } else if (target < arr[mid]) {
        max = mid - 1;
      } else {
        min = mid + 1;
      }
    }
    return "Not Found";
  }
}
