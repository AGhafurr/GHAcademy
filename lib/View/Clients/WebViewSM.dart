import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SMView extends StatefulWidget {
  const SMView({super.key});

  @override
  State<SMView> createState() => _SMViewState();
}

class _SMViewState extends State<SMView> {
  WebViewController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://www.smentertainment.com/'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xffF0EDD4),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text(
            "SM PAGE",
            style: TextStyle(
              color: Color(0xff675D50),
              fontSize: 30,
              fontFamily: 'ToonyLine',
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: WebViewWidget(
          controller: _controller!,
        ));
  }
}
