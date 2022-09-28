import 'package:flutter/material.dart';

class MiddlewareHomePage extends StatelessWidget {
  MiddlewareHomePage({Key? key}) : super(key: key) {
    debugPrint('Criando pagina: MiddlewareHomePage');
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('build pagina: MiddlewareHomePage');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Middlewares Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Botao'),
        ),
      ),
    );
  }
}
