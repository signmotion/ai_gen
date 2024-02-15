part of '../../ai_gen.dart';

typedef AiGenBuilder<E extends AiGen, O extends AiGenOptions> = E Function(
    O options);

/// Base class for own AI generator.
abstract class AiGen<R extends Object?, O extends AiGenOptions> {
  const AiGen(this.options);

  final O options;
  O get o => options;

  R get next;
}

/// Base class for options of AI generator.
class AiGenOptions {
  const AiGenOptions();
}
