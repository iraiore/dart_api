import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  Future<List<dynamic>> GetHeros() async {
    final response =
        await http.get(Uri.parse('https://api-heroes.jetspace.dev/types'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Falha ao carregar os posts');
    }
  }
}