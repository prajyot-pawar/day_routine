
import 'package:flutter/material.dart';
import 'package:portfolio/pages/every_blog_screen.dart';
import 'package:portfolio/pages/home_page.dart';

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
    NotesItem(title: 'Sleep',imgurl: 'https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/325353_2200-732x549.jpg',note:'''${' ' * 10}The realization of the meaning of sleep is very nuanced but hits very profoundly. I woke up at 5 AM, and for what? To prepare for exams. Exam preparation is not a fun thing, but being a night owl, I consider myself not good at waking up that early. However, I did it, and now I'm feeling fresher than ever. So, I can conclude that sleep is just love for the bed, which represents the comfort I got from my ancestors for free (by luck).\n \n ${' ' * 10} Though I did it and now feeling fresh than ever. SO i can conclude that SLEEP IS JUST LOVE FOR BED. BED representing comfort I got from my ancestors for free(by luck). Be a man pal, you Are just surviving on their spared comfort . Be a man and not let this comfort let you drown at misery of self doubt. \n \n${' ' * 10}At the end you will only have comfort. BUT AT THAT TIME, you should not regret having done this this for so long and not trying other feelings like feeling of self worth.'''),
    NotesItem(title: 'Inferiority',imgurl: 'https://media.tenor.com/edIVlYBox24AAAAd/deathnote.gif', note:'''${' ' * 10}I used to think that "being inferior " is somehow glorified in one's perception of thinking while it is just a mere consequence/ induction of someone's skills on your head i.e. the thing/ urge to learn is replaced by inferiority in one or other way. Having that inferiority can also help one in some extent of getting hand over the skill but it wont yield much in long run.\n \n Yesterday, I encountered the same feeling while playing with my friends and getting lost among them. They let their win taken over their head which is some kind of reward for their hardwork to win the game. So if winning game gives reward and one has been satisfied even if unrewarded but enjoyed the race itself. Then is this one's failure? Or just he is said to be satisfied being less? or he will not be able to progress? what can u deduce by it?''') ,   // NotesItem(title: 'Jane Smith', note:'The Property Podcast'),
    // NotesItem(title: 'Bob Johnson', note:'The Property Podcast'),
    // NotesItem(title: 'Alice Brown', note:'The Property Podcast'),
    // NotesItem(title: 'Sam Wilson', note:'The Property Podcast'),
    // NotesItem(title: 'Karen Lee', note:'The Property Podcast'),
    // NotesItem(title: 'Karen Lee', note:'The Property Podcast'),
    // NotesItem(title: 'Karen Lee', note:'The Property Podcast'),
    // NotesItem(title: 'Karen Lee', note:'The Property Podcast'),
    // NotesItem(title: 'Karen Lee', note:'The Property Podcast'),
    // NotesItem(title: 'Karen Lee', note:'The Property Podcast'),
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
                    height: screenHeight*0.80,
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
                                child:
                                InkWell(
                                  onTap:(){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => EveryBlog(
                                        note:_notesnew[index].note,
                                        title:_notesnew[index].title,
                                        imgurl:_notesnew[index].imgurl,
                                      ),
                                      ),);
                                  },
                                  child: ListTile(
                                    // RoundedRectangleBorder(side: BorderSide(style: BorderStyle.solid)),
                                    title:Text(
                                      item.title,
                                      style:
                                      TextStyle(
                                          fontFamily: 'Gotu',
                                          fontStyle: FontStyle.normal,
                                          color: Color(0xFF2B0656),
                                          fontSize: 25,
                                          fontWeight: FontWeight.w600
                                      ),
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
                                    maxLines: 3,
                                    style:
                                    TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                        fontFamily: 'Gotu',
                                        fontStyle: FontStyle.normal,
                                        color: Color(0xFF2B0656),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,

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
                  top: screenHeight*0.06,
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
                      child: Icon(Icons.home,size: 40,color: Color(0xFF2B0656),),
                    ),
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
  final String imgurl;

  NotesItem({required this.title, required this.note,required this.imgurl});
}
