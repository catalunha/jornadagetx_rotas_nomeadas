import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PathParamsPage extends StatelessWidget {
  const PathParamsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Path Params'),
      ),
      body: Center(
        child: Text(Get.parameters['nome'] ?? "Falta parametro"),
      ),
    );
  }
}
