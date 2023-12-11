import 'dart:convert';
import 'package:http/http.dart' as http;

var baseURL = "https://opentdb.com/api.php?amount=20";

Future<Map<String, dynamic>> getQuiz() async {
  try {
    var response = await http.get(Uri.parse(baseURL));

    if (response.statusCode == 200) {
      // Parse the JSON response
      var data = jsonDecode(response.body);
      return data;
    } else {
      // If the server did not return a 200 OK response,
      // throw an exception.
      throw Exception('Failed to load quiz data');
    }
  } catch (e) {
    // Handle any errors that occurred during the request.
    throw Exception('Failed to load quiz data');
  }
}
