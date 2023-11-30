import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:project_mobile/Controller/NewController.dart';
import 'package:project_mobile/View/Artist/DetailArtistPage.dart';

class ArtisPage extends StatefulWidget {
  const ArtisPage({super.key});

  @override
  State<ArtisPage> createState() => _ArtisPageState();
}

class _ArtisPageState extends State<ArtisPage> {
  final ApiService apiService = ApiService();

  @override
  void initState() {
    super.initState();
    apiService.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffFDFDFD),
          leading: Row(
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                iconSize: 30,
                color: Colors.black,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                "assets/image/Button 1.png",
                height: 30,
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Text(
                    "OUR ARTIST",
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'Unlock',
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Our artists are from all over the world and bring a variety of style and swag to everything they do. Enquire early to ensure you can book them for your project or event.",
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Vollkorn',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xff03AEC6)),
                        side: MaterialStateProperty.all(
                            BorderSide(color: Color(0xffFDFDFD), width: 1)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10)),
                        elevation: MaterialStateProperty.all<double>(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Book an artist",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Vollkorn',
                          ),
                        ),
                        SizedBox(width: 10),
                        Image.asset("assets/image/kalender.png", height: 20),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xff03AEC6)),
                        side: MaterialStateProperty.all(
                            BorderSide(color: Color(0xffFDFDFD), width: 1)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10)),
                        elevation: MaterialStateProperty.all<double>(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Become an artist",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Vollkorn',
                          ),
                        ),
                        SizedBox(width: 10),
                        Image.asset("assets/image/email.png", height: 20),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Obx(() {
                final artistList = apiService.artistModels;
                if (artistList.isNotEmpty) {
                  final artistData = artistList.first;
                  return Container(
                    // Memasukkan ListView ke dalam Container
                    height: 400, // Tentukan tinggi sesuai kebutuhan Anda
                    child: ListView.builder(
                      itemCount: artistData.data.length,
                      itemBuilder: (context, index) {
                        final datum = artistData.data[index];
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailArtistPage(
                                          artistData: datum,
                                        )));
                          },
                          child: Card(
                            elevation: 3,
                            color: Colors.transparent,
                            margin: EdgeInsets.all(5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    children: [
                                      ClipOval(
                                        child: Image.network(
                                          datum.avatar,
                                          height: 100,
                                          width: 100,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'User ID: ${datum.id}',
                                            style: TextStyle(
                                              color: Color(0xffFDFDFD),
                                              fontSize: 15,
                                              fontFamily: 'Vollkorn',
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            'Name: ${datum.firstName} ${datum.lastName}',
                                            style: TextStyle(
                                              color: Color(0xffFDFDFD),
                                              fontSize: 15,
                                              fontFamily: 'Vollkorn',
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            'Email: ${datum.email}',
                                            style: TextStyle(
                                              color: Color(0xffFDFDFD),
                                              fontSize: 15,
                                              fontFamily: 'Vollkorn',
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              })
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xff01294D),
    );
  }
}
