import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  myProj(lang, title, desc, star, link) {
    return Container(
        height: 220,
        width: MediaQuery.of(context).size.width * 0.9,
        child: Card(
            color: Color(0xff262628),
            child: Container(
                margin: EdgeInsets.only(left: 20, right: 10, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      lang,
                      style: TextStyle(color: Colors.white70, fontSize: 17),
                    ),
                    SizedBox(height: 10),
                    Text(
                      title,
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 3),
                    Text(
                      desc,
                      style: TextStyle(color: Colors.white70, fontSize: 12),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.white70, size: 18),
                        SizedBox(width: 4),
                        Text(star, style: TextStyle(color: Colors.white70)),
                        Expanded(child: Container()),
                        IconButton(
                            onPressed: () {
                              launch(link);
                            },
                            icon: Icon(
                              FontAwesomeIcons.github,
                              color: Colors.white70,
                            ))
                      ],
                    )
                  ],
                ))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 8,
        backgroundColor: Color(0xff252525),
        title: Text("Projects"),
      ),
      body: SingleChildScrollView(
        child: Container(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                myProj(
                    "Flutter, Dart, Firebase",
                    "Kullion Exchange",
                    "Kullion is a crypto exchange and wallet application. It allows you to securely buy or sell Bitcoin and other crypto assets.",
                    "10",
                    "https://play.google.com/store/apps/details?id=com.app.kullion"),
                myProj(
                    "Flutter, Dart",
                    "My Portfolio",
                    "This is my portfolio android application which is made on Flutter and Dart.",
                    "10",
                    "https://github.com/RitikaBansal312/my_portfolio_app"),
                myProj(
                    "HTML, CSS, JS, React",
                    "Amazon Clone",
                    "This is a clone of popular e-commmerce website Amazon. I have created it with React in frontend, Node and Express for backend and MongoDB for storing data.",
                    "8",
                    "https://github.com/RitikaBansal312/amazon-clone-1"),
                myProj(
                    "HTML, CSS, JS, React",
                    "Covid-19 Tracker",
                    "Worked in a team of two to design the app which can track the present situation of corona virus, provide the latest data about the spread of the virus.",
                    "8",
                    "https://github.com/RitikaBansal312/Covid-19_Tracker.github.io"),
                myProj(
                    "HTML, CSS, JS",
                    "Music App",
                    "We can play music by tapping on different colours.",
                    "9",
                    "https://github.com/RitikaBansal312/MusicApp.github.io"),
                myProj(
                    "HTML, CSS, JS",
                    "Notes App",
                    "This is my first JavaScript Project. This is a notes app. In this user can add & save the notes.",
                    "9",
                    "https://github.com/RitikaBansal312/NotesApp.github.io"),
                myProj(
                    "HTML, CSS, JS",
                    "Calculator",
                    "This is Calculator based on HTML, CSS and JavaScript for doing calculations.",
                    "8",
                    "https://github.com/RitikaBansal312/Calculator"),
                myProj(
                    "HTML, CSS, JS",
                    "Simple Paint App",
                    "This is a simple paint app based on HTML, CSS and JavaScript.",
                    "8",
                    "https://github.com/RitikaBansal312/JavaScript-Simple-Paint-App"),
                myProj(
                    "HTML, CSS, Anime JS",
                    "Website Landing Page Design",
                    "It's just the cover page or home page or we can say landing page of a website. I have used HTML, CSS and ANIME JS in this repo.",
                    "9",
                    "https://github.com/RitikaBansal312/Website_Landing_Page_Design.io"),
                myProj(
                    "HTML, CSS",
                    "Registration Form",
                    "It's just a registration form made by using HTML and CSS, a form for registering with any community or organization or any event.",
                    "10",
                    "https://github.com/RitikaBansal312/RegistrationForm.github.io"),
              ],
            )),
      ),
    );
  }
}
