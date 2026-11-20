import 'package:flutter_test/flutter_test.dart';
import 'package:taller_flutter/data/pokemon_repository.dart';
import 'package:taller_flutter/data/pokemon_service.dart';
import 'package:taller_flutter/presentation/pokemon_cubit.dart';
import 'package:taller_flutter/presentation/pokemon_state.dart';

class _FakeService extends PokemonService {
  _FakeService({this.fail = false});

  final bool fail;

  @override
  Future<List<String>> fetchNames() async {
    if (fail) throw Exception('sin red');
    return ['bulbasaur', 'charmander'];
  }
}

void main() {
  test('load emite Loading y luego Success', () async {
    final cubit = PokemonCubit(PokemonRepository(_FakeService()));
    final states = <PokemonState>[];
    cubit.stream.listen(states.add);

    await cubit.load();
    await Future<void>.delayed(Duration.zero);

    expect(states.first, isA<PokemonLoading>());
    expect(states.last, isA<PokemonSuccess>());
    expect((states.last as PokemonSuccess).names, ['bulbasaur', 'charmander']);
    await cubit.close();
  });

  test('load emite Failure si el servicio falla', () async {
    final cubit = PokemonCubit(
      PokemonRepository(_FakeService(fail: true)),
    );
    final states = <PokemonState>[];
    cubit.stream.listen(states.add);

    await cubit.load();
    await Future<void>.delayed(Duration.zero);

    expect(states.last, isA<PokemonFailure>());
    await cubit.close();
  });
}
