import 'package:flutter/material.dart';
import 'package:test_app/posts_test_app/fetchdata.dart';
import 'package:test_app/posts_test_app/post_page.dart';

class PostFetch extends StatelessWidget {
  const PostFetch({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PostPage(),
    );
  }
}
