import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

// Flujo de datos: Service (API) -> Repository -> Cubit (estado) -> UI

// ===== Estados =====
sealed class PokemonState {}

class PokemonLoading extends PokemonState {}

class PokemonSuccess extends PokemonState {
  PokemonSuccess(this.names);

  final List<String> names;
}

class PokemonFailure extends PokemonState {}

// ===== Service (API) =====
class PokemonService {
  Future<List<String>> fetchNames() async {
    // TODO 1: GET https://pokeapi.co/api/v2/pokemon?limit=30
    // Decodifica el JSON y devuelve json['results'][i]['name'].
    throw UnimplementedError();
  }
}

// ===== Repository =====
class PokemonRepository {
  PokemonRepository(this._service);

  final PokemonService _service;

  Future<List<String>> getAll() => _service.fetchNames();
}

// ===== Cubit =====
class PokemonCubit extends Cubit<PokemonState> {
  PokemonCubit(this._repo) : super(PokemonLoading());

  final PokemonRepository _repo;

  Future<void> load() async {
    // TODO 2: emit(PokemonLoading()); pide los nombres con _repo.getAll()
    // y emite PokemonSuccess. Si falla, emite PokemonFailure (try y catch).
    // Antes de cada emit tras un await, comprueba isClosed.
  }
}

// ===== UI =====
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

// ===== App =====
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

