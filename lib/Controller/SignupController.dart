import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project_mobile/View/LoginPage/LoginPage2.dart';

class SignUpFirebaseController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  RxBool isLoading = false.obs;

  Future<void> signUpWithEmailAndPassword(String email, String password) async {
    try {
      isLoading.value = true;
      // Register user with email and password\

      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      Get.snackbar('Success', 'Registration successful',
          backgroundColor: Colors.green);
      print("Sebelum sukses");
      Get.to(() => LoginPage2());
      print("setalh sukses");
    } catch (error) {
      // Show error snackbar message
      print(error);
    } finally {
      isLoading.value = false;
    }
  }
}
