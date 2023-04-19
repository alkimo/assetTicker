import 'package:asset_variation/data/http/http.dart';
import 'package:asset_variation/data/usecases/usecases.dart';

import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockClient extends Mock implements HttpClient {}

void main() {
  String ticker;
  String? tickerVerificationUrl;
  RemoteFetch? sut;
  MockClient? client;

  setUp((){
    client = MockClient();
    ticker = "PETR4.SA";

    sut = RemoteFetch(httpClient: client!, ticker: ticker);
    tickerVerificationUrl = "https://finance.yahoo.com/quote/$ticker";
  });


  test('RemoteFetch Executing Fetch Executes TickerVerification', () async {
    await sut?.fetch();

    verify(await client?.request(
      url: tickerVerificationUrl!,
      method: 'get'
    ));
  });
}