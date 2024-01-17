import 'package:flutter/material.dart';

class GradientGlassContainer extends StatelessWidget {
  const GradientGlassContainer({
    Key? key,
    this.width,
    this.height,
    this.child,
    this.shadow = true,
    this.boxShadow,
    this.radius = 16,
    this.sigmaX = 16,
    this.sigmaY = 16,
    this.border,
    required this.beginColor,
    required this.endColor,
    this.beginAlignment = Alignment.bottomRight,
    this.endAlignment = Alignment.topLeft,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Widget? child;
  final bool shadow;
  final List<BoxShadow>? boxShadow;
  final double radius;
  final double sigmaX;
  final double sigmaY;
  final Border? border;
  final Color beginColor;
  final Color endColor;
  final Alignment beginAlignment;
  final Alignment endAlignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            beginColor,
            endColor,
          ],
          begin: beginAlignment,
          end: endAlignment,
        ),
        borderRadius: BorderRadius.circular(radius),
        border: border ??
            Border.all(
              width: 1,
              color: Colors.white.withOpacity(0.3),
            ),
      ),
      child: child,
    );
  }
}
