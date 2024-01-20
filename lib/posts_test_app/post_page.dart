import 'package:flutter/material.dart';
import 'package:test_app/menu/nav_drawer.dart';
import 'package:test_app/posts_test_app/fetchdata.dart';
import 'package:test_app/posts_test_app/post.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text("Posts"),
      ),
      body: FutureBuilder(
          future: getProductData(),
          builder: (context, AsyncSnapshot<List<PostList>> postSnapshot) {
            if (postSnapshot.hasData) {
              return ListView.builder(
                  itemCount: postSnapshot.data!.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: ListTile(
                        title: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container(
                            color: Colors.grey,
                            child: Text(postSnapshot.data![index].title,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                )),
                          ),
                        ),
                        subtitle: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                            ),
                            child: Text(postSnapshot.data![index].body)),
                      ),
                    );
                  });
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
