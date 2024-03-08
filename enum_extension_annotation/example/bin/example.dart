import 'package:enum_extension_annotation/enum_extension_annotation.dart';
import 'package:example/example.dart' as example;

part 'example.g.dart';

void main(List<String> arguments) {
  final myEnum = MyEnum.value3;
  print(myEnum.isValue1); // false
  print(myEnum.value); // 3

  final animal = Animal.dog;

  print(animal.isCat); // false
  print(animal.value); // dog
}

@enumgen
enum MyEnum {
  @EnumValue(value: '1')
  value1,
  @EnumValue(value: "2")
  value2,
  @EnumValue(value: '3')
  value3,
  @EnumValue(value: '4')
  value4,
}

/// enum for animals
@enumgen
enum Animal {
  @EnumValue(value: 'cat')
  cat,
  @EnumValue(value: 'dog')
  dog,
  @EnumValue(value: 'fish')
  fish,
}
