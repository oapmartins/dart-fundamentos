import 'banana.dart';
import 'fruta.dart';
import 'humano.dart';
import 'macaco.dart';

void main() {
  var humano = Humano();
  humano.comer(Fruta());

  var macaco = Macaco();
  macaco.comer(Banana('Nanica'));
}
