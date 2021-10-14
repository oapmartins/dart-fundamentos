import 'package:dart_fundamentos/3_dart_poo/7_polimorfismo/anestesista.dart';

class ResidenteAnestesia extends Anestesista {
  @override
  void operar() {
    print('Junior Anestesista: Limpar os equipamentos');
    super.operar();
  }
}
