import 'package:flutter/material.dart';
import 'package:flutter_example/cupertino_example.dart';
import 'package:flutter_example/first.dart';
import 'package:flutter_example/navigator_by_name.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // const url = 'http://github.com';
            // launchUrlString(
            //   url,
            //   mode: LaunchMode.inAppWebView,
            //   webViewConfiguration: WebViewConfiguration(
            //     enableJavaScript: true,
            //     enableDomStorage: true,
            //   ),
            // );
            Navigator.push(
              context,
              MaterialPageRoute<void>(builder: (context) => TestDialog()),
            );
          },
          child: Text('ElevatedButton $_counter'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _incrementCounter();
          // Navigator.pushNamed(context, '/navigator_by_name');
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (context) => NavigatorByName(title: widget.title),
            ),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
