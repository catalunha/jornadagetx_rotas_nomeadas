import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornadagetx_rotas_nomeadas/pages/envio_parametros/arguments_params_page.dart';
import 'package:jornadagetx_rotas_nomeadas/pages/envio_parametros/envio_parametros_home_page.dart';
import 'package:jornadagetx_rotas_nomeadas/pages/envio_parametros/path_params_page.dart';
import 'package:jornadagetx_rotas_nomeadas/pages/envio_parametros/query_params_page.dart';
import 'package:jornadagetx_rotas_nomeadas/pages/home_page.dart';
import 'package:jornadagetx_rotas_nomeadas/pages/inicial/inicial_page1.dart';
import 'package:jornadagetx_rotas_nomeadas/pages/middleware/acesso_negado_page.dart';
import 'package:jornadagetx_rotas_nomeadas/pages/middleware/middleware_home_page.dart';
import 'package:jornadagetx_rotas_nomeadas/pages/middleware/route_middleware.dart';
import 'package:jornadagetx_rotas_nomeadas/pages/nested_navigation/home_nested_navigation.dart';
import 'package:jornadagetx_rotas_nomeadas/pages/rota_nao_encontrada/rota_nao_encontrada_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      unknownRoute: GetPage(
        name: '/404',
        page: () => const RotaNaoEncontradaPage(),
      ),
      initialRoute: '/home',
      routingCallback: (Routing? routing) {
        debugPrint(routing?.previous);
        debugPrint(routing?.current);
      },
      getPages: [
        GetPage(
          name: '/home',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/inicial/page1',
          page: () => const InicialPage1(),
        ),
        GetPage(
          name: '/params',
          page: () => const EnvioParametrosHomePage(),
          children: [
            GetPage(
              name: '/arguments',
              page: () => const ArgumentsParamsPage(),
            ),
            GetPage(
              name: '/path/:nome/jornadaGetX',
              page: () => const PathParamsPage(),
            ),
            GetPage(
              name: '/query',
              page: () => const QueryParamsPage(),
            ),
          ],
        ),
        GetPage(
          name: '/middleware',
          page: () => MiddlewareHomePage(),
          middlewares: [
            RouteMiddleware(),
          ],
        ),
        GetPage(
          name: '/acessoNegado',
          page: () => const AcessoNegadoPage(),
        ),
        GetPage(
          name: '/nestedNavigation',
          page: () => HomeNestedNavigation(),
        ),
      ],
    );
  }
}
