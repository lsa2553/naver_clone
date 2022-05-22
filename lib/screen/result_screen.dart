import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';


class Result extends StatelessWidget {
  WebViewController? controller;
  final homeUrl = 'https://search.naver.com/search.naver?query=ip주소';

  Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child : WebView(
            onWebViewCreated: (WebViewController controller) {
              this.controller = controller;
            },
            initialUrl: homeUrl,
            javascriptMode: JavascriptMode.unrestricted,
          ),
        )
    );
  }
}