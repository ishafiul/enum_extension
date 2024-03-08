import 'package:analyzer/dart/element/element.dart';

/// Generates the header for the extension.
///
/// Returns a [String] containing the extension header for the specified [element].
String generateExtensionHeader(EnumElement element) {
  return 'extension ${element.name}Ext on ${element.name}{';
}
