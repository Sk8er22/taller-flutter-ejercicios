sealed class PokemonState {}

class PokemonLoading extends PokemonState {}

class PokemonSuccess extends PokemonState {
  PokemonSuccess(this.names);

  final List<String> names;
}

class PokemonFailure extends PokemonState {}
