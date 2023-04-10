
import 'package:flutter/material.dart';

import '../widgets/NavBar.dart';
import '../widgets/NavBarAnimation.dart';
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
            children: [
              Container(
                height: screenHeight,
                width: screenWidth,
                alignment: Alignment.bottomCenter,
                  child: Container(
                    height: screenHeight*0.87,
                    child: GridView.builder(
                      padding: EdgeInsets.all(8),
                      itemCount: _notesnew.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        childAspectRatio: 2,
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
                        'Blogs',
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
        },
      ),
    ),
    );
  }
}


class NotesItem {
  final String title;
  final String note;

  NotesItem({required this.title, required this.note});
}
