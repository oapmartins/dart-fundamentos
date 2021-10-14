import 'banana.dart';
import 'fruta.dart';
import 'mamifero.dart';

class Macaco extends Mamifero {
  @override
  void comer(Banana fruta) {
    print(fruta.tipo);
  }
}
