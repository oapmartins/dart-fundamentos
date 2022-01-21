import 'package:dart_fundamentos/5_dart_banco_dados/database.dart';

void main() async {
  var database = Database();
  var conn = await database.openConnection();

  await conn.transaction((_) async {
    final result = await conn.query('select * from conta_corrente');
    print("Meu saldo é: ${result.first['saldo']}");

    await conn.query(
      'update conta_corrente set saldo = ? where id = ?',
      [100, 1],
    );

    await conn.query('insert into tira_dinheiro values(?, ?)', [
      null,
      DateTime.now().toIso8601String(),
    ]);
  });

  final result = await conn.query('select * from conta_corrente');
  print("Meu saldo é: ${result.first['saldo']}");
}
