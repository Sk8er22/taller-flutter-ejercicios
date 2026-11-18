# Ejercicio 5 — Pokédex con API (25 min)

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

## Extra

Pantalla de detalle con imagen y tipos: `GET https://pokeapi.co/api/v2/pokemon/{nombre}`.

## Solución

Se publicará después del taller.

## Flujo de datos

Service (API) → Repository → Cubit (estado) → UI

## En DartPad (sin instalar nada)

`dartpad_starter.dart` es la misma app en un solo archivo, con paquetes que DartPad permite (flutter_bloc y http). Abre el gist del ejercicio 5 (enlace arriba). Los tests (`flutter test`) no se pueden ejecutar en DartPad.
