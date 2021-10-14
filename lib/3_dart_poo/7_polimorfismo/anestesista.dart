import 'package:dart_fundamentos/3_dart_poo/7_polimorfismo/medico.dart';

class Anestesista extends Medico {
  @override
  void operar() {
    print('Anestesista: anestesiar a paciente');
  }
}
