import '../../domain/entities/entities.dart';
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
  Future<AssetEntity> fetch() async {
    await validateTicker();

    final httpResponse = await httpClient.request(
      url: _getApiURL(),
      method: 'get',
    );

    return AssetEntity.fromJson(httpResponse);
  }

  @override
  Future<bool> validateTicker() async {
    final httpResponse = await httpClient.request(
      url: _getTickerValidatorURL(),
      method: 'get',
    );

    final data = httpResponse;

    return data.containsKey('timestamp');
  }

  String _getApiURL(){
    return "https://query2.finance.yahoo.com/v8/finance/chart/$ticker";
  }

  String _getTickerValidatorURL(){
    return "https://finance.yahoo.com/quote/$ticker";
  }
}