import 'package:flutter/material.dart';

/// Desc:
/// Author: JinTao Li
/// Created: 2025/11/10
/// Email:tao351992257@163.com
class FloatingAppBarWidget extends StatelessWidget {
  const FloatingAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('Floating App Bar'),
            pinned: true,
            flexibleSpace: Image.asset('images/lake.jpg', fit: BoxFit.cover),
            expandedHeight: 250,
          ),
          SliverList.builder(
            itemBuilder: (context, index) =>
                ListTile(title: Text('Item #$index')),
            itemCount: 50,
          ),
        ],
      ),
    );
  }
}
