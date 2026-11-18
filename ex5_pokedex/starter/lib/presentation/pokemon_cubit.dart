import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/pokemon_repository.dart';
import 'pokemon_state.dart';

class PokemonCubit extends Cubit<PokemonState> {
  PokemonCubit(this._repo) : super(PokemonLoading());

  final PokemonRepository _repo;

  Future<void> load() async {
    // TODO 2: emit(PokemonLoading()); pide los nombres con _repo.getAll()
    // y emite PokemonSuccess. Si falla, emite PokemonFailure (try y catch).
    // Antes de cada emit tras un await, comprueba isClosed.
  }
}
