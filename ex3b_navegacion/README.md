# Ejercicio 3 bis — Navega entre dos pantallas (10 min, opcional)

**Abrir en DartPad:** https://dartpad.dev/?id=31a73e60b1132107aa95a44050416cec

Pega `starter.dart` en DartPad.

1. Crea una `DetailPage` con `Scaffold` y `AppBar`.
2. En `HomePage` añade un botón «Ir al detalle».
3. Al pulsarlo, abre `DetailPage` con `Navigator.push`.
4. En `DetailPage` añade «Volver» con `Navigator.pop`.

**Extra:** pasa tu nombre de una pantalla a la otra y salúdate.

## Chuleta a medias (sin solución)
- `Navigator.push(context, ruta)`: abre una pantalla encima. Los dos datos son obligatorios.
- `MaterialPageRoute(builder: (_) => …)`: la ruta. `builder` es obligatorio y devuelve la pantalla.
- `Navigator.pop(context)`: cierra la actual. El `AppBar` ya pone la flecha atrás.
- Trampa: el botón va dentro de `HomePage`, no directo en `MyApp`. El `context` debe estar por debajo de `MaterialApp`.
- Extra: `final String name;` y `required this.name` en el constructor.

Solución: [`solution.dart`](solution.dart). En DartPad: https://dartpad.dev/?id=b302df7fc4a21683ab6beef32cfbc5e6
