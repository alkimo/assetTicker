import 'package:asset_variation/data/http/http.dart';
import 'package:asset_variation/data/usecases/usecases.dart';

import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockClient extends Mock implements HttpClient {}

void main() {
  String ticker;
  String? quoteUrl;
  RemoteFetch? sut;
  MockClient? client;

  setUp((){
    client = MockClient();
    ticker = "PETR4.SA";

    sut = RemoteFetch(httpClient: client!, ticker: ticker);
    quoteUrl = "https://finance.yahoo.com/quote/$ticker";
  });


  test('Should Call TickerValidator With Proper Ticker', () async {
    await sut?.fetch();

    verify(await client?.request(
      url: quoteUrl!,
      method: 'get'
    ));
  });
}