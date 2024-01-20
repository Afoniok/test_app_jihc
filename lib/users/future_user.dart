import 'package:http/http.dart' as http;
import 'package:test_app/users/users.dart';

//Class to make Network Calls
class RemoteServices {
  //setup http client to handle multiple request
  var client = http.Client();

  //Function to make Network Calls from json placeholder "photos" request
  Future<List<User>?> getUsers() async {
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/users');
    var response = await client.get(uri);

    //Check for response
    if (response.statusCode == 200) {
      var json = response.body;
      return userFromJson(json);
    } else {}
    return null;
  }
}
