import 'package:asset_variation/infra/infra.dart';
import 'package:http/http.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'http_adapter_test.mocks.dart';

@GenerateNiceMocks([MockSpec<Client>()])

void main(){
  group('GET HTTP verb', (){
    MockClient? client;
    HttpAdapter? sut;
    String? url;
    Uri? uri;

    setUp((){
      client = MockClient();
      sut = HttpAdapter(client: client!);
      url = "https://query2.finance.yahoo.com/v8/finance/chart/PETR4.SA";
      uri = Uri.parse(url!);
    });

    test('Should Call Get With Correct Values', () async {
      await sut?.request(url: url!, method: 'get');

      verify(client?.get(uri));
    });
  });
}