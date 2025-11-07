import 'package:flutter/material.dart';
import 'package:flutter_example/dialogs.dart';
import 'package:flutter_example/animation.dart';
import 'package:flutter_example/navigators.dart';
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 20,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AlertDialogExample()),
                ),
              },
              child: Text('Dialog'),
            ),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Navigators(title: widget.title),
                  ),
                ),
              },
              child: Text('Navigators'),
            ),
            ElevatedButton(
              onPressed: () => {
                launchUrlString('http://www.baidu.com',mode: LaunchMode.inAppWebView)
              },
              child: Text('loadUrl'),
            ),
          ],
        ),
      ),
    );
  }
}
