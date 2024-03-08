import 'package:analyzer/dart/element/element.dart';

/// Generates boolean checkers for each enum field.
///
/// Returns a [String] containing boolean checkers for each enum field in the specified [element].
String generateCheckers(EnumElement element) {
  final generated = StringBuffer();
  element.fields
      .where((fieldElement) => fieldElement.isEnumConstant)
      .forEach((e) {
    generated.writeln(_generateChecker(fieldElement: e, enumElement: element));
  });
  return generated.toString();
}

/// Generates a boolean checker for the specified [fieldElement] and [enumElement].
///
/// Returns a [String] containing the boolean checker for the given [fieldElement]
/// and [enumElement].
String _generateChecker({
  required FieldElement fieldElement,
  required EnumElement enumElement,
}) {
  var name = fieldElement.name;
  name = name.replaceRange(0, 1, name[0].toUpperCase());
  return 'bool get is$name => this == ${enumElement.name}.${fieldElement.name};';
}
