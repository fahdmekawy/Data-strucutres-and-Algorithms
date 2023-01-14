import 'package:data_structures/recursion/call_stack_example.dart';
import 'package:data_structures/recursion/recursion_examples.dart';
import 'package:data_structures/recursion/recursive_binary_search.dart';
import 'package:data_structures/recursion/sum_example.dart';

void main() {
  List<int> sortedList = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  // List<int> unsortedList = [9, 8, 7, 6, 5, 4, 3, 2, 1];
  // print(Sum.getSum(sortedList));

  print(Sum.recursiveSum(sortedList));
  // print(
  //     RecursiveBinarySearch.binarySearch(sortedList, 8, 0, sortedList.length));
}
