import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'counter_controller.dart';

class CounterScreen extends GetView<CounterController> {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CounterController());
    return Scaffold(
        body: SafeArea(
      child: Container(
          color: Colors.white,
          padding: const EdgeInsets.only(left: 12, top: 8),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: controller.countArr.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Obx(() => SizedBox(
                        width: 50,
                        child: Text(controller.countArr[index].toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 28)),
                      )),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: const Icon(
                      Icons.add,
                      size: 25,
                    ),
                    onPressed: () {
                      controller.incrementCounter(index: index);
                    },
                  )
                ],
              );
            },
          )),
    ));
  }
}
