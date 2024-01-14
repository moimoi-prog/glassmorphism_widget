import 'dart:ui';

import 'package:flutter/material.dart';

class ColoredGlassAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const ColoredGlassAppBar({
    Key? key,
    this.width,
    this.height,
    this.title,
    this.shadow = true,
    this.boxShadow,
    this.radius = 16,
    this.sigmaX = 16,
    this.sigmaY = 16,
    this.border,
    this.color,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  final double? width;
  final double? height;
  final Widget? title;
  final bool shadow;
  final List<BoxShadow>? boxShadow;
  final double radius;
  final double sigmaX;
  final double sigmaY;
  final Border? border;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: shadow
            ? boxShadow ??
                [
                  BoxShadow(
                    blurRadius: 24,
                    spreadRadius: 16,
                    color: Colors.black.withOpacity(0.15),
                  ),
                ]
            : null,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: sigmaX,
            sigmaY: sigmaY,
          ),
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: color ?? Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(radius),
              border: border ??
                  Border.all(
                    width: 1,
                    color: Colors.white.withOpacity(0.3),
                  ),
            ),
            child: AppBar(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              elevation: 0,
              title: title,
            ),
          ),
        ),
      ),
    );
  }
}
