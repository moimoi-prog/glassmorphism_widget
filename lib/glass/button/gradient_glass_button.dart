import 'dart:ui';

import 'package:flutter/material.dart';

class GradientGlassButton extends StatelessWidget {
  const GradientGlassButton({
    Key? key,
    required this.label,
    this.labelPadding,
    this.onPressed,
    this.width,
    this.height,
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

  final Widget label;
  final EdgeInsetsGeometry? labelPadding;
  final VoidCallback? onPressed;

  final double? width;
  final double? height;
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
    return DefaultTextStyle(
      style: TextStyle(
        color: Colors.white.withOpacity(0.3),
      ),
      child: Container(
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
            child: Material(
              type: MaterialType.button,
              color: Colors.transparent,
              child: InkWell(
                // リップルエフェクトがはみ出さないようにする
                borderRadius: BorderRadius.circular(radius),
                onTap: onPressed,
                child: Container(
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
                  child: Padding(
                    padding: labelPadding ??
                        const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 8.0,
                        ),
                    child: label,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
