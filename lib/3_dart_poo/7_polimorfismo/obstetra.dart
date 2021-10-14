import 'package:dart_fundamentos/3_dart_poo/7_polimorfismo/medico.dart';

class Obstetra extends Medico {
  @override
  void operar() {
    print('Obstetra: preparar o paciente, cuidar do bebe');
  }
}
