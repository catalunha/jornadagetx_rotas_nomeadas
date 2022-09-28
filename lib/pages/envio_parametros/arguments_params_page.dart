import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArgumentsParamsPage extends StatelessWidget {
  const ArgumentsParamsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arguments Params'),
      ),
      body: Center(child: Text(Get.arguments)),
    );
  }
}
