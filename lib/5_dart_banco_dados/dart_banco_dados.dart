import 'package:dart_fundamentos/5_dart_banco_dados/database.dart';

Future<void> main() async {
  final database = Database();
  var mySqlConnection = await database.openConnection();

  // Insert
  // await mySqlConnection.query(
  //   'insert into aluno values(?,?)',
  //   [null, 'Octavio Augusto'],
  // );

  // Update
  // await mySqlConnection.query(
  //   "update aluno set nome =? where id = ?",
  //   ['Octávio Augusto Martins', 4],
  // );

  // Consulta todos resultado.
  // final retornoSelect = await mySqlConnection.query('Select * from aluno');
  // retornoSelect.forEach((row) {
  //   print("ID: ${row['id']}");
  //   print("Nome: ${row['nome']}");
  // });

  // Consulta resultado unico
  final retornoSelectUnico = await mySqlConnection.query(
    'select * from aluno where id = ?',
    [1],
  );

  if (retornoSelectUnico.isNotEmpty) {
    var rowUnico = retornoSelectUnico.first;
    print("ID: ${rowUnico['id']}");
    print("Nome: ${rowUnico['nome']}");
  }
}
