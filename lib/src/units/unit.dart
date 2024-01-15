import 'package:measurements/src/units/unit_system.dart';

class Unit {
  const Unit._({
    required this.shortForm,
    required this.longForm,
    required this.system,
  });

  /// The short form of the unit (ie. ml)
  final String shortForm;

  /// the long form of the unit (ie. milliliter)
  final String longForm;

  /// the [UnitSystem] this unit belongs to (ie. UnitSystem.metric)
  final UnitSystem system;

  // liter unit
  static const liter = Unit._(
    longForm: 'milliliter',
    shortForm: 'ml',
    system: UnitSystem.metric,
  );
}
