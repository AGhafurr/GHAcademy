import 'package:flutter/material.dart';
import 'package:project_mobile/View/HomePage/HomePage.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Color(0xffECCDB4)),
            side: MaterialStateProperty.all(
                BorderSide(color: Color(0xff675D50), width: 2)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40))),
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                EdgeInsets.only(top: 18, right: 80, bottom: 18, left: 80)),
            elevation: MaterialStateProperty.all<double>(5)),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return HomePage();
          }));
        },
        child: const Text(
          "Let's Dance!",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Vollkorn',
          ),
        ));
  }
}
