//
//

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Aluno {
  int id;
  String nome;
  String dataNascimento;

  Aluno({this.id, this.nome, this.dataNascimento});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'data_nascimento': dataNascimento,
    };
  }
}

class AlunoDatabase {
  static final AlunoDatabase instance = AlunoDatabase._init();

  static Database _database;

  AlunoDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database;

    _database = await _initDB('aluno.db');
    return _database;
  }

  Future<Database> _initDB(String dbName) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, dbName);

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB,
    );
  }

  Future<void> _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE TB_ALUNOS (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nome TEXT NOT NULL,
        data_nascimento TEXT NOT NULL
      )
    ''');
  }

  Future<int> insertAluno(Aluno aluno) async {
    final db = await database;
    return await db.insert('TB_ALUNOS', aluno.toMap());
  }

  Future<Aluno> getAluno(int id) async {
    final db = await database;
    final maps = await db.query(
      'TB_ALUNOS',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isEmpty) return null;

    return Aluno(
      id: maps.first['id'],
      nome: maps.first['nome'],
      dataNascimento: maps.first['data_nascimento'],
    );
  }

  Future<List<Aluno>> getAllAlunos() async {
    final db = await database;
    final maps = await db.query('TB_ALUNOS');

    return List.generate(maps.length, (i) {
      return Aluno(
        id: maps[i]['id'],
        nome: maps[i]['nome'],
        dataNascimento: maps[i]['data_nascimento'],
      );
    });
  }

  Future<int> updateAluno(Aluno aluno) async {
    final db = await database;
    return await db.update(
      'TB_ALUNOS',
      aluno.toMap(),
      where: 'id = ?',
      whereArgs: [aluno.id],
    );
  }

  Future<int> deleteAluno(int id) async {
    final db = await database;
    return await db.delete(
      'TB_ALUNOS',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}

void main() async {
  // Inicializar o banco de dados
  final db = AlunoDatabase.instance;

  // Inserir um aluno
  final aluno = Aluno(nome: 'João', dataNascimento: '2000-01-01');
  int alunoId = await db.insertAluno(aluno);

  // Buscar um aluno pelo ID
  Aluno retrievedAluno = await db.getAluno(alunoId);
  print('Aluno recuperado: $retrievedAluno');

  // Atualizar os dados de um aluno
  retrievedAluno.nome = 'João da Silva';
  await db.updateAluno(retrievedAluno);

  // Buscar todos os alunos
  List<Aluno> alunos = await db.getAllAlunos();
  print('Todos os alunos: $alunos');

  // Deletar um aluno
  await db.deleteAluno(alunoId);
}
