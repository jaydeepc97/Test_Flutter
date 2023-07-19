import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          color: Colors.white,
          padding: const EdgeInsets.only(left: 12, top: 8),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: context.watch<Counter>().countArr.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  SizedBox(
                    width: 50,
                    child: Text(
                        context.watch<Counter>().countArr[index].toString(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 28)),
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: const Icon(
                      Icons.add,
                      size: 25,
                    ),
                    onPressed: () {
                      context.read<Counter>().increment(index: index);
                    },
                  )
                ],
              );
            },
          )),
    ));
  }
}
