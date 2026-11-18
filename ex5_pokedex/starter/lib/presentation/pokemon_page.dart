import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'pokemon_cubit.dart';
import 'pokemon_state.dart';

class PokemonPage extends StatelessWidget {
  const PokemonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pokédex')),
      body: BlocBuilder<PokemonCubit, PokemonState>(
        builder: (context, state) {
          // TODO 3: switch (state) con un widget por cada estado:
          // Loading, Success (ListView del ejercicio 4) y Failure con botón Reintentar.
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
