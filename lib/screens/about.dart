import 'package:flutter/material.dart';
import 'package:portfolio/utils/backgroundPainter.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    bool isTablet = size.width > 1000;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          CustomPaint(
            painter: BackgroundPainter(),
          ),
        ],
      ),
    );
  }
}
