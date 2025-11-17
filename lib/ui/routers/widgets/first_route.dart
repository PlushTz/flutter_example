import 'package:flutter/material.dart';
import 'package:flutter_plush/ui/routers/widgets/second_route.dart';

/// Desc:
/// Author: JinTao Li
/// Created: 2025/11/17
/// Email:tao351992257@163.com
class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Route!')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(builder: (context) => SecondRoute()),
            );
          },
          child: Text('Open Route'),
        ),
      ),
    );
  }
}
