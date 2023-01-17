class SelectionSort {
  // Time Complexity at (worest - average - best) cases is O(n^2)
  // Space Complexity is O(1)

// or we can needed to find biggest element
  static int findSmallest(List<int> arr) {
    int smallest = arr[0];
    int smallestIndex = 0;

    for (int i = 0; i < arr.length; i++) {
      if (arr[i] < smallest) {
        smallest = arr[i];
        smallestIndex = i;
      }
    }
    return smallestIndex;
  }

  static List<int> selectionSort(List<int> arr) {
    final List<int> arr2 = List.empty(growable: true);

    for (int i = 0; i < arr.length; i++) {
      final smallest = findSmallest(arr);
      arr2.add(arr.removeAt(smallest));
    }

    return arr2;
  }
}
