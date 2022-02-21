import 'package:closet_fabi/app/pages/widget/default_conteainer.dart';
import 'package:closet_fabi/app/shared/theme/app_colors.dart';
import 'package:flutter/material.dart';

class DefaultBottomNavigationBar extends StatefulWidget {
  final ValueChanged<int> onPageChanged;
  final int currentPage;
  static const double height = 90;

  const DefaultBottomNavigationBar({
    Key? key,
    required this.onPageChanged,
    required this.currentPage,
  }) : super(key: key);

  @override
  _DefaultBottomNavigationBarState createState() =>
      _DefaultBottomNavigationBarState();
}

class _DefaultBottomNavigationBarState
    extends State<DefaultBottomNavigationBar> {
  final _icons = const {
    "components.defaultBottomNavigationBar.home": Icon(Icons.home),
    "components.defaultBottomNavigationBar.search": Icon(Icons.search),
    "components.defaultBottomNavigationBar.favorite_border":
        Icon(Icons.favorite),
    "components.defaultBottomNavigationBar.menu": Icon(Icons.people),
  };

  @override
  void didUpdateWidget(covariant DefaultBottomNavigationBar oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.currentPage != widget.currentPage) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = DefaultBottomNavigationBar.height +
        MediaQuery.of(context).padding.bottom;

    return Theme(
      key: const Key("DefaultBottomNavigationBar"),
      data: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: SizedBox(
        height: height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            DefaultBlurredContainer(height: height),
            BottomNavigationBar(
              backgroundColor: Colors.transparent,
              currentIndex: widget.currentPage,
              elevation: 0,
              selectedLabelStyle: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w700,
              ),
              selectedItemColor: AppColors.primary,
              unselectedLabelStyle: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.normal,
              ),
              unselectedItemColor: Colors.black,
              type: BottomNavigationBarType.fixed,
              onTap: widget.onPageChanged,
              items: _icons.keys.map((key) {
                final icon = _icons[key];

                return BottomNavigationBarItem(
                  label: '',
                  icon: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: icon,
                    ),
                  ),
                  activeIcon: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: icon,
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
