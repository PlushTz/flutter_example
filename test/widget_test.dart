// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.



import 'package:flutter/foundation.dart';

void main() {
  enableFlags('url', enable: true, isHidden: false);
  String userInfo = getUserInfo('flutter', 'man');
  if (kDebugMode) {
    print(userInfo);
  }
}

void enableFlags(String url, {bool? enable, bool? isHidden}) {}

String getUserInfo(String name, String sex, [String? from]) {
  return '$name $sex $from';
}

class Single {}
