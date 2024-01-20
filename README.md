# measurements.dart

Adding measurements to dart! Now you can represent liters, us tablespoons, and more in your dart code!

This package is primarily meant for cooking measurements, especially metric and US Customary, so other units may not be supported for a while.

View this project on [Codeberg](https://codeberg.org/eggnog/measurements) (Main) <br>
View this project on [GitHub](https://github.com/eggnogdev/measurements) (Mirror)

## How to use

This package is written with great inspiration from `duration.dart`. The syntax is very similar. It supports both volume measurements and mass measurements.

### Volume

```dart
final measurement = Volume(liters: 1.5);
print(measurement.inMilliliters); // 1500.0
```

you can even mix and match measurement systems!

```dart
final measurement = Volume(liters: 1.5, usCups: 1);
print(measurement.inMilliliters); // 1736.5882364976
```

and converting to other units is just as easy!

```dart
final measurement = Volume(liters: 1.5);
print(measurement.inUsCups); // 6.3401292566598775
```

### Mass

it works just like `Volume`!

```dart
final measurement = Mass(kilograms: 1);
print(measurement.inGrams); // 1000.0
```

```dart
final measurement = Mass(kilograms: 1);
print(measurement.inUsPounds); // 2.2046224999999997
```

```dart
final measurement = Mass(kilograms: 1, usPounds: 1);
print(measurement.inKilograms); // 1.4535923950699041
```