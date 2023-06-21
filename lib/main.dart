import 'package:flutter/material.dart';
import 'package:myportfolio/about.dart';
import 'package:myportfolio/home.dart';
import 'package:myportfolio/projects.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: "Soho"),
    initialRoute: 'home',
    routes: {
      'home': (context) => HomePage(),
      'about': (context) => AboutPage(),
      'projects': (context) => ProjectsPage(),
    },
  ));
}
