import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';


class Result1 extends StatelessWidget {
  WebViewController? controller;
  final res1 = 'https://search.naver.com/search.naver?query=${Uri.encodeFull("ip주소")}';

  Result1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child : WebView(
            onWebViewCreated: (WebViewController controller) {
              this.controller = controller;
            },
            initialUrl: res1,
            javascriptMode: JavascriptMode.unrestricted,
          ),
        )
    );
  }
}

class Result2 extends StatelessWidget {
  WebViewController? controller;
  final res1 = 'https://search.naver.com/search.naver?query=${Uri.encodeFull("안녕하세요")}';

  Result2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child : WebView(
            onWebViewCreated: (WebViewController controller) {
              this.controller = controller;
            },
            initialUrl: res1,
            javascriptMode: JavascriptMode.unrestricted,
          ),
        )
    );
  }
}

class Result3 extends StatelessWidget {
  WebViewController? controller;
  final res1 = 'https://search.naver.com/search.naver?query=${Uri.encodeFull("예시입니다")}';

  Result3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child : WebView(
            onWebViewCreated: (WebViewController controller) {
              this.controller = controller;
            },
            initialUrl: res1,
            javascriptMode: JavascriptMode.unrestricted,
          ),
        )
    );
  }
}