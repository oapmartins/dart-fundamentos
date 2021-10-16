import 'anestesista.dart';
import 'medico.dart';
import 'obstetra.dart';
import 'pediatra.dart';
import 'residente_anestesia.dart';

void main() {
  // Parto
  var medicos = <Medico>[
    ResidenteAnestesia(),
    Pediatra(),
    Obstetra(),
  ];

  // Realizar um parto
  for (var medico in medicos) {
    medico.operar();
  }
}
