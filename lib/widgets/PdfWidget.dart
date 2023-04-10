
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PdfWidget extends StatelessWidget {
  const PdfWidget({Key? key}) : super(key: key);

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
      backgroundColor: Color( 0xFFFFE459 ),
      body: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
            margin: EdgeInsets.only(top:screenHeight/8,bottom: screenHeight/40 ),
            child: Text('Resume',
              style: TextStyle(
              fontFamily: 'Gotu',
              fontStyle: FontStyle.normal,
              color: Color(0xFF3D087B),
              fontSize: 30,
                fontWeight: FontWeight.bold
            ),),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.blue,
            ),
            margin: EdgeInsets.all(20),
            child:Image.asset(
              'assets/images/Prajyot_Resume.png',
            )
    ),
          InkWell(
            onTap: () {
              String myurl='https://prajyotpawarpdfupdated.tiiny.site/';
              _launchURL(myurl);
            },
            child: Container(
              width: screenWidth*0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color:  Color(0xFFF43B86),
              ),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.only(top: 7,bottom: 7,left: 5,right: 5),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.transparent,
                      ),
                      margin: EdgeInsets.all(10),
                      child:Icon(Icons.download,color: Colors.yellow,)
                  ),

                  SizedBox(
                    child: Text('Download',
                      style: TextStyle(
                        fontFamily: 'Gotu',
                        fontStyle: FontStyle.normal,
                        color:Color(0xFF2B0656),
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                    ),),
                  ),
                ],
              )
    ),
          ),
        ],
      ));
  }
}
