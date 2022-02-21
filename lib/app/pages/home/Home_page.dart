import 'package:closet_fabi/app/pages/produto/detalhes_produto.dart';
import 'package:closet_fabi/app/shared/routes/app_routes.dart';
import 'package:flutter/animation.dart';
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
                createRectTween: (begin, end) {
                  return CustomRectTween(begin: begin!, end: end!);
                },
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

class CustomRectTween extends RectTween {
  final Rect begin;
  final Rect end;

  CustomRectTween({required this.begin, required this.end})
      : super(begin: begin, end: end);

  @override
  Rect lerp(double t) {
    double x = Curves.easeOutCirc.transform(t);

    return Rect.fromLTRB(
      lerpDouble(begin.left, end.left, t),
      lerpDouble(begin.top, end.top, t),
      lerpDouble(begin.right, end.right, t) * (1 + x),
      lerpDouble(begin.bottom, end.bottom, t) * (1 + x),
    );
  }

  double lerpDouble(num begin, num end, double t) {
    return begin + (end - begin) * t;
  }
}
