import 'package:analyzer/dart/element/element.dart';
import 'package:enum_extension/src/template/map_value.dart';
import 'package:enum_extension/src/template/utils/end_of_extention.dart';
import 'package:enum_extension/src/template/utils/extension_header.dart';
import 'package:enum_extension/src/template/utils/field_checker.dart';

/// A generator class for creating extensions on enumerations.
///
/// This class generates code extensions for a
/// specified enumeration [enumElement].
/// It includes methods for generating the extension header, field checkers,
/// mapping values, and the end of the extension.
class EnumExtensionGenerator {
  /// Constructs a new [EnumExtensionGenerator] instance.
  ///
  /// The [enumElement] parameter is required and represents the enumeration
  /// for which the extension is being generated.
  EnumExtensionGenerator({required this.enumElement})
      : assert(
          enumElement.kind == ElementKind.ENUM,
          '${enumElement.kind} is not an enum',
        );

  /// The enumeration element for which the extension is being generated.
  final EnumElement enumElement;

  /// Generates the extension code for the specified enumeration.
  ///
  /// Returns a [Future] with the generated code as a [String].
  Future<String> generate() async {
    final generated = StringBuffer()
      ..write(generateExtensionHeader(enumElement))
      ..write(generateCheckers(enumElement))
      ..writeln(mapValue(enumElement: enumElement))
      ..write(generateExtensionBottom());
    return generated.toString();
  }
}
