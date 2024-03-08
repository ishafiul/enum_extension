/// Represents an annotation for generating enum extensions.
///
/// This annotation is used to trigger the generation of code extensions for enums.
const enumgen = EnumExtensionAnnotation._();

/// Represents an annotation specifying a string value for an enum field.
///
/// This annotation is used to associate a string value with an enum field
/// when generating code extensions.
class EnumExtensionAnnotation {
  const EnumExtensionAnnotation._();
}

/// Represents an annotation specifying a string value for an enum field.
///
/// This annotation is used to associate a string value with an enum field
/// when generating code extensions.
class EnumValue {
  /// Constructs a new [EnumValue] instance.
  ///
  /// The [value] parameter is a required parameter representing the string value.
  const EnumValue({required this.value});

  /// The string value associated with the enum field.
  final String value;
}
