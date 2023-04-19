import './ticker_validator.dart';

abstract class Fetch implements TickerValidator {
  Future<void>? fetch() async {}
}