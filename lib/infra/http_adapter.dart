import 'package:http/http.dart';

class HttpAdapter {
  final Client client;

  HttpAdapter({
    required this.client,
  });

  Future<void> request({
    required String url,
    required String method,
  }) async {
    if(method == 'get') {
      await client.get(Uri.parse(url));
    }
  }
}