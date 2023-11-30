import 'package:flutter/material.dart';
import 'package:project_mobile/Model/ArtistModel.dart';

class DetailArtistPage extends StatefulWidget {
  final Datum artistData;

  DetailArtistPage({Key? key, required this.artistData}) : super(key: key);

  @override
  State<DetailArtistPage> createState() =>
      _DetailArtistPageState(artistData: artistData);
}

class _DetailArtistPageState extends State<DetailArtistPage> {
  final Datum artistData;

  _DetailArtistPageState({required this.artistData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff03AEC6),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "${artistData.firstName}",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontFamily: 'ToonyLine',
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 140),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipOval(
                child: Image.network(
                  artistData.avatar,
                  height: 150,
                  width: 150,
                ),
              ),
              SizedBox(height: 10),
              Text(
                ' ${artistData.firstName} ${artistData.lastName}',
                style: TextStyle(
                  color: Color.fromARGB(255, 63, 62, 53),
                  fontSize: 30,
                  fontFamily: 'Vollkorn',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                ' ${artistData.email}',
                style: TextStyle(
                  color: Color.fromARGB(255, 63, 62, 53),
                  fontSize: 20,
                  fontFamily: 'Vollkorn',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
