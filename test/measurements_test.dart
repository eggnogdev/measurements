import 'package:measurements/measurements.dart';
import 'package:test/test.dart';
import 'package:dart_numerics/dart_numerics.dart' show almostEqualNormD;

void main() {
  group('Metric: Volume', () {
    final measurement = Volume(liters: 1);

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

  group('US Customary: Volume', () {
    final measurement = Volume(usCups: 1);

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

  group('US Customary to Metric: Volume', () {
    final measurement = Volume(usCups: 1);

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

  group('Metric to US Customary: Volume', () {
    final measurement = Volume(liters: 1);

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

  group('Metric: Mass', () {
    final measurement = Mass(kilograms: 1);
    test('inMilligrams', () {
      expect(measurement.inMilligrams, 1000000);
    });

    test('inGrams', () {
      expect(measurement.inGrams, 1000);
    });

    test('inKilograms', () {
      expect(measurement.inKilograms, 1);
    });
  });

  group('US Customary: Mass', () {
    final measurement = Mass(usPounds: 1);
    test('inUsOunces', () {
      expect(measurement.inUsOunces, 16);
    });

    test('inUsPounds', () {
      expect(measurement.inUsPounds, 1);
    });
  });

  group('US Customary to Metric: Mass', () {
    final measurement = Mass(usPounds: 1);
    test('inMilligrams', () {
      expect(
        almostEqual(measurement.inMilligrams, 453592.4),
        isTrue,
      );
    });

    test('inGrams', () {
      expect(
        almostEqual(measurement.inGrams, 453.5924),
        isTrue,
      );
    });

    test('inKilograms', () {
      expect(
        almostEqual(measurement.inKilograms, 0.4535924),
        isTrue,
      );
    });
  });
}

bool almostEqual(double x, double y) {
  return almostEqualNormD(x, y, x - y, 0.1);
}
