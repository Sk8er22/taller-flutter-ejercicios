import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/pokemon_repository.dart';
import 'data/pokemon_service.dart';
import 'presentation/pokemon_cubit.dart';
import 'presentation/pokemon_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.red),
      home: BlocProvider(
        create: (_) => PokemonCubit(PokemonRepository(PokemonService()))..load(),
        child: const PokemonPage(),
      ),
    );
  }
}
