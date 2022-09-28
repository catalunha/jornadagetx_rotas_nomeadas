import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteMiddleware extends GetMiddleware {
  RouteMiddleware({super.priority});
  @override
  GetPage? onPageCalled(GetPage? page) {
    debugPrint('Executando middleware onPageCalled');
    return super.onPageCalled(page);
    // return GetPage(
    //   name: '/inicial/page1',
    //   page: () => const InicialPage1(),
    // );
  }

  @override
  Widget onPageBuilt(Widget page) {
    debugPrint('Executando middleware onPageBuilt');
    // return super.onPageBuilt(page);
    return Theme(
      data: ThemeData.dark(),
      child: page,
    );
  }

  @override
  RouteSettings? redirect(String? route) {
    debugPrint('Executando middleware redirect');
    return super.redirect(route);
    // if (route == '/middleware') {
    //   return const RouteSettings(name: '/acessoNegado');
    // }
    // return null;
  }

  @override
  void onPageDispose() {
    debugPrint('Executando middleware onPageDispose');
    // super.onPageDispose();
  }

  @override
  List<Bindings>? onBindingsStart(List<Bindings>? bindings) {
    var a = 1;
    return super.onBindingsStart(bindings);
  }

  @override
  GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
    var a = 1;
    return super.onPageBuildStart(page);
  }
}
