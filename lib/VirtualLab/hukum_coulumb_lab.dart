import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HukumCoulombLab extends StatefulWidget {
  const HukumCoulombLab({Key? key}) : super(key: key);

  @override
  State<HukumCoulombLab> createState() => _HukumCoulombLabState();
}

class _HukumCoulombLabState extends State<HukumCoulombLab> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hukum Coulomb'),
        backgroundColor: const Color.fromARGB(255, 57, 142, 153),
      ),
      body: WebView(
        initialUrl:
            'https://phet.colorado.edu/sims/html/coulombs-law/latest/coulombs-law_en.html',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
        onProgress: (int progress) {
          print('WebView is loading (progress : $progress%)');
        },
        javascriptChannels: <JavascriptChannel>{
          _toasterJavascriptChannel(context),
        },
        gestureNavigationEnabled: true,
        backgroundColor: const Color(0x00000000),
      ),
    );
  }
}

JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
  return JavascriptChannel(
      name: 'Toaster',
      onMessageReceived: (JavascriptMessage message) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message.message)),
        );
      });
}
