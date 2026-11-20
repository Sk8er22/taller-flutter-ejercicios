# Ejercicio 6: fork del template, retos de interfaz (15 min)

Repo del ejercicio: https://github.com/Sk8er22/flutter-template-taller

1. Haz tu fork: https://github.com/Sk8er22/flutter-template-taller/fork
2. `git clone https://github.com/TU_USUARIO/flutter-template-taller.git` y `cd flutter-template-taller`.
3. `fvm install`, `flutter pub get`, `dart run build_runner build --delete-conflicting-outputs`.
4. Crea tu clave gratis de NewsAPI: https://newsapi.org/register
5. `flutter run -d chrome -t lib/main_qa.dart --dart-define=NEWS_API_KEY=TU_CLAVE`.

Sin tu clave, la app usa una compartida que puede agotarse durante el taller (la lista de artículos muestra un error); los retos de interfaz se pueden hacer igual.

## Retos
1. Cambia el color del tema.
2. Cambia un texto desde `app_en.arb` (nunca en los archivos generados).
3. Abre un Widget Preview de una pantalla (verifica que tu versión de Flutter lo soporta).

Bonus: cambia el icono principal o añade un botón.

Los retos de datos (endpoint, error, campo nuevo) se practican antes, en el ejercicio 5 (`ex5_pokedex`).

Si el fork no arranca: haz el extra del 4 (`ex4_lista_local`) o del 5 (`ex5_pokedex`) en DartPad.

## Solución

En [`solucion/`](solucion) hay un parche por reto. Desde la raíz de tu fork, sobre el código original, aplica uno con `git apply solucion/0001-….patch` (usa el nombre completo del archivo y ajusta la ruta a donde lo guardaste). `git apply` cambia los archivos sin hacer commit, y `git apply -R` con el mismo archivo lo deshace.

1. [`0001-…`](solucion/0001-Reto-1-cambia-el-color-principal-del-tema-a-verde-az.patch): cambia el color principal del tema a verde azulado (`app_colors.dart`).
2. [`0002-…`](solucion/0002-Reto-2-cambia-el-t-tulo-de-la-pantalla-principal-des.patch): cambia el texto `appTitle` de `app_en.arb` a «Taller Flutter», el título de la pantalla principal.
3. [`0003-…`](solucion/0003-Reto-3-a-ade-una-segunda-Widget-Preview-de-ejemplo.patch): añade un segundo Widget Preview, de `DSLoadingIndicator`. Ábrelos con `flutter widget-preview start`.
4. [`0004-…`](solucion/0004-Reto-4-bonus-cambia-el-icono-de-ajustes-de-la-barra-.patch): bonus, cambia el icono de ajustes de la barra superior (`Icons.settings` pasa a `Icons.tune`).
