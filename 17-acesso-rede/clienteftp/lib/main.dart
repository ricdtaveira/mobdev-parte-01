//
//
//

import 'dart:io';
// ignore: import_of_legacy_library_into_null_safe
import 'package:ftpclient/ftpclient.dart';

main() {
  FTPClient ftpClient =
      FTPClient('172.16.5.169', user: 'guest', pass: '1234');
  ftpClient.connect();
  ftpClient.uploadFile(File('taveira.txt'));
  ftpClient.disconnect();
}
