# Taller Flutter: de 0 a 100 — ejercicios

Cada carpeta tiene un `README.md` con el enunciado y un `starter` para empezar. Las soluciones están en la carpeta de cada ejercicio (y en DartPad, en la columna Solución).

## Presentación

Diapositivas del taller: https://docs.google.com/presentation/d/1EWyJTrW35MnpPxEGHBb-OJGr4iwrk3a94fSFGd9Souw/edit?usp=sharing

## Aclaración: `context` no es para leer el estado

En clase lo expliqué mal. El `BuildContext` es la posición de tu widget en el árbol de widgets. Sirve para buscar hacia arriba lo que ofrecen los widgets padre:

- `Theme.of(context)`: el tema que define `MaterialApp`.
- `Navigator.of(context)`: el navegador, para cambiar de pantalla.
- `MediaQuery.of(context)`: el tamaño de la pantalla.
- `context.read<PokemonCubit>()`: el Cubit que un `BlocProvider` puso más arriba.

El estado de un `StatefulWidget` no se lee con `context`. Vive en su clase `State`: lo lees directamente (`likes`) y lo cambias con `setState`.

Con Bloc sí usas `context`, pero solo para encontrar el Cubit en un widget padre. El estado lo guarda el Cubit, no el `context`.

Por eso, en el ejercicio 3 bis, el botón tiene que estar por debajo de `MaterialApp`: desde más arriba, `Navigator.of(context)` no encuentra nada.

## Abrir en DartPad (sin instalar nada)

| # | Ejercicio | Carpeta | Tiempo | DartPad | Solución |
|---|-----------|---------|--------|---------|----------|
| 0 | Dart: clase, enum, switch y for | `dart_practica` | — | https://dartpad.dev/?id=184edbcdd3f65451cfce5a753b7ff771 | — |
| 1 | Contador | `ex1_contador` | 12 min | https://dartpad.dev/?id=3240616577a58fbdee6117c793992dfa | https://dartpad.dev/?id=a45e0e66d3cab73ef6e2ad92a8fdcfae |
| 2 | Tarjeta de perfil | `ex2_tarjeta_perfil` | 10 min | https://dartpad.dev/?id=596208b7be33893f36f64fd9b11d2258 | https://dartpad.dev/?id=ce379f852211732c2dd385403f10201f |
| 3 | Me gusta | `ex3_me_gusta` | 10 min | https://dartpad.dev/?id=b63a20b25c2cbe60bd2f77a2bf96ecb2 | https://dartpad.dev/?id=5f7b0578af10d2efb645b2c1e5600375 |
| 3 bis | Navegación | `ex3b_navegacion` | 10 min | https://dartpad.dev/?id=31a73e60b1132107aa95a44050416cec | https://dartpad.dev/?id=b302df7fc4a21683ab6beef32cfbc5e6 |
| 4 | Lista local (UI) | `ex4_lista_local` | 15 min | https://dartpad.dev/?id=cbcf9d235ee6e057f1918cb76ed955c1 | https://dartpad.dev/?id=0103cb441d6b44a9d77ef22d0d073e0e |
| 5 | Pokédex con API | `ex5_pokedex` | 25 min | https://dartpad.dev/?id=df229bc6d66702f69c8f43dd9a8456e0 | https://dartpad.dev/?id=f081e6ec67a12db02b7452d39b98afb4 |
| 6 | Fork del template, solo interfaz | `ex6_fork` | 15 min | en local, con tu fork | [`ex6_fork/solucion`](ex6_fork/solucion) |

El ejercicio 6 va al final y se hace en local, sobre tu fork. Si no arranca, haz el extra del 4 o del 5 en DartPad.

## Preparación (para trabajar en local)

1. Instala Visual Studio Code y la extensión Flutter. Extensiones recomendadas: https://gist.github.com/Sk8er22/db2a1e20b97a9b8c5c067c7340419d0a
2. Instala el SDK: paleta de comandos, `Flutter: New Project`, `Download SDK`.
3. Ejecuta `flutter doctor`. Necesitas Flutter y Chrome en verde.
4. Guía oficial: https://docs.flutter.dev/install/with-vs-code

## Proyecto local (ejercicios 4 y 5)

```
flutter create taller_flutter
cd taller_flutter
flutter pub add http flutter_bloc
```

Sustituye `lib/main.dart` por `ex4_lista_local/starter.dart` (ejercicio 4) o copia la carpeta `ex5_pokedex/starter/lib` (ejercicio 5).
Ejecuta con `flutter run -d chrome`. Pulsa `r` para hot reload y `R` para hot restart.
