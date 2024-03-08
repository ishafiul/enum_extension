// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example.dart';

// **************************************************************************
// Generator: EnumExtension
// **************************************************************************

extension MyEnumExt on MyEnum {
  bool get isValue1 => this == MyEnum.value1;
  bool get isValue2 => this == MyEnum.value2;
  bool get isValue3 => this == MyEnum.value3;
  bool get isValue4 => this == MyEnum.value4;
  static final Map<MyEnum, String> _myenumValue = {
    MyEnum.value1: "1",
    MyEnum.value2: "2",
    MyEnum.value3: "3",
    MyEnum.value4: "4",
  };
  String? get value => _myenumValue[this];
}

extension AnimalExt on Animal {
  bool get isCat => this == Animal.cat;
  bool get isDog => this == Animal.dog;
  bool get isFish => this == Animal.fish;
  static final Map<Animal, String> _animalValue = {
    Animal.cat: "cat",
    Animal.dog: "dog",
    Animal.fish: "fish",
  };
  String? get value => _animalValue[this];
}
