import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/photos/home_screen.dart';
import 'package:test_app/photos/provider_album.dart';

class PhotoMain extends StatefulWidget {
  const PhotoMain({super.key});

  @override
  State<PhotoMain> createState() => _MyAppState();
}

class _MyAppState extends State<PhotoMain> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MyProvider()),
      ],
      child: const MaterialApp(title: 'Shimmer Demo App', home: HomeScreen()),
    );
  }
}
