import 'light_color_schema.dart';
import 'light_text_theme.dart';

abstract class ILightTheme {
  LightColorSchema? colorSchema = LightColorSchema.schema;
  LightTextTheme? textColor = LightTextTheme.color;
}
