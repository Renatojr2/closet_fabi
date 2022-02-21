import 'package:flutter/material.dart';

import '../../shared/theme/app_colors.dart';

class DetalheProdutoArg {
  final int index;

  DetalheProdutoArg(this.index);
}

class DetalhesProduto extends StatelessWidget {
  const DetalhesProduto({Key? key, this.args}) : super(key: key);
  final DetalheProdutoArg? args;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            height: 350,
            width: double.infinity,
            child: Card(
              elevation: 3,
              color: AppColors.primary,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: 't-shirt ${args?.index}',
                    child: Image.asset(
                      'assets/image/blusa.png',
                      height: 200,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Text(
            'Ola teste',
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
