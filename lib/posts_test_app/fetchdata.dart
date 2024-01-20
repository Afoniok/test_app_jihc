import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test_app/menu/nav_drawer.dart';
import 'package:test_app/posts_test_app/post.dart';

List<PostList> list = [];
Future<List<PostList>> getProductData() async {
  http.Response response =
      await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
  if (response.statusCode == 200) {
    try {
      var data = jsonDecode(response.body) as List;
      list = data.map((e) => PostList.fromJson(e)).toList();
    } catch (e) {
      log("message", error: e.toString());
    }
  }
  return list;
}
