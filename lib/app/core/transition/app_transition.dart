import 'package:get/route_manager.dart';

import 'vi_transition.dart';
import 'en_transition.dart';

class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': en,
        'vi': vi,
      };
}
