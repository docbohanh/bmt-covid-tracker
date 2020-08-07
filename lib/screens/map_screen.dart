import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import '../config/palette.dart';
import '../widgets/custom_app_bar.dart';
import 'package:webview_flutter/webview_flutter.dart';

const kAndroidUserAgent =
    'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Mobile Safari/537.36';

String selectedUrl = 'https://flutter.io';

class MapScreen extends StatelessWidget {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    final key = UniqueKey();
    // TODO: implement build
    return Scaffold(
        backgroundColor: Palette.primaryColor,
        appBar: AppBar(
          title: Text("Bản đồ dịch tễ"),
        ),
        body: WebView(
          initialUrl: 'https://maps.vnpost.vn/corona/#/app',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
        ));
  }
}
