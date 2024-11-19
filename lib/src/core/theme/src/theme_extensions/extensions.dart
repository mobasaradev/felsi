import 'src/colors.dart';
import 'src/text_styles.dart';

mixin ThemeExtensions {
  final ColorExtension color = const ColorExtension();
  final TextStyleExtension textStyle = const TextStyleExtension(ColorExtension());
}