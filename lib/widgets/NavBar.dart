import 'package:flutter/material.dart';
import 'package:portfolio/widgets/animatedMenu.dart';

import '../services/dart/customClipper.dart';

class MyNavBarWidget extends StatelessWidget {
  const MyNavBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return
      Stack(
        children: [
          ClipPath(
          clipper: ShadowClipper(),
          child: Container(
            height: screenHeight/3,
            color: Color(0xFFFFD300),
          ),
        ),

        ]
      );
  }
}
