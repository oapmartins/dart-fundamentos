import 'package:mysql1/mysql1.dart';

class Database {
  Future<MySqlConnection> openConnection() async {
    final settings = ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      password: 'academiadoflutter',
      db: 'desafio_mysql',
    );

    final connection = await MySqlConnection.connect(settings);
    await Future.delayed(Duration(seconds: 1));
    return connection;
  }
}
