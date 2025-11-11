import 'package:flutter/material.dart';
import 'package:flutter_example/dialogs.dart';
import 'package:flutter_example/floating_app_bar.dart';
import 'package:flutter_example/layout.dart';
import 'package:flutter_example/navigators.dart';
import 'package:flutter_example/uifield.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: 10),
              child: ContentState(title: widget.title),
            ),
          ),
        ),
      ),
    );
  }
}

class ContentState extends StatelessWidget {
  const ContentState({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        // spacing: 20,
        children: <Widget>[
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  UiField.ROUNDED_RECTANGLE_BORDER_RADIUS,
                ),
              ),
            ),
            child: Text('OutlinedButton'),
          ),
          FilledButton(
            onPressed: () {},
            style: FilledButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  UiField.ROUNDED_RECTANGLE_BORDER_RADIUS,
                ),
              ),
            ),
            child: Text('FilledButton'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  UiField.ROUNDED_RECTANGLE_BORDER_RADIUS,
                ),
              ),
              fixedSize: const Size.fromHeight(0),
              backgroundColor: Colors.deepOrange,
            ),
            onPressed: () => {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => AlertDialogExample()),
              ),
            },
            child: Text('Dialog', style: TextStyle(color: Colors.white)),
          ),
          ElevatedButton(
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Navigators(title: title),
                ),
              ),
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  UiField.ROUNDED_RECTANGLE_BORDER_RADIUS,
                ),
              ),
              backgroundColor: Colors.amber[500],
            ),
            child: Text('Navigators', style: TextStyle(color: Colors.white)),
          ),
          ElevatedButton(
            onPressed: () => {
              launchUrlString(
                'http://www.baidu.com',
                mode: LaunchMode.inAppWebView,
              ),
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  UiField.ROUNDED_RECTANGLE_BORDER_RADIUS,
                ),
              ),
              backgroundColor: Colors.deepOrange[700],
            ),
            child: Text('loadUrl', style: TextStyle(color: Colors.white)),
          ),
          ElevatedButton(
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LayoutState()),
              ),
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  UiField.ROUNDED_RECTANGLE_BORDER_RADIUS,
                ),
              ),
              backgroundColor: Colors.deepPurple[700],
            ),
            child: Text('layout', style: TextStyle(color: Colors.white)),
          ),
          ElevatedButton(
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FloatingAppBarWidget()),
              ),
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  UiField.ROUNDED_RECTANGLE_BORDER_RADIUS,
                ),
              ),
              backgroundColor: Colors.black54,
            ),
            child: Text(
              'floating app bar',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
