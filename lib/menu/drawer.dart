import 'package:flutter/material.dart';
import 'package:test_app/menu/nav_drawer.dart';

class Drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Side menu'),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Text('Welcome!'),
      ),
    );
  }
}
