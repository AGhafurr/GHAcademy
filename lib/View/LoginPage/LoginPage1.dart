import 'package:flutter/material.dart';
import 'LoginPage2.dart';
import 'SignUp.dart';

class LoginPage1 extends StatelessWidget {
  const LoginPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFDFDFD),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Image(
              image: AssetImage("assets/image/logoBaru.png"),
              height: 70,
            ),
            SizedBox(height: 30),
            Image(image: AssetImage("assets/image/iconAwal.png")),
            SizedBox(height: 40),
            Text(
              "Do you wanna Dance?!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Vollkorn',
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                "Improve your dancing skills and become a star on the stage!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Vollkorn',
                ),
              ),
            ),
            SizedBox(height: 40),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginPage2();
                }));
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Color(0xff03AEC6); // Color when button is pressed
                    }
                    return Color(0xff01294D); // Default color (transparent)
                  },
                ),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    EdgeInsets.only(
                        top: 10, right: 100, bottom: 10, left: 100)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
              child: Text(
                "Login",
                style: TextStyle(
                  color: Color(0xffFDFDFD),
                  fontSize: 20,
                  fontFamily: 'Vollkorn',
                ),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUpPage();
                }));
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Color(0xff03AEC6); // Color when button is pressed
                    }
                    return Colors.transparent; // Default color (transparent)
                  },
                ),
                side: MaterialStateProperty.all(
                    BorderSide(color: Color(0xff01294D), width: 2)),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    EdgeInsets.only(top: 10, right: 88, bottom: 10, left: 88)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
              child: Text(
                "Sign Up",
                style: TextStyle(
                  color: Color(0xff01294D),
                  fontSize: 20,
                  fontFamily: 'Vollkorn',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
