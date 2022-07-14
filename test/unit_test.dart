import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

void main() {
  test('Testing - fetching of food API', () async {
    final mockHTTPClient = MockClient((request) async {
      final response = await http.get(
          Uri.parse('https://www.themealdb.com/api/json/v1/1/categories.php'));
      return http.Response(jsonEncode(response), 404);
    });
    expect(await fetchFoods(mockHTTPClient), 'Failed to fetch foods');
  });
}

Future<String> fetchFoods(http.Client http) async {
  Uri numberAPIURL =
      Uri.parse('https://www.themealdb.com/api/json/v1/1/categories.php');
  final response = await http.get(numberAPIURL);
  if (response.statusCode == 200) {
    final Map foodMap = jsonDecode(response.body);
    return foodMap['text'];
  } else {
    return 'Failed to fetch foods';
  }
}
