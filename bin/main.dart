import 'package:data_structures/recursion/call_stack_example.dart';
import 'package:data_structures/recursion/recursion_examples.dart';
import 'package:data_structures/recursion/recursive_binary_search.dart';
import 'package:data_structures/recursion/sum_example.dart';
import 'package:data_structures/sorting_algorthims/merge_sort.dart';
import 'package:data_structures/sorting_algorthims/quick_sort.dart';
import 'package:data_structures/sorting_algorthims/radix_sort.dart';

void main() {
  // List<int> sortedList = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  List<int> unsortedList = [5, 3, 2, 8, 15, 4, 8, 6, 10, 12, 2, 9, 100];

  // print(QuickSort.quickSort(unsortedList));

  // print(MergeSort.mergeSort(unsortedList));

  print(RadixSort.radixSort(unsortedList));
}
