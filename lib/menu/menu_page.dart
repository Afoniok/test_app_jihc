import 'package:flutter/material.dart';
import 'package:test_app/menu/nav_drawer.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Drawer(),
    );
  }
}
