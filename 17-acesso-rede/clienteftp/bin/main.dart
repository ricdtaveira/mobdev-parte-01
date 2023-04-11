// @dart=2.9
//
//

import 'dart:io';
// ignore: import_of_legacy_library_into_null_safe
import 'package:ftpclient/ftpclient.dart';

main() async {
  FTPClient ftpClient = FTPClient('172.16.5.169', user: 'guest', pass: '1234');
  ftpClient.connect();
  await ftpClient.uploadFile(File(
      r'C:\Users\ricdt\OneDrive - IFCE\00-Projetos\2023-Curso Mobile\mobdev-parte-01\17-acesso-rede\clienteftp\lib\taveira.txt'));
  ftpClient.disconnect();
}
