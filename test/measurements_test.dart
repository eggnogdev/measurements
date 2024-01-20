import 'package:measurements/src/measurements_base.dart';
import 'package:test/test.dart';
import 'package:dart_numerics/dart_numerics.dart' show almostEqualNormD;

void main() {
  group('Metric System', () {
    final measurement = Measurement(liters: 1);

    test('inMilliliters', () {
      expect(measurement.inMilliliters, 1000);
    });

    test('inCentiliters', () {
      expect(measurement.inCentiliters, 100);
    });

    test('inDeciliters', () {
      expect(measurement.inDeciliters, 10);
    });

    test('inLiters', () {
      expect(measurement.inLiters, 1);
    });
  });

  group('US Customary', () {
    final measurement = Measurement(usCups: 1);

    test('inUsTeaspoons', () {
      expect(measurement.inUsTeaspoons, 48);
    });

    test('inUsTablespoons', () {
      expect(measurement.inUsTablespoons, 16);
    });

    test('inUsFluidOunces', () {
      expect(measurement.inUsFluidOunces, 8);
    });

    test('inUsCups', () {
      expect(measurement.inUsCups, 1);
    });
  });

  group('US Customary to Metric', () {
    final measurement = Measurement(usCups: 1);

    test('inMilliliters', () {
      expect(
        almostEqual(measurement.inMilliliters, 236.5882),
        isTrue,
      );
    });

    test('inCentiliters', () {
      expect(
        almostEqual(measurement.inCentiliters, 23.65882),
        isTrue,
      );
    });

    test('inDeciliters', () {
      expect(
        almostEqual(measurement.inDeciliters, 2.365882),
        isTrue,
      );
    });

    test('inLiters', () {
      expect(
        almostEqual(measurement.inLiters, 0.2365882),
        isTrue,
      );
    });
  });

  group('Metric to US Customary', () {
    final measurement = Measurement(liters: 1);

    test('inUsTeaspoons', () {
      expect(
        almostEqual(measurement.inUsTeaspoons, 202.8841),
        isTrue,
      );
    });

    test('inUsTablespoons', () {
      expect(
        almostEqual(measurement.inUsTablespoons, 67.62804),
        isTrue,
      );
    });

    test('inUsFluidOunces', () {
      expect(
        almostEqual(measurement.inUsFluidOunces, 33.81402),
        isTrue,
      );
    });

    test('inUsCups', () {
      expect(
        almostEqual(measurement.inUsCups, 4.226753),
        isTrue,
      );
    });
  });
}

bool almostEqual(double x, double y) {
  return almostEqualNormD(x, y, x - y, 0.0001);
}
