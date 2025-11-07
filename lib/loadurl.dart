import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

/// Desc:
/// Author: lijt
/// Created on 2025/11/7
/// Email: lijt@eetrust.com
class LoadUrlState extends StatelessWidget {
  const LoadUrlState({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LoadUrlState')),
      body: Column(
        children: <Widget>[
          ElevatedButton(
            onPressed: () => {launchUrlString('http: //www.baidu.com')},
            child: Text('打开网页'),
          ),
        ],
      ),
    );
  }
}
