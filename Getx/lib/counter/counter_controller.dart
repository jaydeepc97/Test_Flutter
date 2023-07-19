import 'package:get/get.dart';

class CounterController extends GetxController {
  RxList<int> countArr = List.generate(100, (index) => 0).obs;

  void incrementCounter({required int index}) {
    countArr[index]++;
  }
}
