import '.. /entities/entities.dart';

abstract class Fetch {
  Future<AssetEntity> fetch({
    required String ticker,
  });
}