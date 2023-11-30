import 'package:flutter/material.dart';

class buttonduabawah extends StatelessWidget {
  const buttonduabawah({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xff03AEC6)),
                side: MaterialStateProperty.all(
                    BorderSide(color: Color(0xff01294D), width: 1)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    EdgeInsets.only(top: 9, right: 27, bottom: 9, left: 27)),
                elevation: MaterialStateProperty.all<double>(3)),
            onPressed: () {},
            child: Row(
              children: [
                Text(
                  "Book an artist",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Vollkorn',
                  ),
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.calendar_month_rounded,
                  size: 20,
                )
                // Image.asset(
                //   "assets/image/kalender.png",
                //   height: 20,
                // )
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xff01294D)),
                side: MaterialStateProperty.all(
                    BorderSide(color: Color(0xff03AEC6), width: 1)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    EdgeInsets.only(top: 9, right: 20, bottom: 9, left: 20)),
                elevation: MaterialStateProperty.all<double>(3)),
            onPressed: () {},
            child: Row(
              children: [
                Text(
                  "Become an artist",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Vollkorn',
                  ),
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.email_rounded,
                  size: 20,
                )
                // Image.asset(
                //   "assets/image/email.png",
                //   height: 20,
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
