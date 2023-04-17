import 'package:faker/faker.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class RemoteFetch {
  final HttpClient httpClient;
  final String url;

  RemoteFetch({
    required this.httpClient,
    required this.url,
  });

  Future<void> fetch() async {
    await httpClient.request(
      url: url,
      method: 'post',
    );
  }
}

abstract class HttpClient {
  Future<void>? request({
    required String url,
    required String method,
  });
}

class HttpClientSpy extends Mock implements HttpClient {}

void main() {
  HttpClient? httpClient;
  String? url;
  RemoteFetch? sut;

  setUp((){
    httpClient = HttpClientSpy();
    url = faker.internet.httpUrl();

    sut = RemoteFetch(httpClient: httpClient!, url: url!);
  });

  test('Should Call HttpClient With Correct URL', () async {

    await sut?.fetch();

    verify(httpClient?.request(
        url: url!,
        method: 'post',
    ));
  });
}