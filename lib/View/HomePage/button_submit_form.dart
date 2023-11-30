import 'package:flutter/material.dart';

class buttonSubmitForm extends StatelessWidget {
  const buttonSubmitForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 140),
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Color(0xff03AEC6)),
            side: MaterialStateProperty.all(
                BorderSide(color: Color(0xff01294D), width: 1)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                EdgeInsets.only(top: 8, right: 22, bottom: 8, left: 22)),
            elevation: MaterialStateProperty.all<double>(5)),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Submit",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Vollkorn',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
