import 'package:flutter/material.dart';
import 'package:portfolio/widgets/flutter_tag_view.dart';

class TagScreen extends StatefulWidget {

  @override

  _TagScreenState createState() => _TagScreenState();

}



class _TagScreenState extends State<TagScreen> {



  List<String> tags = <String>[];

  _TagScreenState() {

    for(int i = 0; i < 10; i++) {

      tags.add('Tag  ${i+1}');

    }

  }





  @override

  Widget build(BuildContext context) {
    var tagDeleted;
    var tagTitle;
    return Scaffold(

        body: SafeArea(

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[

              Container(

                color: Colors.brown.shade50,

                //width: MediaQuery.of(context).size.width-20,

                margin: EdgeInsets.all(10),

                child: FlutterTagView(

                  tags: tags,

                  maxTagViewHeight: 100,

                  deletableTag: true,

                  onDeleteTag: tagDeleted,

                  tagTitle: tagTitle,

                ),

              ),

            ],

          ),

        ),

        floatingActionButton: FloatingActionButton(

          child: Icon(Icons.add),

          onPressed: () {
            setState(() {
              tags.add('New tag added ${tags.length + 1}');
            });
          },

        )

    );
  }
}