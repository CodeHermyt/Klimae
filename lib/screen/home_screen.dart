import 'package:flutter/material.dart';
import 'package:klimae/widgets/foreground.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned(
          // bottom: 0.20 * height,
          child: Container(
            width: width,
            child: Image.asset(
              "assets/images/city1.jpg",
              fit: BoxFit.fitWidth,
            ),
            height: height,
          ),
        ),
        ForeGround(),
      ],
    );
  }
}
