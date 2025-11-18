import 'package:flutter/material.dart';

/// Desc:
/// Author: lijt
/// Created on 2025/11/13
/// Email: lijt@eetrust.com
class MyCounter extends StatefulWidget {
  const MyCounter({super.key, required this.onChanged});

  final ValueChanged<int> onChanged;

  @override
  State<StatefulWidget> createState() {
    return _MyCounterState();
  }
}

class _MyCounterState extends State<MyCounter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              Text('Count:$count'),
              TextButton(
                onPressed: () => {
                  widget.onChanged.call(count++),
                  // widget.onChanged(count++),
                  setState(() {
                    count;
                  }),
                },
                style: TextButton.styleFrom(backgroundColor: Colors.deepPurple),
                child: Text('+', style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                onPressed: () => {
                  widget.onChanged.call(count--),
                  // widget.onChanged(count--),
                  setState(() {
                    count;
                  }),
                },
                style: TextButton.styleFrom(backgroundColor: Colors.deepPurple),
                child: Text('-', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
