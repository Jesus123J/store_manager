import 'package:mysql_client/mysql_client.dart';

class DatabaseService {
  static Future<MySQLConnection> connect() async {
    var conn = await MySQLConnection.createConnection(
      host: "127.0.0.1",
      port: 3306,
      userName: "flutter_company",
      password: "1234",
      databaseName: "racoon_brothers",
      secure: false,
    );

    await conn.connect();
    return conn;
  }
}