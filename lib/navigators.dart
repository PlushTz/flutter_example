import 'package:flutter/material.dart';

/// Desc:
/// Author: lijt
/// Created on 2025/11/7
/// Email: lijt@eetrust.com
class Navigators extends StatelessWidget {
  final String title;

  const Navigators({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: '使用命名路由导航', initialRoute: '/', routes: {});
  }
}
