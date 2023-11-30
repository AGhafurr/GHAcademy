import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.network(
            'https://lottie.host/0dc2a061-860e-4d78-a6ea-9e18941c28b5/FcGV2e26Dd.json'),
      ),
    );
  }
}
