// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:project_mobile/View/HomePage/HomePage.dart';
// import 'package:project_mobile/View/Person/Profile_user.dart';
// import 'package:project_mobile/View/Profil/profill.dart';

// class navbottombar extends StatefulWidget {
//   const navbottombar({Key? key}) : super(key: key);

//   @override
//   _navbottombarState createState() => _navbottombarState();
// }

// class _navbottombarState extends State<navbottombar> {
//   int _currentIndex = 0;
//   final List<Widget> _pages = [
//     // HomePage(),
//     // ProfilUser(),
//     // profill(),
//     // Container(color: Colors.blueAccent),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _pages[_currentIndex],
//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.only(top: 5, right: 15, bottom: 10, left: 15),
//         child: Container(
//           decoration: BoxDecoration(
//             color: Colors.transparent,
//             borderRadius: BorderRadius.circular(15),
//             border: Border.all(
//               color: Colors.black,
//               width: 2,
//             ),
//           ),
//           padding: EdgeInsets.all(5),
//           child: GNav(
//             gap: 5,
//             tabBackgroundColor: Color(0xff675D50),
//             padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//             tabBorderRadius: 15,
//             tabs: const [
//               GButton(
//                 icon: Icons.home,
//                 text: 'Home',
//               ),
//               GButton(
//                 icon: Icons.favorite_border,
//                 text: 'Favorites',
//               ),
//               GButton(
//                 icon: Icons.comment_bank_outlined,
//                 text: 'Messages',
//               ),
//               GButton(
//                 icon: Icons.person,
//                 text: 'Profile',
//               ),
//             ],
//             selectedIndex: _currentIndex,
//             onTabChange: (index) {
//               setState(() {
//                 _currentIndex = index;
//               });
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
