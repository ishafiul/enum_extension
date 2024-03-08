/// A library for generating extensions on enumerations.
///
/// This library provides an extension mechanism for enumerations, allowing
/// developers to easily generate code to enhance the functionality of
/// enumeration types.
library enum_extension;

import 'package:build/build.dart';
import 'package:enum_extension/enum_extension.dart';
import 'package:source_gen/source_gen.dart';

export 'src/enum_extension.dart';

/// A builder function for generating enum extensions.
///
/// This builder function is used to generate code extensions for enumerations.
/// It utilizes the [EnumExtension] class from the `enum_extension` package.
Builder enumExtensionGen(BuilderOptions options) {
  return SharedPartBuilder([const EnumExtension()], 'enum');
}
