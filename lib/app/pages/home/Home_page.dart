import 'package:closet_fabi/app/pages/produto/detalhes_produto.dart';
import 'package:closet_fabi/app/shared/routes/app_routes.dart';
import 'package:flutter/material.dart';

import '../../shared/theme/app_colors.dart';
import 'widget/Sliver_custom_appBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverPersistentHeader(
            delegate: SliverCustomAppBar(),
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return _buildcard(context, index);
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildcard(BuildContext context, int i) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          AppRouters.detalhesProduto,
          arguments: DetalheProdutoArg(i),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 350,
        width: double.infinity,
        child: Card(
          elevation: 3,
          color: AppColors.primary,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                transitionOnUserGestures: true,
                tag: 't-shirt $i',
                child: Image.asset(
                  'assets/image/blusa.png',
                  height: 200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
