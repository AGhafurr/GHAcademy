import 'package:flutter/material.dart';
import 'SignUp.dart';
import 'package:project_mobile/Controller/AuthController.dart';
import 'package:get/get.dart';

class LoginPage2 extends StatefulWidget {
  const LoginPage2({Key? key}) : super(key: key);

  @override
  _LoginPage2State createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  final AuthController _signInController = Get.put(AuthController());

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
      backgroundColor: Color(0xffFDFDFD),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 90),
            Image(
              image: AssetImage("assets/image/logoBaru.png"),
              height: 70,
            ),
            SizedBox(height: 30),
            Text(
              "Log In Now",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontFamily: 'Vollkorn',
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Please login to continue:)",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Vollkorn',
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(35),
                child: Column(
                  children: [
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        hintText: "Email",
                        labelText: "Email",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff01294D),
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Email Harus Terisi!";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        labelText: "password",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff01294D),
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password Harus Terisi!";
                        }
                        return null;
                      },
                    ),
                    TextButton(
                        onPressed: () {}, child: Text("Forget Posword?")),
                    SizedBox(height: 10),
                    TextButton(
                      onPressed: _signInController.isLoading.value
                          ? null
                          : () {
                              _signInController.logInWithEmailAndPassword(
                                _emailController.text,
                                _passwordController.text,
                              );
                            },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Color(
                                  0xff03AEC6); // Color when button is pressed
                            }
                            return Color(
                                0xff01294D); // Default color (transparent)
                          },
                        ),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.only(
                                top: 10, right: 100, bottom: 10, left: 100)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                      ),
                      child: Text(
                        "Let's Dance!",
                        style: TextStyle(
                          color: Color(0xffFDFDFD),
                          fontSize: 20,
                          fontFamily: 'Vollkorn',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.black, // Warna garis
                            thickness:
                                1, // Ketebalan garis (sesuaikan dengan kebutuhan)
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Or",
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.black, // Warna garis
                            thickness:
                                1, // Ketebalan garis (sesuaikan dengan kebutuhan)
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () async {
                            await _signInController.signInWithGoogle();
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.transparent),
                            elevation: MaterialStateProperty.all<double>(0),
                          ),
                          child: Column(
                            children: [
                              Image.asset("assets/image/Google.jpg",
                                  height: 40),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.transparent),
                            elevation: MaterialStateProperty.all<double>(0),
                          ),
                          child: Column(
                            children: [
                              Image.asset("assets/image/Fb.jpg", height: 40),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.transparent),
                            elevation: MaterialStateProperty.all<double>(0),
                          ),
                          child: Column(
                            children: [
                              Image.asset("assets/image/ig.jpg", height: 40),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Vollkorn',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return SignUpPage();
                              }));
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Color(0xff03AEC6),
                                fontSize: 13,
                                fontFamily: 'Vollkorn',
                                fontWeight: FontWeight.bold,
                              ),
                            ))
                      ],
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
