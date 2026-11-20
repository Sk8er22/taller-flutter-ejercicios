import 'dart:convert';

import 'package:http/http.dart' as http;

class PokemonService {
  Future<List<String>> fetchNames() async {
    final uri = Uri.parse('https://pokeapi.co/api/v2/pokemon?limit=30');
    final res = await http.get(uri);
    if (res.statusCode != 200) {
      throw Exception('HTTP ${res.statusCode}');
    }
    final json = jsonDecode(res.body) as Map<String, dynamic>;
    return [for (final p in json['results']) p['name'] as String];
  }
}
