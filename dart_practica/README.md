# Ejercicio 0 — Dart: clase, enum, switch y for

[Índice](../README.md) · [Contador →](../ex1_contador/README.md)

**Abrir en DartPad:** https://dartpad.dev/?id=184edbcdd3f65451cfce5a753b7ff771

Es un ejemplo terminado: léelo y ejecútalo. El código está en [`main.dart`](main.dart).

- `enum Nivel`: un enum con tres valores (`bajo`, `medio`, `alto`).
- `class Alumno`: campos `final` y un constructor `const` con parámetros con nombre. `nombre` es obligatorio (`required`) y `nivel` vale `Nivel.bajo` por defecto.
- `etiqueta`: un `switch` en forma de expresión, que devuelve un texto por cada nivel (`Nivel.bajo => 'Principiante'`, …).
- `etiquetaClasica`: el mismo `switch` en su forma clásica (sentencia), con `case` y `return`.
- `main`: crea dos alumnos (Ana, con el nivel por defecto, y Eva, con `Nivel.alto`), los recorre con `for (final a in alumnos)` e imprime las dos etiquetas de cada uno con `print('${a.nombre}: …')`.

[Índice](../README.md) · [Contador →](../ex1_contador/README.md)
