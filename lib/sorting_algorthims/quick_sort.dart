class QuickSort {
  // static List<int> quickSort(List<int> list) {}

  static int pivot(List arr, [int start = 0, int end = -1]) {
    if (end == -1) {
      end = arr.length - 1;
    }
    var pivot = arr[start];
    int swapIndex = start;

    for (int i = start + 1; i < arr.length; i++) {
      if (pivot > arr[i]) {
        swapIndex++;
        swap(arr, swapIndex, i);
      }
    }
    print(arr);
    swap(arr, start, swapIndex);
    print(arr);

    return swapIndex;
  }

  static void swap(List arr, i, j) {
    var temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
  }
}
