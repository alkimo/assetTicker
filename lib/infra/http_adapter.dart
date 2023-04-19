import 'package:asset_variation/data/http/http.dart';
import 'package:http/http.dart';

class HttpAdapter implements HttpClient {
  final Client client;

  HttpAdapter({
    required this.client,
  });

  @override
  Future<void> request({
    required String url,
    required String method,
  }) async {
    if(method == 'get') {
      await client.get(Uri.parse(url));
    }
  }
}