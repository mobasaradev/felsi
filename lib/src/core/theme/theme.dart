
import 'package:flutter/material.dart';

import 'src/theme_data.dart';
import 'src/theme_extensions/src/colors.dart';
import 'src/theme_extensions/src/text_styles.dart';

extension $ on BuildContext {
  ThemeData get themeData => $ThemeData()();

  ColorExtension get color => Theme.of(this).extension<ColorExtension>()!;

  TextStyleExtension get textStyle =>
      Theme.of(this).extension<TextStyleExtension>()!;
}
