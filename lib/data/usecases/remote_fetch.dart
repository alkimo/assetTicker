import '../http/http.dart';

class RemoteFetch {
  final HttpClient httpClient;
  final String ticker;

  RemoteFetch({
    required this.httpClient,
    required this.ticker,
  });

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