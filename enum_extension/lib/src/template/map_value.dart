import 'package:analyzer/dart/element/element.dart';
import 'package:enum_extension_annotation/enum_extension_annotation.dart';
import 'package:source_gen/source_gen.dart';

const _coreChecker = TypeChecker.fromRuntime(EnumValue);

/// Generates the mapping of enum values to their corresponding string representations.
///
/// This function takes an [EnumElement] as a parameter and constructs a
/// mapping of each enum field to its associated string value, as specified
/// by the [@EnumValue] annotation.
/// Returns a string representation of the generated code.
String mapValue({required EnumElement enumElement}) {
  // Initialize the map with the enum values and their string representations.
  var map =
      'static final Map<${enumElement.name}, String> _${enumElement.name.toLowerCase()}Value = {';
  for (final f in enumElement.fields) {
    if (_coreChecker.hasAnnotationOfExact(f)) {
      final value = _coreChecker
          .firstAnnotationOfExact(f)!
          .getField('value')
          ?.toStringValue();
      map += '${enumElement.name}.${f.name}: "$value",';
    }
  }

  // Complete the map declaration and add a getter for accessing the value.
  map += '};';
  map += 'String? get value => _${enumElement.name.toLowerCase()}Value[this];';

  return map;
}
