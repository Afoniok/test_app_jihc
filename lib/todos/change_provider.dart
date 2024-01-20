import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:test_app/todos/todo_home.dart';
import 'package:test_app/todos/todo_provider.dart';

class Changeprovider extends StatelessWidget {
  const Changeprovider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodoProvider(),
      child: const MaterialApp(
        home: TodoPage(),
      ),
    );
  }
}
