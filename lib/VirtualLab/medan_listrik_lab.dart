import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MedanListrikLab extends StatefulWidget {
  const MedanListrikLab({Key? key}) : super(key: key);

  @override
  State<MedanListrikLab> createState() => _MedanListrikLabState();
}

class _MedanListrikLabState extends State<MedanListrikLab> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medan Listrik'),
        backgroundColor: const Color.fromARGB(255, 57, 142, 153),
      ),
      body: WebView(
        initialUrl:
            'https://phet.colorado.edu/sims/html/charges-and-fields/latest/charges-and-fields_en.html',
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
