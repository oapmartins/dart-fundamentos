import 'package:dart_fundamentos/3_dart_poo/5_heranca_covariant/banana.dart';
import 'package:dart_fundamentos/3_dart_poo/5_heranca_covariant/fruta.dart';
import 'package:dart_fundamentos/3_dart_poo/5_heranca_covariant/humano.dart';
import 'package:dart_fundamentos/3_dart_poo/5_heranca_covariant/macaco.dart';

void main() {
  var humano = Humano();
  humano.comer(Fruta());

  var macaco = Macaco();
  macaco.comer(Banana('Nanica'));
}
