import 'package:dart_fundamentos/3_dart_poo/5_heranca_covariant/banana.dart';
import 'package:dart_fundamentos/3_dart_poo/5_heranca_covariant/fruta.dart';
import 'package:dart_fundamentos/3_dart_poo/5_heranca_covariant/mamifero.dart';

class Macaco extends Mamifero {
  @override
  void comer(Banana fruta) {
    print(fruta.tipo);
  }
}
