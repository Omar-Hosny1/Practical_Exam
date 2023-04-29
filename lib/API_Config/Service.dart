import 'dart:convert';
import 'package:http/http.dart' as http;

class Service {
  // Random API endpoint
  // use your own one
  static Future<List> fetchData() async {
    try {
      final URI = Uri.parse(
          'https://commerce-app-angular-default-rtdb.firebaseio.com/products.json');
      final response = await http.get(URI);
      final responseBody = json.decode(response.body) as Map;
      return responseBody['-NEzg6viHPh-Pl_ZnmGs'];
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
