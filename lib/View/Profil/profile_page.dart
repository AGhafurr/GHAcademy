import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_mobile/Controller/AuthController.dart';
import 'package:project_mobile/Controller/DatabaseController.dart';
import 'package:project_mobile/View/Person/Profile_user.dart';

class ProfilePage extends StatelessWidget {
  final AuthController _authController = Get.put(AuthController());
  final DatabaseController _databaseController = Get.put(DatabaseController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 10),
              // This part remains as is
              // ... (existing UI elements)
              SizedBox(height: 20),
              // Fetch and display user data dynamically
              FutureBuilder<Map<String, dynamic>?>(
                future: _databaseController.getStoreUserData(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator(); // While fetching data, show a loading indicator
                  } else {
                    if (snapshot.hasError) {
                      return Text(
                          'Error fetching data'); // If an error occurs during fetching
                    } else if (snapshot.hasData && snapshot.data != null) {
                      final userData = snapshot.data!;
                      // Display user data obtained from the snapshot
                      return Column(
                        children: [
                          Text(
                            '${userData['username']}',
                            style: TextStyle(
                                fontSize: 35,
                                fontFamily: 'Vollkorn',
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 180,
                                height: 180,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Color(0xff01294D),
                                    width: 3, // Ketebalan border
                                  ),
                                ),
                                child: CircleAvatar(
                                  radius: 90,
                                  backgroundImage:
                                      AssetImage('assets/image/karina.jpg'),
                                ),
                              ),
                              Positioned(
                                top: 10,
                                left: 134,
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff01294D),
                                  ),
                                  child: Icon(
                                    Icons.camera_alt_rounded,
                                    size: 30,
                                    color: Colors.white, // Warna ikon
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Karina Alexandria Permata ',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Vollkorn',
                            ),
                          ),
                          SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 50),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color:
                                            Colors.black, // Warna garis bawah
                                        width: 1.0, // Ketebalan garis
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Username: ',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Vollkorn',
                                        ),
                                      ),
                                      Expanded(
                                        child:
                                            SizedBox(), // Empty widget to occupy space
                                      ),
                                      Text(
                                        '${userData['username']}',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Vollkorn',
                                        ),
                                      ),
                                      SizedBox(height: 30),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color:
                                            Colors.black, // Warna garis bawah
                                        width: 1.0, // Ketebalan garis
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Dance Type: ',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Vollkorn',
                                        ),
                                      ),
                                      Expanded(
                                        child:
                                            SizedBox(), // Empty widget to occupy space
                                      ),
                                      Text(
                                        '${userData['dance']}',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Vollkorn',
                                        ),
                                      ),
                                      SizedBox(height: 30),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color:
                                            Colors.black, // Warna garis bawah
                                        width: 1.0, // Ketebalan garis
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Email: ',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Vollkorn',
                                        ),
                                      ),
                                      Expanded(
                                        child:
                                            SizedBox(), // Empty widget to occupy space
                                      ),
                                      Text(
                                        '${userData['Email']}',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Vollkorn',
                                        ),
                                      ),
                                      SizedBox(height: 30),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color:
                                            Colors.black, // Warna garis bawah
                                        width: 1.0, // Ketebalan garis
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Phone: ',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Vollkorn',
                                        ),
                                      ),
                                      Expanded(
                                        child:
                                            SizedBox(), // Empty widget to occupy space
                                      ),
                                      Text(
                                        '${userData['Phone']}',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Vollkorn',
                                        ),
                                      ),
                                      SizedBox(height: 30),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color:
                                            Colors.black, // Warna garis bawah
                                        width: 1.0, // Ketebalan garis
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Date Of Birth: ',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Vollkorn',
                                        ),
                                      ),
                                      Expanded(
                                        child:
                                            SizedBox(), // Empty widget to occupy space
                                      ),
                                      Text(
                                        '${userData['Date_of_Birth']}',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Vollkorn',
                                        ),
                                      ),
                                      SizedBox(height: 30),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color:
                                            Colors.black, // Warna garis bawah
                                        width: 1.0, // Ketebalan garis
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Country: ',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Vollkorn',
                                        ),
                                      ),
                                      Expanded(
                                        child:
                                            SizedBox(), // Empty widget to occupy space
                                      ),
                                      Text(
                                        '${userData['Country']}',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Vollkorn',
                                        ),
                                      ),
                                      SizedBox(height: 30),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color:
                                            Colors.black, // Warna garis bawah
                                        width: 1.0, // Ketebalan garis
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Gender: ',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Vollkorn',
                                        ),
                                      ),
                                      Expanded(
                                        child:
                                            SizedBox(), // Empty widget to occupy space
                                      ),
                                      Text(
                                        '${userData['Gender']}',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Vollkorn',
                                        ),
                                      ),
                                      SizedBox(height: 30),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      );
                    } else {
                      return Text('No data available'); // If no data is found
                    }
                  }
                },
              ),

              SizedBox(height: 20),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ProfilUser();
                      }));
                    },
                    child: Text('Edit Profile'),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xff03AEC6)),
                        side: MaterialStateProperty.all(
                            BorderSide(color: Color(0xff01294D), width: 1)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.only(
                                top: 8, right: 22, bottom: 8, left: 22)),
                        elevation: MaterialStateProperty.all<double>(5)),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      _authController.logOut();
                    },
                    child: Text('Logout'),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xff01294D)),
                        side: MaterialStateProperty.all(
                            BorderSide(color: Color(0xff03AEC6), width: 1)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.only(
                                top: 8, right: 30, bottom: 8, left: 30)),
                        elevation: MaterialStateProperty.all<double>(5)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
