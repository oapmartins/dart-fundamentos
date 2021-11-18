import 'pessoa.dart';

extension PessoaSaudacaoExtension on Pessoa {
  String saudacao() {
    return 'Olá $nome, vai um torresmo?';
  }
}
