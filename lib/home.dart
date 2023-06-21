import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  myAchiev(num, type) {
    return Row(
      children: [
        Text(num, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        Container(
          child: Text(type),
        )
      ],
    );
  }

  myspec(icon, text) {
    return Container(
        width: 105,
        height: 115,
        child: Card(
            margin: EdgeInsets.all(0),
            color: Colors.black,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, color: Colors.white),
                SizedBox(height: 10),
                Text(text, style: TextStyle(color: Colors.white, fontSize: 15))
              ],
            ))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: PopupMenuButton(
            color: Colors.black,
            icon: Icon(Icons.menu),
            itemBuilder: (context) => [
                  PopupMenuItem(
                      child: TextButton(
                        child: Text("Projects",
                            style: TextStyle(color: Colors.white70)),
                        onPressed: () {
                          Navigator.pushNamed(context, "projects");
                        },
                      ),
                      value: 1),
                  PopupMenuItem(
                      child: TextButton(
                        child: Text("About Me",
                            style: TextStyle(color: Colors.white70)),
                        onPressed: () {
                          Navigator.pushNamed(context, "about");
                        },
                      ),
                      value: 2),
                ]),
        elevation: 8,
        backgroundColor: Colors.transparent,
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.38, 0.7, 1.0],
          // Define to what the snappings relate to. In this case,
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effect can be applied to it.
        body: Container(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 45),
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
                    top: MediaQuery.of(context).size.height * 0.49),
                child: Column(
                  children: [
                    Text("Ritika Bansal",
                        style: TextStyle(
                            fontFamily: "Soho",
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 2,
                    ),
                    Text("Software Developer",
                        style: TextStyle(
                            fontFamily: "Soho",
                            color: Colors.white,
                            fontSize: 20)),
                  ],
                ),
              ),
            ],
          ),
        ),
        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 30),
              height: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      myAchiev("10", " Projects"),
                      myAchiev("2", " Clients"),
                      myAchiev("50", " Messages"),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text("Specialized In",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          myspec(Icons.android, "Android"),
                          myspec(Icons.ios_share, "IOS"),
                          myspec(Icons.android, "Android")
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          myspec(Icons.android, "Android"),
                          myspec(Icons.android, "Android"),
                          myspec(Icons.android, "Android")
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          myspec(Icons.android, "Android"),
                          myspec(Icons.android, "Android"),
                          myspec(Icons.android, "Android")
                        ],
                      ),
                    ],
                  )
                ],
              ));
        },
      ),
    );
  }
}
