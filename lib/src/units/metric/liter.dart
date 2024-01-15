import 'package:measurements/src/measurements_base.dart';

/// Represents a value of liters
///
/// `value` is how many liters there are
class Liter extends Measurement {
  const Liter(double value)
      : super(
          value: value,
          unit: Unit.liter,
        );

  @override
  Measurement convertTo(Unit other) {
    if (other == unit) return this;
    switch (other) {
      case Unit.milliliter:
        return Milliliter(value * 1000);
      default:
        throw MeasurementConversionException.cannotConvert(
          unit,
          other,
        );
    }
  }

  @override
  String toString() {
    return 'Liter($value)';
  }
}
