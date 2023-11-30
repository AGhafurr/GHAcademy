import 'package:flutter/material.dart';
import 'buttonBack.dart';

class loginPage extends StatelessWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(image: AssetImage("assets/image/LOGO.png")),
        SizedBox(
          height: 150,
        ),
        Button()
      ],
    )));
  }
}
