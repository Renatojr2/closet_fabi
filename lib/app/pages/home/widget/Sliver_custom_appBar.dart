import 'package:closet_fabi/app/pages/home/widget/background_wave.dart';
import 'package:closet_fabi/app/pages/home/widget/custom_logo_app.dart';
import 'package:flutter/material.dart';

class SliverCustomAppBar extends SliverPersistentHeaderDelegate {
  const SliverCustomAppBar();

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    var adjustedShrinkOffset =
        shrinkOffset > minExtent ? minExtent : shrinkOffset;
    double offset = (minExtent - adjustedShrinkOffset) * 0.5;

    return Stack(
      children: [
        const BackgroundWave(
          height: 280,
        ),
        Positioned(
          top: adjustedShrinkOffset >= 100 ? 50 : offset,
          child: CustomLogoApp(
            minEvent: adjustedShrinkOffset,
          ),
          right: 25,
          left: adjustedShrinkOffset >= 100 ? 70 : 20,
        ),
      ],
    );
  }

  @override
  double get maxExtent => 280;

  @override
  double get minExtent => 140;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      oldDelegate.maxExtent != maxExtent || oldDelegate.minExtent != minExtent;
}
