import 'package:closet_fabi/app/pages/favorite/favorite_page.dart';
import 'package:closet_fabi/app/pages/home/home_page.dart';
import 'package:closet_fabi/app/pages/perfil/perfiel_page.dart';
import 'package:closet_fabi/app/pages/search/search_page.dart';
import 'package:closet_fabi/app/pages/widget/custom_bottom_navigation.dart';
import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _currentIndex = 0;

  void setCurrentIndex(int i) {
    setState(() {
      _currentIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          HomePage(),
          SearchPage(),
          FavoritePage(),
          PerfilPage(),
        ],
      ),
      bottomNavigationBar: DefaultBottomNavigationBar(
        currentPage: _currentIndex,
        onPageChanged: (index) {
          setCurrentIndex(index);
        },
      ),
    );
  }
}
