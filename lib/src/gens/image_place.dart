part of '../../../ai_gen.dart';

class ImagePlaceAiGen extends AiGen<Future<Image>, AiGenOptions> {
  const ImagePlaceAiGen({super.fake})
      : super(
          fakeProvider: const ImagePlaceFakeProvider(),
          realProvider: const ImagePlaceRealProvider(),
        );
}

class ImagePlaceFakeProvider extends FakeProvider<Future<Image>> {
  const ImagePlaceFakeProvider();

  @override
  Future<Image> get next => genImages.next;
}

class ImagePlaceRealProvider extends RealProvider<Future<Image>> {
  const ImagePlaceRealProvider();

  @override
  Future<Image> get next =>
      throw UnimplementedError(StackTrace.current.toString());
}
