import 'package:measurements/src/measurements_base.dart';

/// Represents a value of milliliters
///
/// `value` is how many milliliters there are
///
/// This is the "primary" [Measurement] for [UnitSystem.metric]. This means that all
/// conversions within, to, or from [UnitSystem.metric] will go through [Milliliter]
class Milliliter extends Measurement {
  const Milliliter(value)
      : super(
          value: value,
          unit: Unit.milliliter,
        );

  @override
  Measurement convertTo(Unit other) {
    if (other == unit) return this;
    switch (other) {
      case Unit.liter:
        return Liter(value / 1000);
      default:
        throw MeasurementConversionException.cannotConvert(
          unit,
          other,
        );
    }
  }

  @override
  String toString() {
    return 'Milliliter($value)';
  }
}
