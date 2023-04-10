
import 'package:flutter/material.dart';
import 'package:portfolio/pages/home_page.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/NavBar.dart';
import '../widgets/NavBarAnimation.dart';

class ContactMeScreen extends StatelessWidget {
  const ContactMeScreen({Key? key}) : super(key: key);

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
        backgroundColor:Color(0xFF2B0656),
        body: Stack(
          children: [
            Container(
              height: screenHeight,
              width: screenWidth,
              child: Column(
                children: [
                  SizedBox(
                    height: 100, // set an appropriate height
                    width: 100, // set an
                  ),
                  Container(
                    height: screenHeight/4,
                    width: screenHeight/4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Colors.transparent,
                    ),
                    margin: EdgeInsets.only(
                        top:screenHeight/10,bottom: screenHeight/20 ),
                    child: Center(
                      child: Image.network('https://i.ibb.co/qBPN4HP/pp-modified.png' ),
                    ),
                  ),
                  Container(
                    height: screenHeight/13,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Colors.transparent,
                    ),
                    child: Center(
                      child: Text('Prajyot Pawar',
                        textAlign: TextAlign.center,
                        style : TextStyle(
                          fontFamily: 'Gotu',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFFFD577),
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: screenHeight/8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Colors.transparent,
                    ),
                    child: Center(
                      child: Text('Click on any one 👇 \n and get Connected ➕ with me.',
                        textAlign: TextAlign.center,
                        style : TextStyle(
                          fontFamily: 'Gotu',
                          fontStyle: FontStyle.normal,
                          color: Color(0xFFFFD577),
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),

                  Padding
                    (
                    padding: const EdgeInsets.only(top: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            String myurl='https://www.linkedin.com/in/prajyot-pawar/';
                            _launchURL(myurl);
                          },
                          child: Container(
                              width: screenWidth*0.15,
                              height: screenWidth*0.15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(100)),
                                color:  Colors.transparent,
                              ),
                              child:
                              Image.network(
                                'https://blog.waalaxy.com/wp-content/uploads/2021/01/LinkedIn-Symbole-768x432.png',
                                width: screenWidth*0.2,
                                height: screenWidth*0.2,
                                fit: BoxFit.cover,

                              )
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            String myurl='https://www.instagram.com/prajyotp.dev/';
                            _launchURL(myurl);
                          },
                          child: Container(
                              width: screenWidth*0.15,
                              height: screenWidth*0.15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(100)),
                                color:  Color(0xFFF43B86),
                              ),
                              child:
                              Image.network(
                                'https://www.freepnglogos.com/uploads/logo-ig-png/logo-ig-instagram-new-logo-vector-download-13.png',
                                width: screenWidth*0.15,
                                height: screenWidth*0.15,
                                fit: BoxFit.cover,

                              )
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            String myurl='https://www.instagram.com/prajyotp.dev/';
                            _launchURL(myurl);
                          },
                          child: Container(
                              width: screenWidth*0.15,
                              height: screenWidth*0.15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(100)),
                                color:  Color(0xFFF43B86),
                              ),
                              child:
                              Image.network(
                                'https://seeklogo.com/images/D/discord-icon-new-2021-logo-09772BF096-seeklogo.com.png',

                                width: screenWidth*0.15,
                                height: screenWidth*0.15,
                                fit: BoxFit.contain,

                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
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
                      'Myself',
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
        ),
        );
  }
}
