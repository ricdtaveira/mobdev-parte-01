 
import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_router/shelf_router.dart';

class Aluno {
  final int id;
  final String nome;
  final double nota1;
  final double nota2;
  final int faltas;

  Aluno({
    required this.id,
    required this.nome,
    required this.nota1,
    required this.nota2,
    required this.faltas,
  });

  double get media => (nota1 + nota2) / 2;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nome': nome,
      'nota1': nota1,
      'nota2': nota2,
      'faltas': faltas,
      'media': media,
    };
  }
}

final List<Aluno> alunos = [
  Aluno(
    id: 1,
    nome: 'Ana Silva',
    nota1: 8.5,
    nota2: 9.0,
    faltas: 2,
  ),
  Aluno(
    id: 2,
    nome: 'Bruno Oliveira',
    nota1: 7.0,
    nota2: 6.5,
    faltas: 5,
  ),
  Aluno(
    id: 3,
    nome: 'Carla Santos',
    nota1: 9.5,
    nota2: 9.0,
    faltas: 1,
  ),
  Aluno(
    id: 4,
    nome: 'Daniel Costa',
    nota1: 5.5,
    nota2: 6.0,
    faltas: 8,
  ),
];

Response jsonResponse(
  int statusCode,
  dynamic data,
) {
  return Response(
    statusCode,
    body: jsonEncode(data),
    headers: {
      HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
    },
  );
}

Router createRouter() {
  final router = Router();

  router.get('/', (Request request) {
    return jsonResponse(200, {
      'mensagem': 'API de alunos funcionando',
      'rotas': [
        'GET /alunos',
        'GET /alunos/{id}',
      ],
    });
  });

  router.get('/alunos', (Request request) {
    return jsonResponse(
      200,
      alunos.map((aluno) => aluno.toJson()).toList(),
    );
  });

  router.get('/alunos/<id|[0-9]+>', (Request request, String id) {
    final alunoId = int.tryParse(id);

    if (alunoId == null) {
      return jsonResponse(400, {
        'erro': 'O id deve ser um número inteiro.',
      });
    }

    final aluno = alunos.cast<Aluno?>().firstWhere(
          (item) => item?.id == alunoId,
          orElse: () => null,
        );

    if (aluno == null) {
      return jsonResponse(404, {
        'erro': 'Aluno não encontrado.',
        'id': alunoId,
      });
    }

    return jsonResponse(200, aluno.toJson());
  });

  return router;
}

Future<void> main() async {
  final router = createRouter();

  final handler = Pipeline()
      .addMiddleware(logRequests())
      .addHandler(router.call);

  final server = await shelf_io.serve(
    handler,
    InternetAddress.anyIPv4,
    8080,
  );

  print('Servidor iniciado em http://${server.address.host}:${server.port}');
}

