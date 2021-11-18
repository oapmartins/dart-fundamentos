import 'dart:mirrors';

import 'fazer.dart';
import 'pessoa.dart';

void main() {
  final p1 = Pessoa();
  var instanceMirror = reflect(p1);
  var classMirror = instanceMirror.type;

  classMirror.metadata.forEach((annotation) {
    var instanceAnnotation = annotation.reflectee;
    if (instanceAnnotation is Fazer) {
      print(instanceAnnotation.quem);
    }
  });
}
