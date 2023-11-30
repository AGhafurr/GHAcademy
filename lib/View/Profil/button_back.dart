import 'package:flutter/material.dart';
import 'package:project_mobile/View/HomePage/HomePage.dart';

class buttonBack extends StatelessWidget {
  const buttonBack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return HomePage();
        }));
      },
      backgroundColor: Color(0xff675D50),
      splashColor: Colors.amber,
      autofocus: false,
      child: Icon(
        Icons.arrow_back_ios_new_rounded,
        color: Colors.white,
      ),
    );
  }
}
