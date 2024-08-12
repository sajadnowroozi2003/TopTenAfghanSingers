import 'package:flutter/material.dart';

class MenuItems {
  static const String share = 'اشتراک گذاری';
  static const String about = 'درباره ما';
  static const String exit = 'خروج';

  static const List<String> choic = <String>[share, about, exit];

  static const Map<String, IconData> choiceIcons = <String, IconData>{
    share: Icons.share,
    about: Icons.info_outline,
    exit: Icons.exit_to_app,
  };
}
