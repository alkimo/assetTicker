class AssetEntity {
  String symbol;
  List<double> valuationList;
  List<DateTime> timestampList;

  AssetEntity({
    required this.symbol,
    required this.valuationList,
    required this.timestampList,
  });
}