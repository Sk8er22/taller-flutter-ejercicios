# Ejercicio 5 — Pokédex con API (25 min)

[← Lista local (UI)](../ex4_lista_local/README.md) · [Índice](../README.md) · [Fork del template, solo interfaz →](../ex6_fork/README.md)

**Abrir en DartPad:** https://dartpad.dev/?id=df229bc6d66702f69c8f43dd9a8456e0

Consume https://pokeapi.co (gratis, sin clave) con arquitectura en capas y Cubit.

## Preparación

```
flutter create taller_flutter
cd taller_flutter
flutter pub add http flutter_bloc
```

Borra `lib/main.dart` y copia dentro de `lib/` el contenido de `starter/lib/`.
El Repository y los estados ya están. Tú completas tres TODO:

1. `data/pokemon_service.dart`: pide los nombres a la API.
2. `presentation/pokemon_cubit.dart`: emite carga, éxito o fallo.
3. `presentation/pokemon_page.dart`: pinta cada estado con `BlocBuilder`.

Prueba el error: apaga el wifi o cambia la URL y comprueba que aparece el botón Reintentar.

## Retos (25 min)

1. Completa los tres TODO: Service, Cubit y página.
2. Rompe la URL a propósito: debe aparecer el estado de error con el botón Reintentar.
3. Cambia el endpoint o añade un campo del JSON (por ejemplo `height`) y píntalo en pantalla.

Extra: pantalla de detalle con imagen y tipos, o el test del Repository en local con `flutter test` (los tests no se pueden ejecutar en DartPad).

## Extra

Pantalla de detalle con imagen y tipos: `GET https://pokeapi.co/api/v2/pokemon/{nombre}`.

## Solución

- En DartPad: https://dartpad.dev/?id=f081e6ec67a12db02b7452d39b98afb4 (el mismo código que [`dartpad_solution.dart`](dartpad_solution.dart), todo en un archivo).
- En local: copia el contenido de [`solution/lib`](solution/lib) en tu `lib/` y el de [`solution/test`](solution/test) en tu `test/`. El test del Cubit se ejecuta con `flutter test test/pokemon_cubit_test.dart`.

## Flujo de datos

Service (API) → Repository → Cubit (estado) → UI

## En DartPad (sin instalar nada)

`dartpad_starter.dart` es la misma app en un solo archivo, con paquetes que DartPad permite (flutter_bloc y http). Abre el gist del ejercicio 5 (enlace arriba). Los tests (`flutter test`) no se pueden ejecutar en DartPad.

[← Lista local (UI)](../ex4_lista_local/README.md) · [Índice](../README.md) · [Fork del template, solo interfaz →](../ex6_fork/README.md)
