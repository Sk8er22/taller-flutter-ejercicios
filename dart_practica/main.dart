enum Nivel { bajo, medio, alto }

class Alumno {
  const Alumno({required this.nombre, this.nivel = Nivel.bajo});
  final String nombre;
  final Nivel nivel;
}

String etiqueta(Nivel n) => switch (n) {
      Nivel.bajo => 'Principiante',
      Nivel.medio => 'Intermedio',
      Nivel.alto => 'Avanzado',
    };

// Alternativa: el mismo switch en su forma clásica (sentencia).
String etiquetaClasica(Nivel n) {
  switch (n) {
    case Nivel.bajo:
      return "bajo";
    case Nivel.medio:
      return "medio";
    case Nivel.alto:
      return "alto";
  }
}

void main() {
  final alumnos = [
    const Alumno(nombre: 'Ana'),
    const Alumno(nombre: 'Eva', nivel: Nivel.alto),
  ];
  for (final a in alumnos) {
    print('${a.nombre}: ${etiqueta(a.nivel)}');
    print('${a.nombre}: ${etiquetaClasica(a.nivel)}');
  }
}
