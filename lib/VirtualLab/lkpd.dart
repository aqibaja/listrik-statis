import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Lkpd extends StatefulWidget {
  const Lkpd({Key? key}) : super(key: key);

  @override
  State<Lkpd> createState() => _LkpdState();
}

class _LkpdState extends State<Lkpd> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LKPD Medan Listrik'),
        backgroundColor: const Color.fromARGB(255, 57, 142, 153),
      ),
      body: WebView(
        initialUrl:
            'https://drive.google.com/drive/folders/1rDd8eDbI31yxHBo_DmKNWXncgcSJzQOB?usp=sharing',
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
