import 'dart:ui';

import 'package:flutter/material.dart';

class ColoredGlassContainer extends StatelessWidget {
  const ColoredGlassContainer({
    Key? key,
    this.width,
    this.height,
    this.child,
    this.shadow = true,
    this.boxShadow,
    this.borderRadius,
    this.radius = 16,
    this.sigmaX = 16,
    this.sigmaY = 16,
    this.border,
    this.color,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Widget? child;
  final bool shadow;
  final List<BoxShadow>? boxShadow;
  final BorderRadius? borderRadius;
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
                    spreadRadius: 4,
                    color: Colors.black.withOpacity(0.15),
                  ),
                ]
            : null,
      ),
      child: ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.circular(radius),
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
              borderRadius: borderRadius ?? BorderRadius.circular(radius),
              border: border ??
                  Border.all(
                    width: 1,
                    color: Colors.white.withOpacity(0.3),
                  ),
            ),
            child: ClipRRect(
              borderRadius: borderRadius ?? BorderRadius.circular(radius),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
