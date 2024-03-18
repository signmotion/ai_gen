import 'package:id_gen/id_gen.dart';

/// Generate Human ID.
String genHid(String s) => _genHid.get(s);

const _genHid = HumanIdGen(
  options: HumanIdGenOptions(
    separator: '_',
    lowerCase: true,
  ),
);
