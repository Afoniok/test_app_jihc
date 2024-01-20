import 'package:flutter/material.dart';
import 'package:test_app/menu/menu_page.dart';
import 'package:test_app/albums/album_page.dart';
import 'package:test_app/posts_test_app/fetchdata.dart';
import 'package:test_app/posts_test_app/post.dart';
import 'package:test_app/posts_test_app/post_page.dart';
import 'package:test_app/posts_test_app/postfetch.dart';
import 'package:test_app/todos/change_provider.dart';
import 'package:test_app/todos/todo_services.dart';
import 'package:test_app/users/future_user.dart';
import 'package:test_app/users/user_home.dart';

void main() {
  runApp(PostFetch());
}

// void main() {
//   // Sample JSON Data
//   final String sampleJson = '''
//     [
//       {"id": "1", "title": "Task 1", "completed": false},
//       {"id": "2", "title": "Task 2", "completed": true},
//       {"id": "3", "title": "Task 3", "completed": false}
//     ]
//   ''';

//   // Step 3: Flutter Widget to Display Todos with Checkboxes
//   runApp(MyApp(todos: parseTodos(sampleJson)));
// }
