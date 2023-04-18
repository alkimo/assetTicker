import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'package:asset_variation/data/http/http.dart';
import 'package:asset_variation/domain/usecases/ticker_validator.dart';

class RemoteTickerValidator implements TickerValidator {
  final String ticker;
  final HttpClient httpClient;

  RemoteTickerValidator({
    required this.ticker,
    required this.httpClient,
  });

  @override
  Future<void> validate() async {
    var result = await httpClient.request(url: _getApiURL(ticker:ticker), method: 'get');

  }

  String _getApiURL({required String ticker}){
    return "https://query2.finance.yahoo.com/v8/finance/chart/$ticker";
  }
}
class HttpClientSpy extends Mock implements HttpClient {}

void main() {
  HttpClient? httpClient;
  String? ticker;
  RemoteTickerValidator? sut;

  setUp((){
    ticker = "PETR4.SA";
    httpClient = HttpClientSpy();
    sut = RemoteTickerValidator(ticker: ticker!, httpClient: httpClient!);
  });

  test('Should Validate Ticker By Request', () async {
    await sut?.validate();

  });
}