import 'package:dart_fundamentos/3_dart_poo/10_mixins/artista.dart';
import 'package:dart_fundamentos/3_dart_poo/10_mixins/cantar.dart';
import 'package:dart_fundamentos/3_dart_poo/10_mixins/dancar.dart';

class Joao extends Artista with Dancar, Cantar {}
