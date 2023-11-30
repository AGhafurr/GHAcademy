import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class JYPView extends StatefulWidget {
  const JYPView({super.key});

  @override
  State<JYPView> createState() => _JYPViewState();
}

class _JYPViewState extends State<JYPView> {
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
      ..loadRequest(Uri.parse('https://www.jype.com/'));
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
            "JYP PAGE",
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
