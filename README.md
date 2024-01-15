# measurements.dart

Adding measurements to dart! Now you can represent liters, tablespoons, and more in your dart code!

This package is primarily meant for cooking measurements, so certain units such as distances (meters, miles, etc.) may not be supported for a while

## How to use

Each unit has its own class which can be called in such a manner

```dart
final liters = Liter(2.5);
```

If you are unaware of what measurements are supported, you can look at the static methods on the `Measurement` class. You can also use this syntax if you prefer it since it does the exact same as the above syntax.

```dart
final liters = Measurement.liter(2.5);
```

You can also easily convert between units within the same `UnitSystem` as well as across systems!

```dart
final millis = liters.convertTo(Unit.milliliters);
final cups = liters.convertTo(Unit.cupsUS);
```