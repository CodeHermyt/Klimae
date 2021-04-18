import 'dart:ui';

import 'package:flutter/material.dart';

class GlassImage extends StatelessWidget {
  final String cityImage;
  final String cityText;
  final bool inp;

  const GlassImage({Key key, this.cityImage, this.cityText, this.inp})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      child: Container(
        height: 300,
        width: 150,
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
              child: Container(height: 300, width: 150, child: Text(" ")),
            ),
            Opacity(
              opacity: 0.1,
              child: Image.asset(
                "assets/images/noise.jpg",
                width: 150,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2), blurRadius: 30)
                ],
                border: Border.all(color: Colors.white.withOpacity(0.15)),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white.withOpacity(0.6),
                      Colors.white.withOpacity(0.15)
                    ],
                    stops: [
                      0.0,
                      1.0
                    ]),
              ),
            ),
            Center(
              child: inp
                  ? Stack(
                      children: [
                        Container(
                          width: 130,
                          height: 280,
                          child: Image.asset(
                            cityImage,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 50,
                          child: Container(
                            width: 130,
                            height: 30,
                            color: Colors.black.withOpacity(0.45),
                            child: FittedBox(
                              child: Text(cityText),
                            ),
                          ),
                        )
                      ],
                    )
                  : Icon(
                      Icons.add,
                      size: 40,
                    ),
            )
          ],
        ),
      ),
    );
  }
}
