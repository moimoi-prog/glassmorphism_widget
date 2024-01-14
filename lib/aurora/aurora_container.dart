import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class ShapeParameter {
  ShapeParameter({
    this.left = 0,
    this.top = 0,
    required this.color,
    required this.width,
    required this.height,
    this.angle = 0,
  });

  final double left;
  final double top;
  final Color color;
  final double width;
  final double height;
  final double angle;
}

class AuroraContainer extends StatelessWidget {
  const AuroraContainer({
    Key? key,
    this.width = double.infinity,
    this.height = double.infinity,
    this.baseColor = Colors.white,
    this.filter,
    this.filterColor,
    this.shapeParameters = const [],
  }) : super(key: key);

  final double width;
  final double height;
  final Color baseColor;

  final ImageFilter? filter;
  final Color? filterColor;
  final List<ShapeParameter> shapeParameters;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: baseColor,
      child: Stack(
        children: [
          ...shapeParameters.map(
            (ShapeParameter p) {
              return _shape(
                parameter: p,
              );
            },
          ),
          ClipRRect(
            child: BackdropFilter(
              filter: filter ??
                  ImageFilter.blur(
                    sigmaX: 20,
                    sigmaY: 20,
                  ),
              child: Container(
                color: filterColor ?? Colors.white.withOpacity(0),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _shape({
    required ShapeParameter parameter,
  }) {
    return Positioned(
      left: parameter.left - parameter.width / 2,
      top: parameter.top - parameter.height / 2,
      child: Transform.rotate(
        angle: parameter.angle * pi / 180,
        child: ClipOval(
          child: Container(
            width: parameter.width,
            height: parameter.height,
            color: parameter.color,
          ),
        ),
      ),
    );
  }
}
