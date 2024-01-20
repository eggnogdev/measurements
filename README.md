# measurements.dart

Adding measurements to dart! Now you can represent liters, us tablespoons, and more in your dart code!

This package is primarily meant for cooking measurements, especially metric and US Customary, so other units may not be supported for a while.

## How to use

This library is written with great inspiration from `duration.dart`. The syntax is very similar.

```dart
final measurement = Measurement(liters: 1.5);
print(measurement.inMilliliters); // 1500.0
```

you can even mix and match measurement systems!

```dart
final measurement = Measurement(liters: 1.5, usCups: 1);
print(measurement.inMilliliters); // 1736.5882364976
```

and converting to other units is just as easy!

```dart
final measurement = Measurement(liters: 1.5);
print(measurement.inUsCups); // 6.3401292566598775
```
