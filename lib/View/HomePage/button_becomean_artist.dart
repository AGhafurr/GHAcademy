import 'package:flutter/material.dart';

class buttonBecomeanArtist extends StatelessWidget {
  const buttonBecomeanArtist({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Color(0xff01294D)),
            side: MaterialStateProperty.all(
                BorderSide(color: Color(0xff03AEC6), width: 1.5)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                EdgeInsets.only(top: 15, right: 40, bottom: 15, left: 50)),
            elevation: MaterialStateProperty.all<double>(5)),
        onPressed: () {},
        child: Row(
          children: [
            Text(
              "Become an artist",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontFamily: 'Vollkorn',
              ),
            ),
            SizedBox(width: 30),
            Icon(
              Icons.email_rounded,
              size: 40,
            )
            // Image.asset("assets/image/email.png")
          ],
        ),
      ),
    );
  }
}
