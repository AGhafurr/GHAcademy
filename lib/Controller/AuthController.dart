import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project_mobile/View/LoginPage/LoginPage2.dart';
import 'package:project_mobile/View/HomePage/HomePage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'AccountController.dart';

class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final SharedPreferences _prefs = Get.find<SharedPreferences>();
  final AccountController accountController = Get.put(AccountController());

  RxBool isLoading = false.obs;
  RxBool isLoggedIn = false.obs;

  @override
  void onInit() {
    super.onInit();
    checkLoginStatus(); // Cek status login saat controller diinisialisasi
  }

  Future<void> checkLoginStatus() async {
    isLoggedIn.value = _prefs.containsKey('user_token');
  }

  Future<void> signUpWithEmailAndPassword(
      String username, String email, String password) async {
    try {
      isLoading.value = true;
      // Register user with email and password

      final credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      Map<String, dynamic> accountData = {
        'userId': credential.user!.uid,
        'email': email,
        'password': password,
        'name': username,
      };
      accountController.createAccount(accountData);
      accountController.createEmailSession(accountData);

      _prefs.setString('user_token', _auth.currentUser!.uid);
      Get.snackbar('Success', 'Registration successful',
          backgroundColor: Colors.green);
      Get.to(() => LoginPage2());
    } catch (error) {
      Get.snackbar('Error', 'Registration failed: $error',
          backgroundColor: Colors.red);
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> logInWithEmailAndPassword(String email, String password) async {
    try {
      isLoading.value = true;
      // Login user with email and password
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      Get.snackbar('Success', 'Hello Dancer', backgroundColor: Colors.green);
      isLoggedIn.value = true; // Set status login menjadi true
      print(isLoggedIn);
      Get.off(() => HomePage());
    } catch (error) {
      Get.snackbar('Error', 'Login failed: $error',
          backgroundColor: Colors.red);
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> logOut() async {
    _prefs.remove('user_token'); // Hapus token autentikasi dari penyimpanan
    isLoggedIn.value = false; // Set status login menjadi false
    await _auth.signOut();
    Get.offAll(LoginPage2());
  }

  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<User?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        // User cancelled the sign-in process
        return null;
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final UserCredential userCredential =
          await _auth.signInWithCredential(credential);

      final User? user = userCredential.user;
      return user;
    } catch (error) {
      print('Error signing in with Google: $error');
      return null;
    }
  }
}
