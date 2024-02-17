import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkingFun {
  Future<List> getCats() async {
    try {
      final url =
          Uri.parse('https://api.api-ninjas.com/v1/cats?other_pets_friendly=3');

      http.Response response = await http.get(
        url,
        headers: {'X-Api-Key': 'ufeFDudhjQe531WJc5/toA==6dQB0ByxThgsIznk'},
      );

      if (response.statusCode == 200) {
        List<dynamic> catsJson = json.decode(response.body);

        return catsJson;
      } else {
        throw Exception('Failed to load cats');
      }
    } catch (e) {
      throw Exception('An error occurred');
    }
  }
}