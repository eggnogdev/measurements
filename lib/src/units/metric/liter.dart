import 'package:measurements/measurements.dart';

class Liter extends Measurement {
  const Liter(double value)
      : super(
          value: value,
          unit: Unit.liter,
        );

  @override
  Measurement convertTo(Unit unit) {
    // TODO: implement convertTo
    throw UnimplementedError();
  }
}
