import 'dart:math';

import 'package:closet_fabi/app/shared/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:animate_do/animate_do.dart';

class CustomLogoApp extends StatefulWidget {
  const CustomLogoApp({Key? key, this.minEvent}) : super(key: key);
  final double? minEvent;

  @override
  State<CustomLogoApp> createState() => _CustomLogoAppState();
}

class _CustomLogoAppState extends State<CustomLogoApp>
    with TickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? animation;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller!);

    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller!.forward();
    return LayoutBuilder(
      builder: (context, _) {
        if (widget.minEvent! >= 100) {
          return BounceInUp(
            duration: const Duration(milliseconds: 1000),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Closet da Fabi',
                  style: TextStyle(
                    color: AppColors.dark300,
                    fontSize: 28,
                  ),
                ),
                const SizedBox(width: 15),
                SvgPicture.asset(
                  'assets/icon/borboletinha.svg',
                  color: AppColors.primary,
                  height: 90,
                ),
              ],
            ),
          );
        }
        return FlipInX(
          duration: const Duration(milliseconds: 1000),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Closet da Fabi',
                style: TextStyle(
                  color: AppColors.dark300,
                  fontSize: 28,
                ),
              ),
              const SizedBox(width: 15),
              SvgPicture.asset(
                'assets/icon/borboletinha.svg',
                color: AppColors.primary,
                height: 150,
              ),
            ],
          ),
        );
      },
    );
  }
}
