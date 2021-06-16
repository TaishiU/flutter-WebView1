import 'package:flutter/material.dart';
import 'package:web_view1/web_view_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirestView(),
    );
  }
}

class FirestView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Web View Sample'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Launch Web View'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WebViewScreen()),
            );
          },
        ),
      ),
    );
  }
}
