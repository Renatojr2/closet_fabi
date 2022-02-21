import 'package:closet_fabi/app/pages/home/Home_page.dart';
import 'package:closet_fabi/app/pages/navigation_page.dart';
import 'package:closet_fabi/app/pages/produto/detalhes_produto.dart';
import 'package:flutter/material.dart';

class AppRouters {
  static const String initial = '/initial';
  static const String home = '/home';

  static const String detalhesProduto = '/detalhes_produto';

  static const String finclassesDetail = '/finclassesDetail';
  static const String findocs = '/findocs';

  static Map<String, Widget Function(BuildContext)> routers = {
    initial: (context) => const NavigationPage(),
    home: (context) => const HomePage(),
    detalhesProduto: (constext) => const DetalhesProduto(),
  };
}
