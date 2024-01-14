import 'package:aurora/aurora.dart';
import 'package:flutter/material.dart';

class AuroraBackground extends StatelessWidget {
  const AuroraBackground({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 100,
          right: -100,
          child: Aurora(
            size: 300,
            colors: [
              Colors.green,
              Colors.green.withOpacity(0.7),
              // Color(0xffc2e59c).withOpacity(1),
              // Color(0xff64b3f4).withOpacity(1)
            ],
          ),
          // child: ColoredCircle(
          //   size: 300,
          //   color: themeSubColor,
          // ),
        ),
        Positioned(
          top: 220,
          left: -50,
          child: Aurora(
            size: 200,
            colors: [
              color,
              color.withOpacity(0.7),
              // Color(0xFFfbd07c),
              // Color(0xFFf7f779),
            ],
          ),
          // child: ColoredCircle(
          //   size: 200,
          //   color: themeAccentColor,
          // ),
        ),
        Positioned(
          bottom: -300,
          left: -300,
          child: Aurora(
            size: 600,
            colors: [
              Colors.green,
              Colors.green.withOpacity(0.7),
              // Color(0xFFff0f7b),
              // Color(0xFFf89b29),
            ],
          ),
          // child: ColoredCircle(
          //   size: 600,
          //   color: themeSubColor,
          // ),
        ),
        Positioned(
          bottom: 200,
          right: -100,
          child: Aurora(
            size: 200,
            colors: [
              color,
              color.withOpacity(0.7),
              // Color(0xFF595cff),
              // Color(0xFFc6f8ff),
            ],
          ),
          // child: ColoredCircle(
          //   size: 200,
          //   color: themeAccentColor,
          // ),
        ),
      ],
    );
  }
}
