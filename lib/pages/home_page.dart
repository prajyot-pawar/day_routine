import 'package:flutter/material.dart';
import '../pages/blog_screen.dart';
import '../pages/project_screen.dart';
import '../widgets/animatedMenu.dart';
import '../widgets/clip_shadow_path.dart';

import '../services/dart/customClipper.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: screenHeight/5,
            left: 0,
            child:
            Container(
              width: screenWidth,
              height: screenHeight,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child:
                    Container(
                        height: screenHeight ,
                        width: screenWidth*0.5,
                        color: Color(0xFF3D087B),
                        alignment: Alignment.center,
                        child:
                        Center(
                          child:Text(
                            'Blogs',
                            style: TextStyle(
                              fontFamily: 'Gotu',
                              fontStyle: FontStyle.normal,
                              color: Color(0xFFFFABCD),
                              fontSize: 30,
                            ),
                          ),
                        )
                    ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BlogScreen() ),
                        );
                      },
                  ),
                  Container(
                      height: screenHeight*0.75,
                      width: screenWidth*0.5,
                      color: Color(0xFFF43B86),
                      alignment: Alignment.center,
                      child:
                      Center(
                        child:InkWell(
                            child:
                            Text(
                              'Projects',
                              style: TextStyle(
                              fontFamily: 'Gotu',
                              fontStyle: FontStyle.normal,
                              color: Color(0xFF2B0656),
                              fontSize: 30,
                            ),
                        ),
                            onTap:(){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ProjectScreen() ),
                          );
                        }
                        ),
                      )
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 2,
            child:
            Container(
                width: screenWidth,
                height: screenHeight,
                child: Stack(
                  children: [
                    ClipPath(
                      clipper: ShadowClipper(),
                      child: Container(
                        height: screenHeight,
                        color: Color(0xFFCBA901),
                      ),
                    ),
                    ClipPath(
                      // shadow: Shadow(
                      //     color: Colors.black38,
                      //     offset: Offset(4, 4),
                      //     blurRadius: 10
                      // ),
                      clipper: BigClipper(),
                      child: Container(
                        height: screenHeight,
                        color: Color( 0xFFFFE459 ),
                      ),
                    ),
                  ],
                )
            ),
          ),
          Positioned(
              top: 146,
              left: 40,
              child:
              RichText(
                text: TextSpan(
                  text: 'Myself \n',
                  style: TextStyle(color:Color(0xFF3D087B),fontSize: 25, fontFamily: 'Gotu',),
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'Prajyot Pawar\n',
                        style: TextStyle(
                          color:Color(0xFF3D087B),fontSize: 35,fontFamily: 'Gotu',fontWeight: FontWeight.w700
                    )),
                    TextSpan(
                        text: 'A Multipotentialite  \n',
                        style: TextStyle(color:Color(0xFF3D087B),
                          fontSize: 20,
                          fontFamily: 'Gotu',)),
                  ],
                ),
              ),
          ),
          Positioned(
              top: 10,
              left: -10,
              width: screenWidth,
              height: screenHeight,
              child:
              SizedBox(
                height: 200, // set an appropriate height
                width: 200, // set an appropriate width
                child: ExampleStaggeredAnimations(),
              )
          ),
        ],
      ),
    );
  }
}