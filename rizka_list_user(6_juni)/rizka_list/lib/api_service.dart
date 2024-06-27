import 'dart:convert';
import 'package:http/http.dart' as http;
import 'model/modelList.dart';

class ApiService {
  static const String url = 'https://reqres.in/api/users';

  Future<List<User>> fetchUsers() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse = json.decode(response.body);
      List<dynamic> usersJson = jsonResponse['data'];
      return usersJson.map((json) => User.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }
}
