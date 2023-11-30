import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_mobile/Controller/AuthController.dart';

class ProfilePage extends StatelessWidget {
  final AuthController _authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 10),
              Text(
                'Karina',
                style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'Vollkorn',
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color(0xff01294D),
                        width: 4, // Ketebalan border
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 90,
                      backgroundImage: AssetImage('assets/image/karina.jpg'),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 134,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff01294D),
                      ),
                      child: Icon(
                        Icons.camera_alt_rounded,
                        size: 30,
                        color: Colors.white, // Warna ikon
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Karina Alexandria Permata ',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Vollkorn',
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black, // Warna garis bawah
                            width: 1.0, // Ketebalan garis
                          ),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Username: ',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Vollkorn',
                            ),
                          ),
                          SizedBox(width: 140),
                          Text(
                            'AlexKarinn',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Vollkorn',
                            ),
                          ),
                          SizedBox(height: 30),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black, // Warna garis bawah
                            width: 1.0, // Ketebalan garis
                          ),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Dance Type: ',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Vollkorn',
                            ),
                          ),
                          SizedBox(width: 120),
                          Text(
                            'Choreograph',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Vollkorn',
                            ),
                          ),
                          SizedBox(height: 30),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black, // Warna garis bawah
                            width: 1.0, // Ketebalan garis
                          ),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Email: ',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Vollkorn',
                            ),
                          ),
                          SizedBox(width: 120),
                          Text(
                            'karin1@gmail.com',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Vollkorn',
                            ),
                          ),
                          SizedBox(height: 30),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black, // Warna garis bawah
                            width: 1.0, // Ketebalan garis
                          ),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Phone: ',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Vollkorn',
                            ),
                          ),
                          SizedBox(width: 150),
                          Text(
                            '+6208888888',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Vollkorn',
                            ),
                          ),
                          SizedBox(height: 30),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black, // Warna garis bawah
                            width: 1.0, // Ketebalan garis
                          ),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Date Of Birth: ',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Vollkorn',
                            ),
                          ),
                          SizedBox(width: 120),
                          Text(
                            '08/07/2002',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Vollkorn',
                            ),
                          ),
                          SizedBox(height: 30),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black, // Warna garis bawah
                            width: 1.0, // Ketebalan garis
                          ),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Address: ',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Vollkorn',
                            ),
                          ),
                          SizedBox(width: 110),
                          Text(
                            'Gwangju Street 12',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Vollkorn',
                            ),
                          ),
                          SizedBox(height: 30),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Edit Profile'),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xff03AEC6)),
                        side: MaterialStateProperty.all(
                            BorderSide(color: Color(0xff01294D), width: 1)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.only(
                                top: 8, right: 22, bottom: 8, left: 22)),
                        elevation: MaterialStateProperty.all<double>(5)),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      _authController.logOut();
                    },
                    child: Text('Logout'),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xff01294D)),
                        side: MaterialStateProperty.all(
                            BorderSide(color: Color(0xff03AEC6), width: 1)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.only(
                                top: 8, right: 30, bottom: 8, left: 30)),
                        elevation: MaterialStateProperty.all<double>(5)),
                  ),
                ],
              ),
              SizedBox(width: 20),
            ],
          ),
        ),
      ),
    );
  }
}
