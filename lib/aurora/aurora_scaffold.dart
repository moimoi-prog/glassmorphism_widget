import 'package:flutter/material.dart';
import 'package:glassmorphism_widget/glass/container/gradient_glass_container.dart';

class AuroraScaffold extends StatelessWidget {
  const AuroraScaffold({
    Key? key,
    this.appBar,
    this.body,
    this.bottomSheet,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.align = Alignment.center,
    this.extendBodyBehindAppBar = false,
    this.extendBody = false,
    this.floatingActionButtonLocation,
  }) : super(key: key);

  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? bottomSheet;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final Alignment align;
  final bool extendBodyBehindAppBar;
  final bool extendBody;
  final FloatingActionButtonLocation? floatingActionButtonLocation;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0,
      child: Stack(
        children: [
          // AuroraContainer(
          //   baseColor: green.withOpacity(0.3),
          //   shapeParameters: const [
          //     // ShapeParameter(
          //     //   color: Colors.yellow,
          //     //   top: displayHeight / 2,
          //     //   left: displayWidth / 2,
          //     //   width: displayWidth,
          //     //   height: displayHeight,
          //     //   angle: displayHeight / displayWidth,
          //     // ),
          //   ],
          // ),
          const GradientGlassContainer(
            shadow: false,
            beginColor: Colors.white,
            endColor: Colors.green,
            beginAlignment: Alignment.topLeft,
            endAlignment: Alignment.bottomRight,
          ),
          // ColoredGlassContainer(
          //   shadow: false,
          //   color: white,
          //   border: Border.all(
          //     color: transparent,
          //     width: 0,
          //   ),
          // ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: appBar,
            body: body,
            bottomSheet: bottomSheet,
            bottomNavigationBar: bottomNavigationBar,
            floatingActionButton: floatingActionButton,
            floatingActionButtonLocation: floatingActionButtonLocation,
            extendBodyBehindAppBar: extendBodyBehindAppBar,
            extendBody: extendBody,
          ),
        ],
      ),
    );
  }
}
