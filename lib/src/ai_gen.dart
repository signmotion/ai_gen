part of '../../ai_gen.dart';

typedef AiGenBuilder<E extends AiGen, O extends AiGenOptions> = E Function(
    O options);

/// Base class for own AI generator.
abstract class AiGen<R extends Object, O extends AiGenOptions> {
  const AiGen({
    AiGenOptions options = const AiGenOptions(),
    this.fake = false,
    this.fakeProvider,
    this.realProvider,
  }) :
        //assert(fake && fakeProvider != null,
        //    'The fake provider should be defined when `fake == true` options.'),
        //assert(!fake && realProvider != null,
        //    'The real provider should be defined when `fake == false` options.'),
        _options = options;

  final AiGenOptions _options;
  O get options => _options as O;
  O get o => options;

  final bool fake;

  final FakeProvider<R>? fakeProvider;
  final RealProvider<R>? realProvider;

  Provider<R> get nothingProvider => NothingProvider<R>();

  R? get next => fake
      ? fakeProvider?.next ?? nothingProvider.next
      : realProvider?.next ?? nothingProvider.next;
}

/// Base class for options of AI generator.
class AiGenOptions {
  const AiGenOptions();
}
