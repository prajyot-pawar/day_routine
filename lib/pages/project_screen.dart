import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../pages/items.dart';
import 'package:portfolio/pages/project_every_escreen.dart';
import '../widgets/NavBar.dart';
import '../widgets/NavBarAnimation.dart';
import '../widgets/animatedMenu.dart';

class ProjectScreen extends StatelessWidget {
  ProjectScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFFFE459),
      body: Builder(
        builder: (BuildContext context){
          return Stack(
            children: [
              Container(
                height: screenHeight,
                width: screenWidth,
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: screenHeight*0.85,
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final item = items[index];
                      return InkWell(
                        onTap:(){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => EveryProject(
                              description:items[index].description,
                              title:items[index].title,
                              imgurl:items[index].imageUrl,
                              githuburl:items[index].githuburl ,
                              objectives: items[index].objectives,
                              techstack:items[index].techstack , ),
                          ),);
                        },
                        child: SizedBox(
                          height: 175,
                          child: Padding(
                            padding: EdgeInsets.only(top: 10,left: 5,right: 5),
                            child: Card(
                              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                              surfaceTintColor: Colors.deepPurpleAccent,
                              // shape: CircleBorder(side: BorderSide(color: Colors.deepPurpleAccent),eccentricity: 0.50),
                              child:  Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF6810CB),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20.0),
                                  ),
                                ),

                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(15),
                                          child: CircleAvatar(
                                            backgroundColor: Color(0xFFEF777C), // set the background color of the icon
                                            child: Text(
                                              item.title,
                                              maxLines: 1,
                                              overflow: TextOverflow.visible,// set the text you want to display inside the icon
                                              style: TextStyle(
                                                color: Color(0xFF3D087B), // set the color of the text
                                                fontWeight: FontWeight.bold, // set the font weight of the text
                                                fontSize: 25.0, // set the font size of the text
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(item.title,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20,
                                              color: Color(0xFFFFE459)
                                          ),
                                        ),
                                        //   onTap: () {
                                        //     // Handle onTap event here
                                        //   },
                                      ],
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(left: 30, top: 0, right: 20 ,bottom: 0 ),
                                      child: Text(
                                        item.description,
                                        style: TextStyle(
                                          color: Color(0xFFF3E9C2),
                                        ),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              // ListTile(
                              //   leading: CircleAvatar(
                              //     backgroundImage: NetworkImage(item.imageUrl),
                              //   ),
                              //   title: Text(item.name),
                              //   onTap: () {
                              //     // Handle onTap event here
                              //   },
                              // ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                child: NavBarSlideInAnimation(
                  child: MyNavBarWidget(),
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
              Positioned(
                  top: 50,
                  left: screenWidth/4-20,
                  child:
                  SizedBox(
                    height: 200, // set an appropriate height
                    width: 200, // set an appropriate width
                    child: NavBarSlideInAnimation(
                      child: Text(
                        'Projects',
                        style: TextStyle(
                            fontFamily: 'Gotu',
                            fontStyle: FontStyle.normal,
                            color: Color(0xFF2B0656),
                            fontSize: 25,
                            fontWeight: FontWeight.w600
                        ),

                      ),
                    ),
                  )
              ),
            ],
          );
          // return Stack(
          //   children: <Widget>[
          //     Positioned(
          //         top: 55,
          //         left: screenWidth-50,
          //         child:
          //         SizedBox(
          //           height: 50, // set an appropriate height
          //           width: 50, // set an appropriate width
          //           child: Container(
          //             width: 50,
          //             height: 50,
          //             decoration: const BoxDecoration(
          //               color: Color(0xFFF3E9C2),
          //               borderRadius: BorderRadius.only(
          //                 topLeft: Radius.circular(50),
          //                 bottomLeft: Radius.circular(50),
          //               ),
          //             ),
          //           ),
          //         )
          //     ),
          //     Positioned(
          //         top: 0,
          //         left: 0,
          //         width: screenWidth,
          //         height: screenHeight,
          //         child:
          //         SizedBox(
          //           height: 200, // set an appropriate height
          //           width: 200, // set an appropriate width
          //           child: ExampleStaggeredAnimations(),
          //         )
          //     ),
          //   ],
          // );
          // return Scaffold(
          //   body: Container(
          //     child: ListView.builder(
          //       itemCount: items.length,
          //       itemBuilder: (context, index) {
          //         final item = items[index];
          //         return Container(
          //           height: 150,
          //           child: Padding(
          //             padding: EdgeInsets.only(top: 15),
          //             child: Card(
          //               surfaceTintColor: Colors.deepPurpleAccent,
          //               // shape: CircleBorder(side: BorderSide(color: Colors.deepPurpleAccent),eccentricity: 0.50),
          //               child: ListTile(
          //                 leading: CircleAvatar(
          //                   backgroundImage: NetworkImage(item.imageUrl),
          //                 ),
          //                 title: Text(item.name),
          //                 onTap: () {
          //
          //                   // Handle onTap event here
          //                 },
          //               ),
          //             ),
          //           ),
          //         );
          //       },
          //     ),
          //
          //   ),
          //
          // );
        },
      ),
    );
  }
}


