import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_mobile/Controller/SignupController.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final SignUpFirebaseController _signUpController =
      Get.put(SignUpFirebaseController());

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 16),
            Obx(() {
              return ElevatedButton(
                onPressed: _signUpController.isLoading.value
                    ? null
                    : () {
                        _signUpController.signUpWithEmailAndPassword(
                          _emailController.text,
                          _passwordController.text,
                        );
                      },
                child: _signUpController.isLoading.value
                    ? CircularProgressIndicator()
                    : Text('Register'),
              );
            }),
          ],
        ),
      ),
    );
  }
}
