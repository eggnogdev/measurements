import 'package:measurements/measurements.dart';

export 'models/units/unit.dart';
export 'models/units/unit_system.dart';

class Measurement {
  const Measurement._({
    required this.value,
    required this.unit,
  });

  final double value;
  final Unit unit;

  factory Measurement.liter(double value) {
    return Measurement._(
      value: value,
      unit: Unit.liter,
    );
  }
}
