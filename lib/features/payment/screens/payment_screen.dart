import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentScreen extends StatelessWidget {
  final String bKashURL;
  const PaymentScreen({Key? key, required this.bKashURL}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pay with Bkash"),
        centerTitle: true,
        backgroundColor: const Color(0xffEE1284),
        foregroundColor: Colors.white,
      ),
      body: WebViewWidget(
        controller: WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..loadRequest(
            Uri.parse(bKashURL),
          ),
      ),
    );
  }
}
