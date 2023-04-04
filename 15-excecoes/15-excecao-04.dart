//
//
//
//

import 'dart:io';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

void main() async {
  final database = await openDatabase(
    join(await getDatabasesPath(), 'exemplo_database.db'),
    onCreate: (db, version) {
      return db.execute(
        'CREATE TABLE usuarios(id INTEGER PRIMARY KEY, nome TEXT, email TEXT)',
      );
    },
    version: 1,
  );

  try {
    await database.transaction((txn) async {
      final batch = txn.batch();
      batch.insert('usuarios',
          {'id': 1, 'nome': 'Fulano', 'email': 'fulano@example.com'});
      batch.insert('usuarios',
          {'id': 2, 'nome': 'Ciclano', 'email': 'ciclano@example.com'});
      await batch.commit();
    });
    final usuarios = await database.query('usuarios');
    print('Usuários encontrados: $usuarios');
  } on DatabaseException catch (e) {
    print('Erro ao acessar o banco de dados: ${e.message}');
  } catch (e) {
    print('Erro inesperado: ${e.toString()}');
  } finally {
    await database.close();
  }
}
