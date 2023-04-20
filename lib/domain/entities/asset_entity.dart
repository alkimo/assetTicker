class AssetEntity {
  String symbol;
  List<double?> valuationList;
  List<int> timeStampList;

  AssetEntity({
    required this.symbol,
    required this.valuationList,
    required this.timeStampList,
  });

  factory AssetEntity.fromJson(Map json) => AssetEntity(
        symbol: json['chart']['result'].first['meta']['symbol'],
        valuationList: json['chart']['result'].first['indicators']['quote'].first['close'],
        timeStampList: json['chart']['result'].first['timestamp'],
  );
}
