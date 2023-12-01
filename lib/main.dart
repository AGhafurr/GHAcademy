import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_mobile/Controller/MessageController.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'View/BoardingPage/Boarding1.dart';
import 'package:project_mobile/firebase_options.dart';
import 'Controller/AuthController.dart';
import 'package:get/get.dart';
import 'View/HomePage/HomePage.dart';
// import 'package:appwrite/appwrite.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Get.putAsync(() async => await SharedPreferences.getInstance());
  await FirebaseMessagingHandler().initPushNotification();
  await FirebaseMessagingHandler().initLocalNotification();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final AuthController _authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffFDFDFD),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: _authController.isLoggedIn.value ? '/home' : 'login',
      getPages: [
        GetPage(name: '/login', page: () => Boarding1()),
        GetPage(name: '/home', page: () => HomePage())
      ],
    );
  }
}
