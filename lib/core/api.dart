import 'dart:convert';

import 'package:http/http.dart' as http;

class API {
  static Future<String> getJoke() async {
    http.Response res =
        await http.get(Uri.https("api.chucknorris.io", "jokes/random"));
    return jsonDecode(res.body)["value"];
  }
}
