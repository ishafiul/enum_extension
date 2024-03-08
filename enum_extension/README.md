<p align="center">
  <img src="https://pub-025eba96160d45eb8b4d209ff55bfdc6.r2.dev/Enum%20Extension.png" alt="loadmore_data demo" />
</p>

# Enum Extension

[![Pub](https://img.shields.io/pub/v/enum_extension.svg)](https://pub.dartlang.org/packages/enum_extension)
[![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.svg?v=102)](https://opensource.org/licenses/MIT)
[![License](https://img.shields.io/badge/license-MIT-orange.svg)](https://github.com/ionicfirebaseapp/getwidget/blob/master/LICENSE)

enum_extension is an enum extension generator designed to enhance your simple enums

## Install

To use enum_extension, you will need your build_runner setup.
First, install build_runner and then install enum_extension by adding them to your `pubspec.yaml`
file:

For a Flutter project:

``` console
flutter pub add enum_extension
flutter pub add dev:build_runner
flutter pub add dev:enum_extension_annotation
```

For a Dart project:

``` console
dart pub add enum_extension
dart pub add dev:build_runner
dart pub add dev:enum_extension_annotation

```

## Run the generator

To run the code generator, execute the following command:

```
dart run build_runner build
```

## Creating a Enum using enum_extension

Here is a typical enum_extension enum:

``` dart
part 'main.g.dart';

@enumgen
enum Animal {
  @EnumValue(value: 'cat')
  cat,
  @EnumValue(value: 'dog')
  dog,
  @EnumValue(value: 'fish')
  fish,
}

```

## Usage

``` dart
import 'package:enum_extension_annotation/enum_extension_annotation.dart';

part 'main.g.dart';

void main() {
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


```