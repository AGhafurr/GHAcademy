import 'package:flutter/material.dart';
import '../Booking/booking_page.dart';
import '../Favorites/favorites_page.dart';
import '../Profil/profile_page.dart';
import '../Profil/profill.dart';
import 'button_becomean_artist.dart';
import 'button_bookan_artist.dart';
import 'button_horizontal.dart';
import 'button_learn_more.dart';
import 'button_sosmed.dart';
import 'buttonduabawah.dart';
import 'from_name.dart';
import 'more_information.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    HomePageContent(),
    FavoritesPage(),
    BookingPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFDFDFD),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff01294D),
        title: Text(
          "GH DANCE ACADEMY",
          style: TextStyle(
            color: Color(0xffFDFDFD),
            fontSize: 30,
            fontFamily: 'ToonyLine',
          ),
          textAlign: TextAlign.center,
        ),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.menu),
            iconSize: 36,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FavoritesPage();
              }));
            },
            color: Color(0xffFDFDFD),
          ),
        ],
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        )),
        leading: Container(
          padding: EdgeInsets.all(5),
          child: IconButton(
            icon: Image.asset(
              "assets/image/LOGO.png",
              height: 35,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return profill();
              }));
            },
          ),
        ),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 5, right: 15, bottom: 10, left: 15),
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xff01294D),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Color(0xff01294D),
                width: 2,
              )),
          padding: EdgeInsets.all(5),
          child: GNav(
            gap: 5,
            tabBackgroundColor: Color(0xff03AEC6),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            tabBorderRadius: 15,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
                iconColor: Colors.white,
              ),
              GButton(
                icon: Icons.favorite_border,
                text: 'Favorites',
                iconColor: Colors.white,
              ),
              GButton(
                icon: Icons.comment_bank_outlined,
                text: 'Booking',
                iconColor: Colors.white,
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
                iconColor: Colors.white,
              ),
            ],
            selectedIndex: _currentIndex,
            onTabChange: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}

class HomePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.topCenter,
        color: Color(0xffFDFDFD),
        padding: EdgeInsets.symmetric(horizontal: 2, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Empowering Artists Globally",
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'Unlock',
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "We are a talent agency dedicated to assisting our artists in securing professional opportunities worldwide through our reliable network.",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Vollkorn',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 15),
            buttonHorizontal(),
            SizedBox(
              height: 30,
            ),
            buttonBookanArtist(),
            SizedBox(
              height: 30,
            ),
            buttonBecomeanArtist(),
            SizedBox(
              height: 30,
            ),
            buttonLearnMore(),
            SizedBox(height: 60),
            moreInformation(),
            SizedBox(height: 50),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Contact Us",
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'Unlock',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            buttonduabawah(),
            SizedBox(height: 20),
            Container(
              child: Text(
                "Do you have a general question? Write to us and we'll answer as soon as possible.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Vollkorn',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 5),
            fromName(),
            new Padding(
              padding: new EdgeInsets.only(top: 20),
            ),
            SizedBox(height: 30),
            buttonSosmed(),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
