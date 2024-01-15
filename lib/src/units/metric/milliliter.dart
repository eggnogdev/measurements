import 'package:measurements/src/measurements_base.dart';

class Milliliter extends Measurement {
  const Milliliter(value)
      : super(
          value: value,
          unit: Unit.milliliter,
        );

  @override
  Measurement convertTo(Unit unit) {
    throw UnimplementedError();
  }
}
