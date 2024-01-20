class Measurement {
  const Measurement({
    double milliliters = 0,
    double centiliters = 0,
    double deciliters = 0,
    double liters = 0,
    double usTeaspoons = 0,
    double usTablespoons = 0,
    double usFluidOunces = 0,
    double usCups = 0,
  }) : this._milliliters(
          milliliters +
              millilitersPerCentiliter * centiliters +
              millilitersPerDeciliter * deciliters +
              millilitersPerLiter * liters +
              millilitersPerUsTeaspoon * usTeaspoons +
              millilitersPerUsTablespoon * usTablespoons +
              millilitersPerUsFluidOunce * usFluidOunces +
              millilitersPerUsCup * usCups,
        );

  /// the number of milliliters per centiliter
  static const millilitersPerCentiliter = 10;

  /// the number of centiliters per deciliter
  static const centilitersPerDeciliter = 10;

  /// the number of deciliters per liter
  static const decilitersPerLiter = 10;

  /// the number of milliliters per deciliter
  static const millilitersPerDeciliter =
      millilitersPerCentiliter * centilitersPerDeciliter;

  /// the number of milliliters per liter
  static const millilitersPerLiter =
      millilitersPerCentiliter * centilitersPerDeciliter * decilitersPerLiter;

  /// the number of centiliters per liter
  static const centilitersPerLiter =
      centilitersPerDeciliter * decilitersPerLiter;

  /// the number of US teaspoons per table spoon
  static const usTeaspoonsPerUsTablespoon = 3;

  /// the number of US tablespoons per fluid ounce
  static const usTablespoonsPerUsFluidOunce = 2;

  /// the number of US fluid ounces per cup
  static const usFluidOuncesPerUsCup = 8;

  /// the number of milliliters per US teaspoon
  static const millilitersPerUsTeaspoon = 4.9289215937;

  /// the number of milliliters per US tablespoon
  static const millilitersPerUsTablespoon =
      millilitersPerUsTeaspoon * usTeaspoonsPerUsTablespoon;

  /// the number of milliliters per US fluid ounce
  static const millilitersPerUsFluidOunce =
      millilitersPerUsTablespoon * usTablespoonsPerUsFluidOunce;

  /// the number of milliliters per US cup
  static const millilitersPerUsCup =
      millilitersPerUsFluidOunce * usFluidOuncesPerUsCup;

  double get inMilliliters => _measurement;
  double get inCentiliters => _measurement / millilitersPerCentiliter;
  double get inDeciliters => _measurement / millilitersPerDeciliter;
  double get inLiters => _measurement / millilitersPerLiter;
  double get inUsTeaspoons => _measurement / millilitersPerUsTeaspoon;
  double get inUsTablespoons => _measurement / millilitersPerUsTablespoon;
  double get inUsFluidOunces => _measurement / millilitersPerUsFluidOunce;
  double get inUsCups => _measurement / millilitersPerUsCup;

  /// the total milliliters
  final double _measurement;

  const Measurement._milliliters(double measurement)
      : _measurement = measurement;
}
