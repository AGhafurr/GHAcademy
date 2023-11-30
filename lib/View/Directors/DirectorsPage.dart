import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:project_mobile/Controller/ArtistController.dart';
import 'DetailDirectorsPage.dart';

class DirectorsPage extends StatefulWidget {
  const DirectorsPage({super.key});

  @override
  State<DirectorsPage> createState() => _DirectorsPageState();
}

class _DirectorsPageState extends State<DirectorsPage> {
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
                "assets/image/Direct.png",
                height: 30,
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Text(
                "OUR DIRECTORS",
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
                  "We are committed to delivering the most up-to-date industry knowledge, trends, and tactics to assist you in realizing your creative aspirations.",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Vollkorn',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
              Obx(() {
                final artistList = apiService.artistModels;
                if (artistList.isNotEmpty) {
                  final artistData = artistList.first;
                  return Container(
                    height: 550,
                    child: ListView.builder(
                      itemCount: artistData.users.length,
                      itemBuilder: (context, index) {
                        final user = artistData.users[index];
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailDirectorsPage(
                                          artistData: user,
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
                                          user.image,
                                          height: 100,
                                          width: 100,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            '${user.firstName} ${user.lastName}',
                                            style: TextStyle(
                                              color: Color(0xffFDFDFD),
                                              fontSize: 15,
                                              fontFamily: 'Vollkorn',
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
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
              }),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xff01294D),
    );
  }
}
