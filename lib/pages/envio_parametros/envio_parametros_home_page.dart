import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnvioParametrosHomePage extends StatelessWidget {
  const EnvioParametrosHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Envio Parametros'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed(
                  '/params/arguments',
                  arguments: 'Parametros via arguments',
                );
              },
              child: const Text('Arguments Params'),
            ),
            ElevatedButton(
              onPressed: () {
                final param = Uri.encodeFull('Marcio Catalunha');
                Get.toNamed('/params/path/$param/jornadaGetX');
                // Get.toNamed('/params/path/catalunha/jornadaGetX');
              },
              child: const Text('Path Params'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/params/query', parameters: {
                  'nome': 'Marcio Catalunha',
                  'id': '007',
                });
                // Get.toNamed('/params/query/?nome=Marcio Catalunha&id=007');
              },
              child: const Text('Query Params'),
            ),
          ],
        ),
      ),
    );
  }
}
