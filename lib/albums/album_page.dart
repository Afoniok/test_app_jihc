import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:test_app/menu/nav_drawer.dart';
import 'package:test_app/albums/album.dart';
import 'package:test_app/photos/albums_main.dart';

// app starting point

class AlbumPage extends StatelessWidget {
  const AlbumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Albums'),
        backgroundColor: Colors.cyan,
      ),
      body: const CollectionAlbum(),
    );
  }
}

// homepage class
class CollectionAlbum extends StatefulWidget {
  const CollectionAlbum({super.key});

  @override
  State<CollectionAlbum> createState() => _MyHomePageState();
}

// homepage state
class _MyHomePageState extends State<CollectionAlbum> {
  // variable to call and store future list of posts
  Future<List<Album>> postsFuture = getPosts();

  // function to fetch data from api and return future list of posts
  static Future<List<Album>> getPosts() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
    final response =
        await http.get(url, headers: {"Content-Type": "application/json"});
    final List body = json.decode(response.body);
    return body.map((e) => Album.fromJson(e)).toList();
  }

  // build function
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // FutureBuilder
        child: FutureBuilder<List<Album>>(
          future: postsFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              // until data is fetched, show loader
              return const CircularProgressIndicator();
            } else if (snapshot.hasData) {
              // once data is fetched, display it on screen (call buildPosts())
              final posts = snapshot.data!;
              return buildPosts(posts);
            } else {
              // if no data, show simple Text
              return const Text("No data available");
            }
          },
        ),
      ),
    );
  }

  // function to display fetched data on screen
  Widget buildPosts(List<Album> posts) {
    // ListView Builder to show data in a list
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];
        return Container(
          color: Colors.grey.shade300,
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          height: 100,
          width: double.maxFinite,
          child: InkWell(
            onTap: () => {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PhotoMain(),
                ),
              )
            },
            child: Row(
              children: [
                Expanded(flex: 1, child: Image.network(post.url!)),
                SizedBox(width: 10),
                Expanded(flex: 3, child: Text(post.title!)),
              ],
            ),
          ),
        );
      },
    );
  }
}
