import 'package:measurements/src/units/unit.dart';

class MeasurementConversionException implements Exception {
  const MeasurementConversionException(this.message);

  MeasurementConversionException.cannotConvert(Unit from, Unit to)
      : this('Cannot convert from $from to $to');

  final String message;

  @override
  String toString() {
    return 'MeasurementConversionException: $message';
  }
}
