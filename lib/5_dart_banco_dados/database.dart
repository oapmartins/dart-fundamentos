import 'package:mysql1/mysql1.dart';

class Database {
  Future<MySqlConnection> openConnection() async {
    final settings = ConnectionSettings(
      host: '192.168.0.9',
      port: 3306,
      user: 'root',
      password: '447466',
      db: 'dart_mysql',
    );

    return MySqlConnection.connect(settings);
  }
}
