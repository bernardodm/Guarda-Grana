import 'package:flutter/material.dart';

import '../../pages/add/widgets/custom_form_add.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final List<TodoItem> _todoItems = [];

  void _addTodoItem(TodoItem item) => setState(() => _todoItems.add(item));

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _todoItems.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(_todoItems[index].name),
        subtitle: Text(_todoItems[index].description),
        trailing: Text('R\$ ${_todoItems[index].value.toStringAsFixed(2)}'),
      ),
    );
  }
}
