part of '../../ai_gen.dart';

/// Provides data.
abstract class Provider<R extends Object> {
  const Provider();

  R? get next;
}

/// Provides real data.
abstract class RealProvider<R extends Object> extends Provider<R> {
  const RealProvider();
}

/// Provides fake data.
/// Contains generators and data sets as helpers for constructing data.
/// See [RandomListItem.randomItem], [RandomMapItem.randomEntry].
abstract class FakeProvider<R extends Object> extends Provider<R> {
  const FakeProvider();

  Faker get faker => Faker();

  Map<String, UniColor<int>> get colorMap =>
      UniPalette(PalettesMaps.all).paletteToUniPaletteInt.map;

  Names get genNames => _genNames;
  static final _genNames = Names.bakeries();
}

/// Provides nothing.
class NothingProvider<R extends Object> extends Provider<R> {
  const NothingProvider();

  /// Always returns `null`.
  @override
  R? get next => null;
}
