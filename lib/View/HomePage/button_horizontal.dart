import 'package:flutter/material.dart';
import 'package:project_mobile/View/Artist/ArtitsPage.dart';
import 'package:project_mobile/View/Clients/ClientsPage.dart';
import 'package:project_mobile/View/Directors/DirectorsPage.dart';
import 'package:project_mobile/View/LoginPage/LoadingPage.dart';
import 'package:project_mobile/View/LoginPage/LoginPage2.dart';
import 'package:project_mobile/View/Portofolio/PortofolioPage.dart';
// import 'package:project_mobile/View/BoardingPage/Boarding1.dart';
// import 'package:project_mobile/View/TestPage/SignupPage.dart';

class buttonHorizontal extends StatelessWidget {
  const buttonHorizontal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Container(
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ArtisPage();
                  }));
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xff03AEC6)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  side: MaterialStateProperty.all(
                      BorderSide(color: Color(0xff01294D), width: 2)),
                  elevation: MaterialStateProperty.all<double>(5),
                ),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.all(5)),
                    Image.asset(
                      "assets/image/Group 61.png",
                      height: 60,
                    ),
                    Text(
                      "Artists",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Vollkorn',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                  ],
                )),
            SizedBox(
              width: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ClientsPage();
                  }));
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xff03AEC6)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  side: MaterialStateProperty.all(
                      BorderSide(color: Color(0xff01294D), width: 2)),
                  elevation: MaterialStateProperty.all<double>(5),
                ),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.all(5)),
                    Image.asset(
                      "assets/image/Group 62.png",
                      height: 60,
                    ),
                    Text(
                      "Clients",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Vollkorn',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                  ],
                )),
            SizedBox(
              width: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DirectorsPage();
                  }));
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xff03AEC6)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  side: MaterialStateProperty.all(
                      BorderSide(color: Color(0xff01294D), width: 2)),
                  elevation: MaterialStateProperty.all<double>(5),
                ),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.all(5)),
                    Image.asset(
                      "assets/image/Group 63.png",
                      height: 60,
                    ),
                    Text(
                      "Directors",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Vollkorn',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                  ],
                )),
            SizedBox(
              width: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PortofolioPage();
                  }));
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xff03AEC6)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  side: MaterialStateProperty.all(
                      BorderSide(color: Color(0xff01294D), width: 2)),
                  elevation: MaterialStateProperty.all<double>(5),
                ),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.all(5)),
                    Image.asset(
                      "assets/image/Group 64.png",
                      height: 60,
                    ),
                    Text(
                      "Portofolio",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Vollkorn',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                  ],
                )),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoadingPage();
                  }));
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xff03AEC6)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  side: MaterialStateProperty.all(
                      BorderSide(color: Color(0xff01294D), width: 2)),
                  elevation: MaterialStateProperty.all<double>(5),
                ),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.all(5)),
                    Image.asset(
                      "assets/image/Group 65.png",
                      height: 60,
                    ),
                    Text(
                      "Community",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Vollkorn',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                  ],
                )),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginPage2();
                  }));
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xff03AEC6)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  side: MaterialStateProperty.all(
                      BorderSide(color: Color(0xff01294D), width: 2)),
                  elevation: MaterialStateProperty.all<double>(5),
                ),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.all(5)),
                    Image.asset(
                      "assets/image/Group 66.png",
                      height: 60,
                    ),
                    Text(
                      "Teams",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Vollkorn',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
