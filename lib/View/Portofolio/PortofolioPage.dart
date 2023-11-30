import 'package:flutter/material.dart';

class PortofolioPage extends StatefulWidget {
  const PortofolioPage({super.key});

  @override
  State<PortofolioPage> createState() => _PortofolioPageState();
}

class _PortofolioPageState extends State<PortofolioPage> {
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
                "assets/image/porto.png",
                height: 30,
              ),
            ],
          )),
      backgroundColor: Color(0xff01294D),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Text(
                "OUR PORTOFOLIO",
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
                  "Our artists have featured choreography, performed with and directed content for some of the hottest artists in Asia and beyond.",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Vollkorn',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
