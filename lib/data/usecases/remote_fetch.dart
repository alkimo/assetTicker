import 'package:asset_variation/domain/usecases/usecases.dart';

import '../http/http.dart';

class RemoteFetch implements Fetch {
  final HttpClient httpClient;
  final String ticker;

  RemoteFetch({
    required this.httpClient,
    required this.ticker,
  });

  @override
  Future<void> fetch() async {
    await httpClient.request(
      url: _apiURL(),
      method: 'get',
    );
  }

  String _apiURL(){
    return "https://query2.finance.yahoo.com/v8/finance/chart/$ticker";
  }
}