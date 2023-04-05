//
//
//

import 'package:http/http.dart' as http;

void main() async {
  final response = await http.get(Uri.parse('https://exemplo.com'));
  print(response.body);
}
