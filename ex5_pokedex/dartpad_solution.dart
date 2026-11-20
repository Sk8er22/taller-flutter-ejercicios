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
    final uri = Uri.parse('https://pokeapi.co/api/v2/pokemon?limit=30');
    final res = await http.get(uri);
    if (res.statusCode != 200) {
      throw Exception('HTTP ${res.statusCode}');
    }
    final json = jsonDecode(res.body) as Map<String, dynamic>;
    return [for (final p in json['results']) p['name'] as String];
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

// ===== UI =====
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

