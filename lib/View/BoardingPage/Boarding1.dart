import 'package:flutter/material.dart';
import 'package:project_mobile/View/LoginPage/LoginPage1.dart';

class Boarding1 extends StatefulWidget {
  const Boarding1({super.key});

  @override
  State<Boarding1> createState() => _Boarding1State();
}

class _Boarding1State extends State<Boarding1> {
  PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Map<String, String>> _slides = [
    {
      "image": "assets/image/Dance 1.png",
      "title": "Develop Your Dance Talent",
      "description":
          "Join us and develop your dance talent at our Dance Academy. Let's practice together!"
    },
    {
      "image": "assets/image/Dance 2.png",
      "title": "Express Yourself Through Dance",
      "description":
          "Dance is a language without words. Join us at the Dance Academy to learn how to express yourself through dance movements."
    },
    {
      "image": "assets/image/Dance 3.png",
      "title": "Unleash Your Dance Potential",
      "description":
          "If you want to unleash your dance potential, we're here to guide you. Join our Dance Academy and achieve your dance dreams"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFDFDFD),
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _slides.length,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemBuilder: (BuildContext context, int index) {
              return Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 30),
                          Image.asset(
                            "assets/image/logoBaru.png",
                            height: 60,
                          ),
                        ],
                      ),
                      SizedBox(height: 80.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child:
                            Image(image: AssetImage(_slides[index]["image"]!)),
                      ),
                      SizedBox(height: 40.0),
                      Text(
                        _slides[index]["title"]!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Unlock',
                          fontSize: 24.0,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          _slides[index]["description"]!,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Vollkorn',
                            fontSize: 16.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 40.0),
                    ],
                  ),
                ),
              );
            },
          ),
          Positioned(
            bottom: 50.0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _slides.length,
                (index) => buildDotIndicator(index),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: _currentPage == _slides.length - 1
          ? FloatingActionButton(
              onPressed: () {
                // Navigasi ke halaman baru
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage1()),
                );
              },
              backgroundColor: Color(0xff01294D),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    8.0), // Sesuaikan dengan sudut yang Anda inginkan
              ),
              child: Icon(Icons.arrow_forward),
            )
          : null,
    );
  }

  Widget buildDotIndicator(int index) {
    return Container(
      height: 8.0,
      width: 8.0,
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _currentPage == index ? Color(0xff01294D) : Color(0xff03AEC6),
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Baru'),
      ),
      body: Center(
        child: Text('Ini adalah halaman baru'),
      ),
    );
  }
}
