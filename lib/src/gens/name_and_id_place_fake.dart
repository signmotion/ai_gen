part of '../../../ai_gen.dart';

typedef NameAndIdPlaceR = ({
  String planHid,
  String planUid,
  String title,
  String description,
  Map<String, String> predominantColors,
});

class NameAndIdPlaceFakeAiGen {
  const NameAndIdPlaceFakeAiGen();

  NameAndIdPlaceR get next {
    final title = _genNames.next.title;
    final numColors = Random().nextInt(5 + 1) + 1;
    final predominantColors = <String, String>{};
    for (var i = 0; i < numColors; ++i) {
      final color = _colorMap.randomEntry;
      predominantColors[color.key] =
          color.value.colorToRgbInt8.intToRgbInt8String;
    }

    return (
      planHid: genHid(title),
      planUid: 'p-$genUuid',
      title: title,
      description: faker.lorem.sentences(6).join(' '),
      predominantColors: predominantColors,
    );
  }

  static final faker = Faker();

  static final _colorMap = const UniColorName().palette.map;
  static final _genNames = Names.bakeries();
}
