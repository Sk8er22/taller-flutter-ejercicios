# Taller Flutter: de 0 a 100 — ejercicios

Cada carpeta tiene un `README.md` con el enunciado y un `starter` para empezar. Las soluciones se publicarán después del taller.

## Abrir en DartPad (sin instalar nada)

| # | Ejercicio | Carpeta | Tiempo | DartPad |
|---|-----------|---------|--------|---------|
| 0 | Dart: clase, enum, switch y for | `dart_practica` | — | https://dartpad.dev/?id=184edbcdd3f65451cfce5a753b7ff771 |
| 1 | Contador | `ex1_contador` | 12 min | https://dartpad.dev/?id=3240616577a58fbdee6117c793992dfa |
| 2 | Tarjeta de perfil | `ex2_tarjeta_perfil` | 10 min | https://dartpad.dev/?id=596208b7be33893f36f64fd9b11d2258 |
| 3 | Me gusta | `ex3_me_gusta` | 10 min | https://dartpad.dev/?id=b63a20b25c2cbe60bd2f77a2bf96ecb2 |
| 3 bis | Navegación | `ex3b_navegacion` | 10 min | https://dartpad.dev/?id=31a73e60b1132107aa95a44050416cec |
| 4 | Lista local (UI) | `ex4_lista_local` | 15 min | https://dartpad.dev/?id=cbcf9d235ee6e057f1918cb76ed955c1 |
| 5 | Pokédex con API | `ex5_pokedex` | 25 min | https://dartpad.dev/?id=df229bc6d66702f69c8f43dd9a8456e0 |
| 6a | Fork del template: interfaz | `ex6a_fork_ui` | 15 min | en local, con tu fork |
| 6b | Fork del template: datos | `ex6b_fork_datos` | 15 min | en local, con tu fork |

Los ejercicios 6a y 6b van al final y se hacen en local, sobre tu fork del template. Si no arranca, repite el 4 y el 5.

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
