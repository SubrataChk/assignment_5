import 'package:assignment_5/src/language/ban.dart';
import 'package:assignment_5/src/language/eng.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Language extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        "en_US": eng,
        "bn_BD": ban,
      };
}
