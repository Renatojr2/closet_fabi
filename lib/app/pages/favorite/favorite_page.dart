import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text(
          'Pagina de favoritos',
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
      ),
    );
  }
}
