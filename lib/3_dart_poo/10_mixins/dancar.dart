import 'artista.dart';

mixin Dancar on Artista {
  String dancar() {
    return 'Dança Forró';
  }

  @override
  String habilidade() {
    return 'Dançar';
  }
}
