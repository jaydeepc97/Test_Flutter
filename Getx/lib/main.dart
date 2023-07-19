import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter/counter_screen.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      enableLog: true,
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => const CounterScreen(),
        ),
      ],
      builder: (context, child) {
        return child!;
      },
    );
  }
}
