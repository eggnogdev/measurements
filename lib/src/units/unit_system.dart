/// Represets a unit system
///
/// ie. US Customary, Metric
class UnitSystem {
  const UnitSystem._(this.name);

  /// name of the system (ie. Metric)
  final String name;

  /// metric system
  static const metric = UnitSystem._('Metric');

  /// US Customary system
  static const usCustomary = UnitSystem._('US Customary');

  @override
  String toString() {
    return name;
  }

  @override
  operator ==(Object other) {
    if (other is UnitSystem) {
      return name == other.name;
    } else {
      return false;
    }
  }

  @override
  int get hashCode => name.hashCode;
}
