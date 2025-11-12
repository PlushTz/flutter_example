import 'package:flutter/material.dart';
import 'package:flutter_plush/dialogs.dart';
import 'package:flutter_plush/floating_app_bar.dart';
import 'package:flutter_plush/layout.dart';
import 'package:flutter_plush/navigators.dart';
import 'package:flutter_plush/scrolling_parallax_effect.dart';
import 'package:flutter_plush/ui_field.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plush',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Plush'),
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
                  UiField.roundedRectangleBorderRadius,
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
                  UiField.roundedRectangleBorderRadius,
                ),
              ),
              backgroundColor: Colors.deepPurple,
            ),
            child: Text('FilledButton', style: TextStyle(color: Colors.white)),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  UiField.roundedRectangleBorderRadius,
                ),
              ),
              fixedSize: const Size.fromHeight(0),
              backgroundColor: Colors.deepPurple,
            ),
            onPressed: () => {AlertDialogUtil.showAlertDialog(context)},
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
                  UiField.roundedRectangleBorderRadius,
                ),
              ),
              backgroundColor: Colors.deepPurple,
            ),
            child: Text('Navigators', style: TextStyle(color: Colors.white)),
          ),
          ElevatedButton(
            onPressed: () => {
              launchUrlString(
                'https://www.baidu.com',
                mode: LaunchMode.inAppWebView,
              ),
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  UiField.roundedRectangleBorderRadius,
                ),
              ),
              backgroundColor: Colors.deepPurple,
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
                  UiField.roundedRectangleBorderRadius,
                ),
              ),
              backgroundColor: Colors.deepPurple,
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
                  UiField.roundedRectangleBorderRadius,
                ),
              ),
              backgroundColor: Colors.deepPurple,
            ),
            child: Text(
              'floating app bar',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ElevatedButton(
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ParallaxRecipe()),
              ),
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  UiField.roundedRectangleBorderRadius,
                ),
              ),
              backgroundColor: Colors.deepPurple,
            ),
            child: Text(
              'scrolling parallax effect',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
