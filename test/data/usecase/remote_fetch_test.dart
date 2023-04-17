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
    await httpClient.request(url: url);
  }
}

abstract class HttpClient {
  Future<void>? request({
    required String url,
  });
}

class HttpClientSpy extends Mock implements HttpClient {}

void main() {
  test('Should Call HttpClient With Correct URL', () async {
    final httpClient = HttpClientSpy();
    final url = faker.internet.httpUrl();

    final sut = RemoteFetch(httpClient: httpClient, url: url);

    await sut.fetch();

    verify(httpClient.request(url: url));
  });
}