import 'package:flutter/material.dart';

class buttonSosmed extends StatelessWidget {
  const buttonSosmed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Align(
          alignment: Alignment.center,
        ),
        IconButton(
          icon: const Icon(Icons.email),
          iconSize: 20,
          onPressed: () {},
          color: Colors.black,
        ),
        IconButton(
          icon: Image.asset(
            "assets/image/ig.png",
            height: 20,
          ),
          onPressed: () {},
          color: Color(0xff675D50),
        ),
        IconButton(
          icon: Image.asset(
            "assets/image/ytb.png",
            height: 20,
          ),
          onPressed: () {},
          color: Color(0xff675D50),
        ),
        IconButton(
          icon: Image.asset(
            "assets/image/tiktok.png",
            height: 20,
          ),
          onPressed: () {},
          color: Color(0xff675D50),
        ),
        IconButton(
          icon: Image.asset(
            "assets/image/twit.png",
            height: 20,
          ),
          onPressed: () {},
          color: Color(0xff675D50),
        )
      ],
    );
  }
}
