import 'package:flutter/material.dart';
import 'package:project_mobile/Model/NewModel.dart';
import 'package:project_mobile/constant.dart';

class DetailDirectorsPage extends StatefulWidget {
  final User artistData;

  DetailDirectorsPage({Key? key, required this.artistData}) : super(key: key);

  @override
  State<DetailDirectorsPage> createState() =>
      _DetailDirectorsPageState(artistData: artistData);
}

class _DetailDirectorsPageState extends State<DetailDirectorsPage> {
  final User artistData;

  _DetailDirectorsPageState({required this.artistData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: CoksuColor,
        title: Text(
          "${artistData.firstName}",
          style: TextStyle(
            color: TeksColor,
            fontSize: 30,
            fontFamily: 'ToonyLine',
          ),
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.network(artistData.image),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "${artistData.firstName} ${artistData.lastName}",
              style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Vollkorn',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Username: ${artistData.username}",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Vollkorn',
                    ),
                  ),
                  Text(
                    "Phone number: ${artistData.phone}",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Vollkorn',
                    ),
                  ),
                  Text(
                    "Email: ${artistData.email}",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Vollkorn',
                    ),
                  ),
                  Text(
                    "Age: ${artistData.age}",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Vollkorn',
                    ),
                  ),
                  Text(
                    "Birth date: ${artistData.birthDate}",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Vollkorn',
                    ),
                  ),
                  Text(
                    "Gender: ${artistData.gender}",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Vollkorn',
                    ),
                  ),
                  Text(
                    "University: ${artistData.university}",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Vollkorn',
                    ),
                  ),
                  Text(
                    "Height: ${artistData.height}",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Vollkorn',
                    ),
                  ),
                  Text(
                    "Weight: ${artistData.weight}",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Vollkorn',
                    ),
                  ),
                ],
              ),
            ),
          ]),
    );
  }
}
