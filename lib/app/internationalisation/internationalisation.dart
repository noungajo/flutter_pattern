import 'package:get/get.dart';

import 'andaal_en_EN.dart';
import 'andaal_fr_FR.dart';

class Internationalisation extends Translations {
  @override
  Map<String, Map<String, String>> get keys {
    return {'en_EN': andaalEn, 'fr_FR': andaalFr};
  }
}
