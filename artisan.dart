import 'package:ponto_de_venda_flutter/database/database.dart';

void main(var args) {
  if (args[0] == 'migration') {
    List<dynamic> listOfMigrations = Database().run();

    listOfMigrations.forEach((element) {
      print(element.query);
    });
  }
}
