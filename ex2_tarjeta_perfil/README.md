# Ejercicio 2 — Tarjeta de perfil (10 min)

[← Contador](../ex1_contador/README.md) · [Índice](../README.md) · [Me gusta →](../ex3_me_gusta/README.md)

**Abrir en DartPad:** https://dartpad.dev/?id=596208b7be33893f36f64fd9b11d2258

Pega `starter.dart` en DartPad.

1. Crea una `Column` con tu nombre y tu puesto.
2. Añade una `Row` con un icono y tu email.
3. Envuelve todo en un `Padding` de 24.

**Extra:** añade un `CircleAvatar` con tus iniciales.

Errores típicos: olvidar la coma final, o usar `child` donde toca `children`.

Solución: [`solution.dart`](solution.dart). En DartPad: https://dartpad.dev/?id=ce379f852211732c2dd385403f10201f

## Chuleta a medias (sin solución)
- `Column` y `Row`: `children: [ … ]`. `Padding`: `padding: EdgeInsets.all(24)` y un solo `child:`.
- `Text('…', style: TextStyle(fontSize: 24))`, `Icon(Icons.email)`, `SizedBox(height: 8)`.
- Extra: `CircleAvatar(child: Text('AG'))`.
- Orden de dentro a fuera: Row, Column, Padding.

[← Contador](../ex1_contador/README.md) · [Índice](../README.md) · [Me gusta →](../ex3_me_gusta/README.md)
