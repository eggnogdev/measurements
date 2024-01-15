import 'package:measurements/measurements.dart';
import 'package:measurements/src/units/metric/liter.dart';

export 'units/unit.dart';
export 'units/unit_system.dart';

abstract class Measurement {
  const Measurement({
    required this.value,
    required this.unit,
  });

  /// the value of the measurement, or how many there are
  final double value;

  /// the [Unit] of the measurement
  final Unit unit;

  static Measurement liter(double value) {
    return Liter(value);
  }

  static milliliter(double value) {}

  Measurement convertTo(Unit unit);
}
