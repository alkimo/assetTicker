import 'package:asset_variation/infra/infra.dart';
import 'package:http/http.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:faker/faker.dart';

import 'http_adapter_test.mocks.dart';

@GenerateNiceMocks([MockSpec<Client>()])

void main(){
  MockClient? client;
  HttpAdapter? sut;
  String? url;
  Uri? uri;

  group('GET HTTP verb', (){
    setUp((){
      client = MockClient();
      sut = HttpAdapter(client: client!);
      url = faker.internet.httpUrl();
      uri = Uri.parse(url!);
    });

    test('Should Call Get With Correct Values', () async {
      await sut?.request(url: url!, method: 'get');

      verify(client?.get(uri));
    });
  });
}