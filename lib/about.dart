import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

// Color.fromARGB(255, 25, 25, 26),
class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 8,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60),
              child: ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.bottomCenter,
                            colors: [Colors.black, Colors.transparent])
                        .createShader(
                            Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset(
                    'assets/images/ritika.png',
                    width: 500,
                    height: 500,
                    fit: BoxFit.contain,
                  )),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.60),
              child: Column(
                children: [
                  Text("Hello, I am",
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                  SizedBox(height: 10),
                  Text("Ritika Bansal",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 2,
                  ),
                  Text("Software Developer",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  SizedBox(height: 10),
                  SizedBox(
                    width: 120,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white, onPrimary: Colors.black),
                        onPressed: () {
                          launch(
                              "https://drive.google.com/file/d/1eb5uZZClmT37aBpPXKeSb5gQ7CwPFsGw/view?usp=sharing");
                        },
                        child: Text("Hire Me")),
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            launch("https://instagram.com");
                          },
                          icon: Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {
                            launch(
                                "https://www.linkedin.com/in/ritika-bansal-45a265178/");
                          },
                          icon: Icon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {
                            launch("https://github.com/RitikaBansal312");
                          },
                          icon: Icon(
                            FontAwesomeIcons.github,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {
                            launch("https://twitter.com/ritikabansal315");
                          },
                          icon: Icon(
                            FontAwesomeIcons.twitter,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {
                            launch("https://facebook.com");
                          },
                          icon: Icon(
                            FontAwesomeIcons.facebook,
                            color: Colors.white,
                          )),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
