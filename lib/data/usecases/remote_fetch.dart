import '../../domain/usecases/usecases.dart';

import '../http/http.dart';

class RemoteFetch implements Fetch {
  final HttpClient httpClient;
  final String ticker;

  RemoteFetch({
    required this.httpClient,
    required this.ticker,
  });

  @override
  Future<void>? fetch() async {
    validateTicker();

    await httpClient.request(
      url: _getApiURL(),
      method: 'get',
    );
  }

  @override
  Future<void>? validateTicker() async {
    await httpClient.request(
      url: _getTickerValidatorURL(),
      method: 'get',
    );
  }

  String _getApiURL(){
    return "https://query2.finance.yahoo.com/v8/finance/chart/$ticker";
  }

  String _getTickerValidatorURL(){
    return "https://finance.yahoo.com/quote/$ticker";
  }
}