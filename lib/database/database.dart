import 'package:ponto_de_venda_flutter/database/migrations/create_users_table.dart';

class Database {
  List<dynamic> run() {
    return [
      CreateUsersTable()
    ];
  }
}
