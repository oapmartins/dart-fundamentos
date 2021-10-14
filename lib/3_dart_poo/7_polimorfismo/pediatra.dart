import 'package:dart_fundamentos/3_dart_poo/7_polimorfismo/medico.dart';

class Pediatra extends Medico {
  @override
  void operar() {
    print('Pediatra: examinar a criança no pós parto');
  }
}
