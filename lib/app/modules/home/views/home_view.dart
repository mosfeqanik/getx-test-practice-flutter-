import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Text(
                "${controller.count.value}",
                style: TextStyle(fontSize: 20),
              );
            }),
            ElevatedButton(
                onPressed: () {
                  controller.increment();
                },
                child: const Text("Increment")),
            ElevatedButton(
                onPressed: () {
                  controller.Decrement();
                },
                child: const Text("Decrement"))
          ],
        ),
      ),
    );
  }
}
