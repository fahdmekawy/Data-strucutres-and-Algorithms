import 'package:data_structures/searching_algothims/binary_search.dart';
import 'package:data_structures/sorting_algorthims/selection_sort.dart';

void main() {
  List<int> sortedList = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  List<int> unsortedList = [9, 8, 7, 6, 5, 4, 3, 2, 1];

  print(BinarySearch.binarySearch(sortedList, 9));
  print(SelectionSort.selectionSort(unsortedList));
}
