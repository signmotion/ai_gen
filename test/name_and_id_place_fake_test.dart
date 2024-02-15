// ignore_for_file: avoid_print

import 'package:ai_gen/ai_gen.dart';
import 'package:id_gen/id_gen_tests.dart';
import 'package:test/test.dart';

void main() {
  group('AiGen', () {
    test('NameAndIdPlaceFakeAiGen', () {
      const gen = NameAndIdPlaceFakeAiGen();

      final a = gen.next;
      final b = gen.next;

      expect(a.planHid, isNot(equals(b.planHid)));
      expect(a.planHid, isNotEmpty);
      expect(b.planHid, isNotEmpty);

      expect(a.planUid, isNot(equals(b.planUid)));
      expect(a.planUid, isUuidWithPrefix);
      expect(b.planUid, isUuidWithPrefix);

      expect(a.title, isNot(equals(b.title)));
      expect(a.title, isNotEmpty);
      expect(b.title, isNotEmpty);

      expect(a.description, isNot(equals(b.description)));
      expect(a.description, isNotEmpty);
      expect(b.description, isNotEmpty);

      expect(a.predominantColors, isNot(equals(b.predominantColors)));
      expect(a.predominantColors, isNotEmpty);
      expect(b.predominantColors, isNotEmpty);
    });
  });
}
