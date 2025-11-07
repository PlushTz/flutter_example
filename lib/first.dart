import 'package:flutter/material.dart';

/// Desc:
/// Author: lijt
/// Created on 2025/11/7
/// Email: lijt@eetrust.com
class FirstRoute extends StatelessWidget {
  final String title;

  const FirstRoute({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
        body: Center(
          child: Text('FirstRoute'),
        )
    );
  }
}
