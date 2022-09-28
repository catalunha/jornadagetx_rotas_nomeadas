import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornadagetx_rotas_nomeadas/pages/nested_navigation/pages/android_page.dart';
import 'package:jornadagetx_rotas_nomeadas/pages/nested_navigation/pages/apple_page.dart';

class HomeNestedNavigation extends StatelessWidget {
  final currentBottonIndex = 0.obs;
  HomeNestedNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nested Navigation'),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: currentBottonIndex.value,
          onTap: (value) {
            print(value);
            currentBottonIndex(value);
            switch (value) {
              case 0:
                Get.offNamed('/', id: 1);
                break;
              case 1:
                Get.offNamed('/apple', id: 1);
                break;
              default:
            }
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.android), label: 'Android'),
            BottomNavigationBarItem(icon: Icon(Icons.apple), label: 'Apple'),
          ],
        ),
      ),
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: '/',
        onGenerateRoute: (settings) {
          Widget page;
          Transition transition;
          if (settings.name == '/') {
            page = const AndroidPage();
            transition = Transition.leftToRight;
          } else if (settings.name == '/apple') {
            page = const ApplePage();
            transition = Transition.rightToLeft;
          } else {
            page = const Center(child: Text('Pagina não encontrada'));
            transition = Transition.fade;
          }
          return GetPageRoute(
            page: () => page,
            transition: transition,
          );
        },
      ),
    );
  }
}
