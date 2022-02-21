import 'dart:ui';

import 'package:flutter/material.dart';

class DefaultBlurredContainer extends StatelessWidget {
  final double? height;
  final BorderRadius? borderRadius;
  final double backgroundOpacity;

  const DefaultBlurredContainer({
    Key? key,
    @required this.height,
    this.borderRadius,
    this.backgroundOpacity = 0.8,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.zero,
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 50,
          sigmaY: 50,
        ),
        child: Container(
          height: height,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: borderRadius,
          ),
        ),
      ),
    );
  }
}
