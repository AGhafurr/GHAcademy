import 'package:flutter/material.dart';

class moreInformation extends StatelessWidget {
  const moreInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff01294D),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          "assets/image/class1.png",
                          height: 150,
                          width: 150,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Trainee',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Vollkorn',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 40),
              SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          "assets/image/influence1.png",
                          height: 150,
                          width: 150,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Influence',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Vollkorn',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(width: 40),
          Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          "assets/image/choreo1.png",
                          height: 150,
                          width: 150,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Choreography',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Vollkorn',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 40),
              SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          "assets/image/television1.png",
                          height: 150,
                          width: 150,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Television',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Vollkorn',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
