import 'package:flutter_plush/data/repositories/listview/listview_repository.dart';
import 'package:flutter_plush/domain/models/routers/todo.dart';

/// Desc:
/// Author: lijt
/// Created on 2025/11/18
/// Email: lijt@eetrust.com
class ListViewViewModel {
  final ListViewRepository _listViewRepository;

  ListViewViewModel({required ListViewRepository listViewRepository})
    : _listViewRepository = listViewRepository;

  List<Todo> _todos = [];

  List<Todo> get todos => _todos;
}
