class MergeSort {
  // Time Complexity at (worest - average - best) cases is O(nLogn)
  // Space Complexity is O(n)

  static mergeSort(List arr) {
    print(arr);
    if (arr.length <= 1) return arr;

    int midIndex = (arr.length / 2).floor();
    List leftList = mergeSort(arr.sublist(0, midIndex));
    List rightList = mergeSort(arr.sublist(midIndex));
    return merge(leftList, rightList);
  }

  static List merge(List arr1, List arr2) {
    List mergedList = [];
    int i = 0;
    int j = 0;
    while (i < arr1.length && j < arr2.length) {
      if (arr2[j] > arr1[i]) {
        mergedList.add(arr1[i]);
        i++;
      } else {
        mergedList.add(arr2[j]);
        j++;
      }
    }

    while (i < arr1.length) {
      mergedList.add(arr1[i]);
      i++;
    }
    while (j < arr2.length) {
      mergedList.add(arr2[j]);
      j++;
    }

    return mergedList;
  }
}
