import '../entities/entities.dart';

import './ticker_validator.dart';

abstract class Fetch implements TickerValidator {
  Future<AssetEntity> fetch();
}