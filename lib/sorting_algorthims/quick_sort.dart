class QuickSort {
  // Time Complexity at  average - best) cases is O(nLogn) and worst case is O(n^2)
  // Space Complexity is O(logn)

  static List quickSort(List arr, [left = 0, right = -5]) {
    if (right == -5) {
      right = arr.length - 1;
    }

    if (left < right) {
      int pivotIndex = pivot(arr, left, right);
      //left
      quickSort(arr, left, pivotIndex - 1);
      // right
      quickSort(arr, pivotIndex + 1, right);
    }

    return arr;
  }

  // -1 is to be not nullable only
  static int pivot(List arr, [int start = 0, int end = -1]) {
    if (end == -1) end = arr.length - 1;

    var pivot = arr[start];

    int swapIndex = start;

    for (int i = start + 1; i < arr.length; i++) {
      if (pivot > arr[i]) {
        swapIndex++;
        swap(arr, swapIndex, i);
      }
    }
    swap(arr, start, swapIndex);

    return swapIndex;
  }

  static void swap(List arr, i, j) {
    var temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
  }
}
