part of '../../ai_gen.dart';

abstract class Provider<R extends Object> {
  const Provider();

  R? get next;
}

abstract class RealProvider<R extends Object> extends Provider<R> {
  const RealProvider();
}

abstract class FakeProvider<R extends Object> extends Provider<R> {
  const FakeProvider();

  Faker get faker => Faker();

  Map<String, UniColor> get colorMap => const UniColorName().palette.map;

  Names get genNames => _genNames;
  static final _genNames = Names.bakeries();
}

/// Always returns `null`.
class NothingProvider<R extends Object> extends Provider<R> {
  const NothingProvider();

  @override
  R? get next => null;
}
