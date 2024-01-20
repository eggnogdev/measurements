class Mass {
  const Mass({
    double milligrams = 0,
    double grams = 0,
    double kilograms = 0,
    double usOunces = 0,
    double usPounds = 0,
  }) : this._milligrams(
          milligrams +
              milligramsPerGram * grams +
              milligramsPerKilogram * kilograms +
              milligramsPerUsOunce * usOunces +
              milligramsPerUsPound * usPounds,
        );

  /// the number of milligrams per gram
  static const milligramsPerGram = 1000;

  /// the number of grams per kilogram
  static const gramsPerKilogram = 1000;

  /// the number of milligrams per kilogram
  static const milligramsPerKilogram = milligramsPerGram * gramsPerKilogram;

  /// the number of US Ounces per US Pound
  static const usOuncesPerUsPound = 16;

  /// the number of milligrams per US Ounce
  static const milligramsPerUsOunce = 28349.524691869016124;

  /// the number of milligrams per US Pound
  static const milligramsPerUsPound = milligramsPerUsOunce * usOuncesPerUsPound;

  /// this [Mass] total measurement as milligrams
  double get inMilligrams => _measurement;

  /// this [Mass] total measurement as grams
  double get inGrams => _measurement / milligramsPerGram;

  /// this [Mass] total measurement as kilograms
  double get inKilograms => _measurement / milligramsPerKilogram;

  /// this [Mass] total measurement as US Ounces
  double get inUsOunces => _measurement / milligramsPerUsOunce;

  /// this [Mass] total measurement as US Pounds
  double get inUsPounds => _measurement / milligramsPerUsPound;

  /// this [Mass] total milligrams
  final double _measurement;

  const Mass._milligrams(double measurement) : _measurement = measurement;
}
