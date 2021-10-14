import 'anestesista.dart';

class ResidenteAnestesia extends Anestesista {
  @override
  void operar() {
    print('Junior Anestesista: Limpar os equipamentos');
    super.operar();
  }
}
