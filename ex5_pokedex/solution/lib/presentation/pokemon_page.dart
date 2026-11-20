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
          return switch (state) {
            PokemonLoading() =>
              const Center(child: CircularProgressIndicator()),
            PokemonSuccess(:final names) => PokemonList(names),
            PokemonFailure() => Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('No se pudo cargar'),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: () => context.read<PokemonCubit>().load(),
                      child: const Text('Reintentar'),
                    ),
                  ],
                ),
              ),
          };
        },
      ),
    );
  }
}

class PokemonList extends StatelessWidget {
  const PokemonList(this.names, {super.key});

  final List<String> names;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: names.length,
      itemBuilder: (context, index) => ListTile(title: Text(names[index])),
    );
  }
}
