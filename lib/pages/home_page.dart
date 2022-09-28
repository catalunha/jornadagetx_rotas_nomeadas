import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/inicial/page1');
              },
              child: const Text('/inicial/page1'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/paginanaoexiste');
              },
              child: const Text('/paginanaoexiste'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/params');
              },
              child: const Text('/params'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/middleware');
              },
              child: const Text('/middleware'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/nestedNavigation');
              },
              child: const Text('/nestedNavigation'),
            ),
          ],
        ),
      ),
    );
  }
}
