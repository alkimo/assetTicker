import 'package:asset_variation/data/http/http.dart';
import 'package:asset_variation/data/usecases/usecases.dart';

import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class HttpClientSpy extends Mock implements HttpClient {}

void main() {
  HttpClient? httpClient;
  String ticker;
  String? url;
  RemoteFetch? sut;

  setUp((){
    httpClient = HttpClientSpy();
    ticker = "PETR4.SA";

    sut = RemoteFetch(httpClient: httpClient!, ticker: ticker);
    url = "https://query2.finance.yahoo.com/v8/finance/chart/$ticker";
  });


  test('Should Call HttpClient With URL With Proper Ticker', () async {
    await sut?.fetch();

    verify(httpClient?.request(
      url: url!,
      method: 'get',
    ));
  });
}