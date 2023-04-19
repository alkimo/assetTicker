import 'package:http/http.dart';

import '../data/http/http.dart';

class HttpAdapter implements HttpClient {
  final Client client;

  HttpAdapter({
    required this.client,
  });

  @override
  Future<dynamic> request({
    required String url,
    required String method,
  }) async {

    final uri = Uri.parse(url);

    if(method == 'get') {
      await client.get(uri);
    } else if (method == 'post') {
      await client.post(uri);
    }
  }
}