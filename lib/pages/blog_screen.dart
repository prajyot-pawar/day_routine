
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
    // NotesItem(title: 'Sleep',imgurl: 'https://w0.peakpx.com/wallpaper/598/523/HD-wallpaper-sunlight-inside-bed.jpg',note:'''${' ' * 10}The realization of the meaning of sleep is very nuanced but hits very profoundly. I woke up at 5 AM, and for what? To prepare for exams. Exam preparation is not a fun thing, but being a night owl, I consider myself not good at waking up that early. However, I did it, and now I'm feeling fresher than ever. So, I can conclude that sleep is just love for the bed, which represents the comfort I got from my ancestors for free (by luck).\n \n ${' ' * 10} Though I did it and now feeling fresh than ever. SO i can conclude that SLEEP IS JUST LOVE FOR BED. BED representing comfort I got from my ancestors for free(by luck). Be a man pal, you Are just surviving on their spared comfort . Be a man and not let this comfort let you drown at misery of self doubt. \n \n${' ' * 10}At the end you will only have comfort. BUT AT THAT TIME, you should not regret having done this this for so long and not trying other feelings like feeling of self worth.'''),
    NotesItem(title: 'Inferiority',imgurl: 'https://media.tenor.com/edIVlYBox24AAAAd/deathnote.gif', note:'''${' ' * 10}I think that "being inferior" is unknowingly glorified in one's perception of thinking while it is just a mere consequence or induction of someone's skills on your head, i.e., the thing or urge to learn is replaced by inferiority in some way. Having that inferiority can also help one to some extent in getting the skill, but it won't yield much in the long run. \n \nYesterday, I encountered the same feeling while playing with my friends and getting lost among them. They let their win take over their heads, which is some kind of reward for their hard work to win the game. So if winning a game gives reward and one has been satisfied even if unrewarded but enjoyed the race itself, Then what is this one's failure? Or is he just said to be satisfied with being less? or will he not be able to progress? What can you deduce from it?''') ,
    NotesItem(title: 'Life as I percieve it', imgurl: 'https://media.tenor.com/rM990JmuobMAAAAC/falling-evelyn-wang.gif',note:'''${' ' * 10}Life is a journey, and we are all passengers on this ride. We start with no sense of our surroundings, yet we adapt quickly to the world around us. As we grow older, we start to understand the impact of our actions on our future. But, this realization comes with a price: we start to lose our innocence.\n \n ${' ' * 10}At the age of ten, we start to understand the concept of love. It's fascinating how this emotion can change our perspective on everything. We start to see the beauty in everything around us. However, as we enter our teenage years, our priorities shift. We become more concerned with achieving academic success rather than cherishing the beauty of life.\n \n ${' ' * 10}As we enter our twenties, we start to wonder how our career choices will shape our lives. It's a time of uncertainty and self-doubt. We set goals for ourselves, but most of the time, we fail to achieve them. We constantly change our goals, hoping to find that one thing that will make us happy.\n\n ${' ' * 10}As we grow older, we start to accept the inevitability of death. We realize that life is fleeting, and we need to make the most of it. It's a time for reflection and appreciation for the things we have accomplished.\n\n ${' ' * 10}In conclusion, life is a journey, and we all have different paths to take. We may not achieve all of our goals, but we should strive to find happiness and contentment in our lives. We should cherish the beauty of life, appreciate the people around us, and find joy in the simplest of happenings.''', ),
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
                        crossAxisCount: (screenWidth>600)?2:1,
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
