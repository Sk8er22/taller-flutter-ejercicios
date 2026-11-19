# Ejercicio 3 — Botón de me gusta (10 min)

**Abrir en DartPad:** https://dartpad.dev/?id=b63a20b25c2cbe60bd2f77a2bf96ecb2

Pega `starter.dart` en DartPad.

1. Guarda en el `State` un `bool liked` y un `int likes`.
2. Al tocar el corazón, alterna entre vacío y lleno.
3. Muestra el número de me gusta al lado.

Pista: `liked ? Icons.favorite : Icons.favorite_border`.

**Extra:** cambia el color del corazón según el estado.

Solución: se publicará después del taller.

## Chuleta a medias (sin solución)
- Dos clases: `StatefulWidget` y su `State`. Los datos viven en el State.
- `bool liked = false;` e `int likes = 0;`.
- `setState(() { … })` cambia los datos y redibuja.
- `IconButton(onPressed: …, icon: …)` y ternario `cond ? a : b`.
- Pregunta guía: ¿qué dos valores cambian al tocar?
