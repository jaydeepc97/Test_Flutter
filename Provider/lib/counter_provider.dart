import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  List<int> countArr = List.generate(100, (index) => 0);

  void increment({required int index}) {
    countArr[index]++;
    notifyListeners();
  }
}
