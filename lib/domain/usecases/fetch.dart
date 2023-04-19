import 'package:asset_variation/domain/usecases/ticker_validator.dart';

import './usecases.dart';

abstract class Fetch implements TickerValidator {
  Future<void>? fetch() async {}
}