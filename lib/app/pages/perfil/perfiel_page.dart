import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Lottie.asset('assets/lottie/butterfly.json'),
      ),
    );
  }
}
