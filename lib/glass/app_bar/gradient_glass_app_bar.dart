import 'dart:ui';

import 'package:flutter/material.dart';

class GradientGlassAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const GradientGlassAppBar({
    Key? key,
    this.width,
    this.height,
    this.leading,
    this.title,
    this.actions,
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

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  final double? width;
  final double? height;
  final Widget? leading;
  final Widget? title;
  final List<Widget>? actions;
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
            child: AppBar(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              elevation: 0,
              leading: leading,
              title: title,
              actions: actions,
            ),
          ),
        ),
      ),
    );
  }
}
