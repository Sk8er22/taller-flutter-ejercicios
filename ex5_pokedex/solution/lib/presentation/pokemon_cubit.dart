import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/pokemon_repository.dart';
import 'pokemon_state.dart';

class PokemonCubit extends Cubit<PokemonState> {
  PokemonCubit(this._repo) : super(PokemonLoading());

  final PokemonRepository _repo;

  Future<void> load() async {
    emit(PokemonLoading());
    try {
      final names = await _repo.getAll();
      if (isClosed) return;
      emit(PokemonSuccess(names));
    } catch (_) {
      if (isClosed) return;
      emit(PokemonFailure());
    }
  }
}
