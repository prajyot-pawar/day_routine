import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../pages/items.dart';
import '../widgets/animatedMenu.dart';

class EveryProject extends StatelessWidget {
  //
  // const EveryProject({Key? key}) : super(key: key);
  final String title;
  final String description;
  final String imgurl;
  final String objectives;
  final String githuburl;
  final String techstack;


  const EveryProject({Key? key, required this.title, required this.description,required this.imgurl,required this.objectives,required this.githuburl,required this.techstack}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    Future<void> _launchURL(String url) async {
      final Uri uri = Uri.parse(url);
      if (!await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      )) {
        throw "Can not launch url";
      }
    }

    return Scaffold(
      backgroundColor: Color(0xFFFFE459),
      body: Builder(
        builder: (BuildContext context){
          var item;
          return Stack(
            children: <Widget>[
            SizedBox(
            height: screenHeight,
            child: Padding(
              padding: EdgeInsets.only(top: 40,left: 5,right: 5,bottom: 20),
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

                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 75),
                              margin: EdgeInsets.all(15),
                              child: CircleAvatar(
                                radius: 50,
                                backgroundColor: Color(0xFFEF777C), // set the background color of the icon
                                child: Text(
                                  '$title',
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
                            Container(
                              width: screenWidth/2,
                              padding: EdgeInsets.only(top: 50),
                              child: Text(
                                     '$title',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  style: TextStyle(
                                    fontFamily: 'Gotu',
                                    fontStyle: FontStyle.normal,
                                    color: Color(0xFFFFD577),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                  ),
                              ),
                            ),
                            //   onTap: () {
                            //     // Handle onTap event here
                            //   },
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0, left: 40),
                          child: Text(
                            'Desciption :',
                            style: TextStyle(
                              fontFamily: 'Gotu',
                              fontStyle: FontStyle.normal,
                              color: Color(0xFFFFD577),
                              fontSize: 22,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 30, top: 20, right: 30 ,bottom: 0 ),
                          child: Text(
                            '$description',
                            style: TextStyle(
                              fontFamily: 'Gotu',
                              fontStyle: FontStyle.normal,
                              color: Color(0xFFFFD577),
                              fontSize: 15,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),


                        Padding(
                          padding: const EdgeInsets.only(top: 40.0, left: 40),
                          child: Text(
                            'Objectives :',
                            style: TextStyle(
                              fontFamily: 'Gotu',
                              fontStyle: FontStyle.normal,
                              color: Color(0xFFFFD577),
                              fontSize: 22,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30, top: 20, right: 30 ,bottom: 0 ),
                          child: Text(
                            '$objectives',
                            style: TextStyle(
                              fontFamily: 'Gotu',
                              fontStyle: FontStyle.normal,
                              color: Color(0xFFFFD577),
                              fontSize: 15,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0, left: 40),
                          child: Text(
                            'Preview :',
                            style: TextStyle(
                              fontFamily: 'Gotu',
                              fontStyle: FontStyle.normal,
                              color: Color(0xFFFFD577),
                              fontSize: 22,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                            margin: EdgeInsets.only(left: 40, top: 20, right: 40 ,bottom: 20 ),
                            child: Image.network('$imgurl',fit: BoxFit.fitHeight,)),

                        Padding(
                          padding: const EdgeInsets.only(top: 40.0, left: 40),
                          child: Text(
                            'Technologies Used :',
                            style: TextStyle(
                              fontFamily: 'Gotu',
                              fontStyle: FontStyle.normal,
                              color: Color(0xFFFFD577),
                              fontSize: 22,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30, top: 20, right: 30 ,bottom: 0 ),
                          child: Text(
                            '$techstack',
                            style: TextStyle(
                              fontFamily: 'Gotu',
                              fontStyle: FontStyle.normal,
                              color: Color(0xFFFFD577),
                              fontSize: 15,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0, left: 40),
                          child: Text(
                            'Github :',
                            style: TextStyle(
                              fontFamily: 'Gotu',
                              fontStyle: FontStyle.normal,
                              color: Color(0xFFFFD577),
                              fontSize: 22,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        InkWell(

                          onTap:() {
                            String myurl='$githuburl';
                            _launchURL(myurl);
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              margin: EdgeInsets.only(left: 40, top: 20, right: 40 ,bottom: 20 ),
                              child: Image.asset('assets/images/github_logo.png',fit: BoxFit.fitHeight,height: 50,color: Colors.white,)),
                        ),

                      ],
                    ),
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
              Positioned(
                  top: 0,
                  left: 0,
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
          );
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


