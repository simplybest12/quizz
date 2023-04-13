import 'dart:convert';

import 'package:http/http.dart' as http;
import 'dart:convert';

var link =
    'https://opentdb.com/api.php?amount=10&difficulty=medium&type=multiple';

getQuiz() async {
  var uri = await http.get(Uri.parse(link));
  if (uri.statusCode == 200) {
    var data = jsonDecode(uri.body.toString());
    print("Data is loaded");
    return data;
  }
}
