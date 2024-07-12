import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/coffee_item_models.dart';

class CoffeeService {
  static const String baseUrl = 'http://192.168.238.58:8000';

  Future<List<CoffeeItem>> fetchCoffeeItems(int categoryId) async {
    final response =
        await http.get(Uri.parse('$baseUrl/categories/$categoryId'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((item) => CoffeeItem.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load coffee items');
    }
  }
}
