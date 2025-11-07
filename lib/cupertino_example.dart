import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Desc:
/// Author: lijt
/// Created on 2025/11/7
/// Email: lijt@eetrust.com
class TestDialog extends StatelessWidget {
  const TestDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(''),
      ),
      body: Column(
        spacing: 10,
        children: [
          Image.network(
            'https://pic3.zhimg.com/v2-0e1b3d4ae21fdc5697de4b3dfeee9438_r.jpg',
            fit: BoxFit.scaleDown,
            scale: 1.0,
          ),
          ElevatedButton(
            onPressed: () => {
              _showAlertDialog(context)
            },
            child: Text('弹窗'),
          ),
        ],
      ),
    );
  }

  void _showAlertDialog(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: Text('提示'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[Text('是否要删除？'), Text('一旦删除数据不可恢复!')],
          ),
        ),
        actions: [
          CupertinoDialogAction(child: Text('确定'), onPressed: () => {
            Navigator.of(context).pop()
          }),
          CupertinoDialogAction(child: Text('取消'), onPressed: () => {
            Navigator.of(context).pop()
          }),
        ],
      ),
    );
  }
}
