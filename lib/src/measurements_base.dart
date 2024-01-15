import 'units/metric/liter.dart';
import 'units/metric/milliliter.dart';
import 'units/unit.dart';

export 'units/unit.dart';
export 'units/unit_system.dart';
export 'units/metric/liter.dart';
export 'units/metric/milliliter.dart';
export 'exceptions/measurement_conversion_exception.dart';

/// Base Measurement class that defines all methods and values required by
/// the derivative measurement classes. Can also be used to instantiate the
/// derivative measurement classes.
abstract class Measurement {
  const Measurement({
    required this.value,
    required this.unit,
  });

  /// the value of the measurement, or how many there are
  final double value;

  /// the [Unit] of the measurement
  final Unit unit;

  /// Create a [Liter] object
  static Measurement liter(double value) {
    return Liter(value);
  }

  /// Create a [Milliliter] object
  static Measurement milliliter(double value) {
    return Milliliter(value);
  }

  /// convert from `this` [Unit] to `other` [Unit]
  Measurement convertTo(Unit other);
}
