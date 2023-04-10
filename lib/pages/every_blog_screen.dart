import 'package:flutter/material.dart';
import 'package:portfolio/pages/home_page.dart';
import 'package:url_launcher/url_launcher.dart';
import '../pages/items.dart';
import '../widgets/animatedMenu.dart';

class EveryBlog extends StatelessWidget {
  //
  // const EveryBlog({Key? key}) : super(key: key);
  final String title;
  final String note;
  final String imgurl;



  const EveryBlog({Key? key, required this.title, required this.imgurl,required this.note}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFFFFE459),
      body: Builder(
        builder: (BuildContext context){
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
                            Center(
                              child: Container(
                                width: screenWidth/2,
                                padding: EdgeInsets.only(top: 50),
                                child: Text(
                                  '$title',
                                  // overflow: TextOverflow.ellipsis,
                                  // maxLines: 2,
                                  style: TextStyle(
                                    fontFamily: 'Gotu',
                                    fontStyle: FontStyle.normal,
                                    color: Color(0xFFFFD577),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                            ),

                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.greenAccent,
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                margin: EdgeInsets.only(left: 40, top: 20, right: 40 ,bottom: 20 ),
                                child:Image.network('$imgurl',fit: BoxFit.fitHeight,)),

                            Padding(
                              padding: EdgeInsets.only(left: 30, top: 20, right: 30 ,bottom: 0 ),
                              child: Text(
                                '$note',
                                style: TextStyle(
                                  fontFamily: 'Gotu',
                                  fontStyle: FontStyle.normal,
                                  color: Color(0xFFFFD577),
                                  fontSize: 15,
                                ),
                              ),
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
                  top: screenHeight*0.08,
                  left: screenWidth-70,
                  // width: screenWidth,
                  // height: screenHeight,
                  child:
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage() ),
                      );
                    },
                    child: SizedBox( // set an appropriate width
                      child: Icon(Icons.home,size: 40,color: Color(0xFFFFD577),),
                    ),
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


