import 'package:flutter/material.dart';
import 'WebViewSM.dart';
import 'WebViewYG.dart';
import 'WebViewJYP.dart';

class ClientsPage extends StatefulWidget {
  const ClientsPage({super.key});

  @override
  State<ClientsPage> createState() => _ClientsPageState();
}

class _ClientsPageState extends State<ClientsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffFDFDFD),
          leading: Row(
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                iconSize: 30,
                color: Colors.black,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                "assets/image/clients.png",
                height: 30,
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(children: [
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text(
                  "OUR CLIENTS",
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Unlock',
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Our clients are global leaders in the music and entertainment business. We help them set the stage and deliver top tier content.",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Vollkorn',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SMView();
                  }));
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xff03AEC6)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  side: MaterialStateProperty.all(
                      BorderSide(color: Colors.black, width: 1)),
                  elevation: MaterialStateProperty.all<double>(5),
                ),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.all(5)),
                    Image.asset(
                      "assets/image/SM.jpg",
                      height: 150,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "SM Entertaiment",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Vollkorn',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5)),
                  ],
                )),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return YGView();
                  }));
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xff03AEC6)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  side: MaterialStateProperty.all(
                      BorderSide(color: Colors.black, width: 1)),
                  elevation: MaterialStateProperty.all<double>(5),
                ),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.all(5)),
                    Image.asset(
                      "assets/image/YG.jpg",
                      height: 150,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "YG Entertaiment",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Vollkorn',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5)),
                  ],
                )),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return JYPView();
                  }));
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xff03AEC6)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  side: MaterialStateProperty.all(
                      BorderSide(color: Colors.black, width: 1)),
                  elevation: MaterialStateProperty.all<double>(5),
                ),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.all(5)),
                    Image.asset(
                      "assets/image/JYP.jpg",
                      height: 150,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "JYP Entertaiment",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Vollkorn',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5)),
                  ],
                )),
          ]),
        ),
      ),
      backgroundColor: Color(0xff01294D),
    );
  }
}
