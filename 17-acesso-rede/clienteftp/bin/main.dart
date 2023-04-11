// @dart=2.9
//
//

import 'dart:io';
// ignore: import_of_legacy_library_into_null_safe
import 'package:ftpclient/ftpclient.dart';

main() {
  FTPClient ftpClient = FTPClient('127.0.0.1:21', user: 'guest', pass: '1234');
  ftpClient.connect();
  ftpClient.uploadFile(File('taveira.txt'));
  ftpClient.disconnect();
}
