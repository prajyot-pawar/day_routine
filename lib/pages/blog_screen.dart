
import 'package:flutter/material.dart';

import '../widgets/animatedMenu.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({Key? key}) : super(key: key);


  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {

  // final List<FeedItem> items = [
  //   FeedItem(name: 'John Doe', title:'The Property Podcast', imageUrl: 'https://via.placeholder.com/150'),
  //   FeedItem(name: 'Jane Smith', title:'The Property Podcast',  imageUrl: 'https://via.placeholder.com/150'),
  //   FeedItem(name: 'Bob Johnson', title:'The Property Podcast',  imageUrl: 'https://via.placeholder.com/150'),
  //   FeedItem(name: 'Alice Brown', title:'The Property Podcast',  imageUrl: 'https://via.placeholder.com/150'),
  //   FeedItem(name: 'Sam Wilson', title:'The Property Podcast',  imageUrl: 'https://via.placeholder.com/150'),
  //   FeedItem(name: 'Karen Lee', title:'The Property Podcast',  imageUrl: 'https://via.placeholder.com/150'),
  //   FeedItem(name: 'Karen Lee', title:'The Property Podcast',  imageUrl: 'https://via.placeholder.com/150'),
  //   FeedItem(name: 'Karen Lee', title:'The Property Podcast',  imageUrl: 'https://via.placeholder.com/150'),
  //   FeedItem(name: 'Karen Lee', title:'The Property Podcast',  imageUrl: 'https://via.placeholder.com/150'),
  //   FeedItem(name: 'Karen Lee', title:'The Property Podcast',  imageUrl: 'https://via.placeholder.com/150'),
  //   FeedItem(name: 'Karen Lee', title:'The Property Podcast',  imageUrl: 'https://via.placeholder.com/150'),
  // ];

  final List<NotesItem> _notesnew = [
    NotesItem(title: 'John Doe', note:'The Property Podcast'),
    NotesItem(title: 'Jane Smith', note:'The Property Podcast'),
    NotesItem(title: 'Bob Johnson', note:'The Property Podcast'),
    NotesItem(title: 'Alice Brown', note:'The Property Podcast'),
    NotesItem(title: 'Sam Wilson', note:'The Property Podcast'),
    NotesItem(title: 'Karen Lee', note:'The Property Podcast'),
    NotesItem(title: 'Karen Lee', note:'The Property Podcast'),
    NotesItem(title: 'Karen Lee', note:'The Property Podcast'),
    NotesItem(title: 'Karen Lee', note:'The Property Podcast'),
    NotesItem(title: 'Karen Lee', note:'The Property Podcast'),
    NotesItem(title: 'Karen Lee', note:'The Property Podcast'),
  ];
  
  // final List<String> _notes = [
  //   'Buy milk',
  //   'Walk the dog',
  //   'Clean the house',
  //   'Do laundry',
  //   'Take out the trash',
  //   'Pick up dry cleaning',
  //   'Call mom',
  //   'Pay bills',
  //   'Write report',
  //   'Finish project',
  // ];


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp (
      home: Scaffold(
      backgroundColor: Color(0xFF6917C9),
      body: Builder(
        builder: (BuildContext context){
          return Stack(
            children: <Widget>[
              // ListView.builder(
              //   itemCount: items.length,
              //   itemBuilder: (context, index) {
              //     final item = items[index];
              //     return SizedBox(
              //       height: 150,
              //       child: Padding(
              //         padding: EdgeInsets.only(top: 15,left: 5,right: 5),
              //         child: Card(
              //           shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              //           surfaceTintColor: Colors.deepPurpleAccent,
              //           // shape: CircleBorder(side: BorderSide(color: Colors.deepPurpleAccent),eccentricity: 0.50),
              //           child:  Container(
              //               decoration: BoxDecoration(
              //                 color: Color(0xFFFFABCD),
              //                 borderRadius: BorderRadius.all(
              //                   Radius.circular(20.0),
              //                 ),
              //               ),
              //
              //             child: Column(
              //               children: [
              //                 Row(
              //                   children: [
              //                     Container(
              //                       margin: EdgeInsets.all(15),
              //                       child: CircleAvatar(
              //                         backgroundImage: NetworkImage(item.imageUrl),
              //                       ),
              //                     ),
              //                     Text(item.title),
              //                     //   onTap: () {
              //                     //     // Handle onTap event here
              //                     //   },
              //                   ],
              //                 ),
              //               ],
              //             ),
              //           ),
              //           // ListTile(
              //           //   leading: CircleAvatar(
              //           //     backgroundImage: NetworkImage(item.imageUrl),
              //           //   ),
              //           //   title: Text(item.name),
              //           //   onTap: () {
              //           //     // Handle onTap event here
              //           //   },
              //           // ),
              //         ),
              //       ),
              //     );
              //   },
              // ),
              GridView.builder(
                padding: EdgeInsets.all(8),
                itemCount: _notesnew.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 1.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  final item = _notesnew[index];
                  // var title;
                  return Card(
                    shape: RoundedRectangleBorder( //<-- SEE HERE
                      // side: BorderSide(width: 2),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child:
                        Column(children: [
                          Padding(
                              padding: EdgeInsets.only(left: 5,top:5,bottom: 1),
                              child:ListTile(
                            // RoundedRectangleBorder(side: BorderSide(style: BorderStyle.solid)),
                                title:Text(
                                  item.title,
                                  style:
                                  TextStyle(
                                      fontFamily: 'Gotu',
                                      fontStyle: FontStyle.normal,
                                      color: Color(0xFF2B0656),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                              ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 5,top:1,bottom: 1),
                              child:
                              ListTile(
                                // RoundedRectangleBorder(side: BorderSide(style: BorderStyle.solid)),
                                title:Text(
                                  item.note,
                                  style:
                                  TextStyle(
                                      fontFamily: 'Gotu',
                                      fontStyle: FontStyle.normal,
                                      color: Color(0xFF2B0656),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                              ),
                          ),
                        ],)

                  );
                },
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
    ),
    );
    //   Scaffold(
    //   backgroundColor: const Color.fromARGB(255, 255, 244, 215),
    //   body:
    // );
  }
}


class NotesItem {
  final String title;
  final String note;

  NotesItem({required this.title, required this.note});
}
