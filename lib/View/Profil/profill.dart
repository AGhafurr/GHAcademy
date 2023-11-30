import 'package:flutter/material.dart';
import 'button_back.dart';
import 'text_deskripsi.dart';

class profill extends StatelessWidget {
  const profill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0EDD4),
      body: SingleChildScrollView(
          child: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Image(image: AssetImage("assets/image/LOGO.png")),
            SizedBox(
              height: 20,
            ),
            textTitle(),
            SizedBox(
              height: 40,
            ),
            textDeskripsi(),
            SizedBox(
              height: 40,
            ),
            buttonBack(),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      )),
    );
  }
}

class textTitle extends StatelessWidget {
  const textTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Text(
            "GH",
            style: TextStyle(
              fontSize: 45,
              fontFamily: 'Unlock',
            ),
          ),
          Text(
            "DANCE ACADEMY",
            style: TextStyle(
              fontSize: 45,
              fontFamily: 'Unlock',
            ),
          )
        ],
      ),
    );
  }
}
