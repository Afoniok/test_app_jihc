import 'dart:convert'; // required to encode/decode json data
import 'package:http/http.dart' as http;

class Album {
  int? albumId;
  int? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  Album({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  Album.fromJson(Map<String, dynamic> json) {
    albumId = json['albumId'];
    id = json['id'];
    title = json['title'];
    url = json['url'];
    thumbnailUrl = json['thumbnailUrl'];
  }
}
