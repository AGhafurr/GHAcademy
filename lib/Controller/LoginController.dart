import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project_mobile/View/HomePage/HomePage.dart';

class LoginController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  RxBool isLoading = false.obs;

  Future<void> signUpWithEmailAndPassword(String email, String password) async {
    try {
      isLoading.value = true;
      // Register user with email and password
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      print("Sebelum sukses");
      Get.off(HomePage());
      print("setalh sukses");
    } catch (error) {
      // Show error snackbar message
      Get.snackbar('Error', 'Registration failed: $error',
          backgroundColor: Colors.red);
    } finally {
      isLoading.value = false;
    }
  }
}
