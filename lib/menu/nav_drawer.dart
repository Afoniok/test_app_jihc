import 'package:flutter/material.dart';
import 'package:test_app/albums/album_page.dart';
import 'package:test_app/posts_test_app/fetchdata.dart';
import 'package:test_app/posts_test_app/post_page.dart';
import 'package:test_app/posts_test_app/postfetch.dart';
import 'package:test_app/todos/change_provider.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.cyan,
              // image: DecorationImage(
              //     fit: BoxFit.fill,
              //     image: AssetImage('assets/images/cover.jpg')),
            ),
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          ListTile(
            leading: Icon(Icons.newspaper_rounded),
            title: Text('news'),
            onTap: () => {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PostFetch(),
                ),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.photo_camera_outlined),
            title: Text('photos'),
            onTap: () => {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AlbumPage(),
                ),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.check_box_rounded),
            title: Text('list of works'),
            onTap: () => {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Changeprovider(),
                ),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.supervised_user_circle_outlined),
            title: Text('list of users'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
