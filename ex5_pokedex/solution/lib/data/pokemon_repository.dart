import 'pokemon_service.dart';

class PokemonRepository {
  PokemonRepository(this._service);

  final PokemonService _service;

  Future<List<String>> getAll() => _service.fetchNames();
}
