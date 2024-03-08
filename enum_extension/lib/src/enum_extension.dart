import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:enum_extension/src/enum_extension_generator.dart';
import 'package:enum_extension_annotation/enum_extension_annotation.dart';
import 'package:source_gen/source_gen.dart';

/// A generator class for creating enum extensions based on annotations.
///
/// This class extends [GeneratorForAnnotation] and is
/// responsible for generating
/// code extensions when the [@EnumExtensionAnnotation] annotation is used.
class EnumExtension extends GeneratorForAnnotation<EnumExtensionAnnotation> {
  /// Constructs a new [EnumExtension] instance.
  const EnumExtension();

  /// Generates code for the annotated element.
  ///
  /// The [element] parameter represents the annotated element, and the
  /// [annotation] parameter provides access to the annotation data.
  /// The [buildStep] parameter represents the build step.
  @override
  Future<String> generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    if (element.kind == ElementKind.ENUM && element is EnumElement) {
      return EnumExtensionGenerator(enumElement: element).generate();
    } else {
      throw InvalidGenerationSourceError(
        '''@generate can only be applied on enum types. Instead, you are trying to use it on a ${element.kind} ${element.name}.''',
        element: element,
      );
    }
  }
}
