import '../domain/models/routers/todo.dart';

/// Desc:
/// Author: lijt
/// Created on 2025/11/10
/// Email: lijt@eetrust.com
class UiField {

  /// 圆角矩形的圆角半径
  static const double roundedRectangleBorderRadius = 3.0;
  /// 列表数据
  static List<Todo> todos = List.generate(
    20,
    (index) => Todo(
      'Todo $index',
      'A description of what needs to be done for Todo $index',
    ),
  );

  UiField.create();
}
