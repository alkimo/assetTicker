import 'package:test/test.dart';

import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'package:asset_variation/data/http/http.dart';
import 'package:asset_variation/data/usecases/usecases.dart';
import './remote_fetch_test.mocks.dart';
import './yahoo_data_map.dart';

@GenerateNiceMocks([MockSpec<HttpClient>()])

void main() {
  String ticker;
  String? url;
  String? tickerVerificationUrl;
  RemoteFetch? sut;
  MockHttpClient? client;

  setUp((){
    client = MockHttpClient();
    ticker = "PETR4.SA";

    sut = RemoteFetch(httpClient: client!, ticker: ticker);
    url = "https://query2.finance.yahoo.com/v8/finance/chart/$ticker";
    tickerVerificationUrl = "https://finance.yahoo.com/quote/$ticker";
  });


  test('RemoteFetch Executing Fetch Executes TickerVerification', () async {
    when(await client!.request(
        url: url,
        method: 'get'
    )).thenAnswer((_) async => yahooDataMap);

    when(await client!.request(
        url: tickerVerificationUrl,
        method: 'get'
    )).thenAnswer((_) async => yahooDataMap);

    await sut?.fetch();

    verify(await client?.request(
      url: tickerVerificationUrl,
      method: 'get'
    ));
  });

}