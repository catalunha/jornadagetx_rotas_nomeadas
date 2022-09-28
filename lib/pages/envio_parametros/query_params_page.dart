import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QueryParamsPage extends StatelessWidget {
  const QueryParamsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Query Params'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Get.parameters['nome'] ?? 'Falta nome'),
            Text(Get.parameters['id'] ?? 'Falta nome'),
          ],
        ),
      ),
    );
  }
}
