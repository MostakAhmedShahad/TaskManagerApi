import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkUtility {
  Future<dynamic> getMathod(String url) async {
    try {
      final http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else if (response.statusCode == 401) {
        print('Unauthorised');
      } else {
        print("something wrong");
      }
    } catch (e) {
      print(e);
    }
  }

  Future<dynamic> postMathod(String url, {Map<String, String>? body}) async {
    try {
      final http.Response response = await http.post(Uri.parse(url),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(body));

      if (response.statusCode == 200 || response.statusCode == 201) {
        return jsonDecode(response.body);
      } else if (response.statusCode == 401) {
        print('Unauthorised');
      } else {
        print("something wrong ${response.statusCode}");
      }
    } catch (e) {
      print(e);
    }
  }
}
