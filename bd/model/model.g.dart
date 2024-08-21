// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HealthDataAdapter extends TypeAdapter<HealthData> {
  @override
  final int typeId = 6;

  @override
  HealthData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HealthData(
      bloodSugerLevel: fields[0] as int,
      bloodFatLevel: fields[1] as int,
      bloodPreserLevel: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, HealthData obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.bloodSugerLevel)
      ..writeByte(1)
      ..write(obj.bloodFatLevel)
      ..writeByte(2)
      ..write(obj.bloodPreserLevel);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HealthDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CurrentNutrientLevelAdapter extends TypeAdapter<CurrentNutrientLevel> {
  @override
  final int typeId = 5;

  @override
  CurrentNutrientLevel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CurrentNutrientLevel(
      charbohydrate: fields[0] as int,
      fat: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, CurrentNutrientLevel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.charbohydrate)
      ..writeByte(1)
      ..write(obj.fat);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CurrentNutrientLevelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class BreakFastAdapter extends TypeAdapter<BreakFast> {
  @override
  final int typeId = 1;

  @override
  BreakFast read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BreakFast(
      name: fields[0] as String,
      prize: fields[1] as int,
      Charbohydrate: fields[2] as int,
      fat: fields[3] as int,
      protein: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, BreakFast obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.prize)
      ..writeByte(2)
      ..write(obj.Charbohydrate)
      ..writeByte(3)
      ..write(obj.fat)
      ..writeByte(4)
      ..write(obj.protein);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BreakFastAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class LunchAdapter extends TypeAdapter<Lunch> {
  @override
  final int typeId = 2;

  @override
  Lunch read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Lunch(
      name: fields[0] as String,
      prize: fields[1] as int,
      Charbohydrate: fields[2] as int,
      fat: fields[3] as int,
      protein: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Lunch obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.prize)
      ..writeByte(2)
      ..write(obj.Charbohydrate)
      ..writeByte(3)
      ..write(obj.fat)
      ..writeByte(4)
      ..write(obj.protein);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LunchAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SnacksAdapter extends TypeAdapter<Snacks> {
  @override
  final int typeId = 3;

  @override
  Snacks read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Snacks(
      name: fields[0] as String,
      prize: fields[1] as int,
      Charbohydrate: fields[2] as int,
      fat: fields[3] as int,
      protein: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Snacks obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.prize)
      ..writeByte(2)
      ..write(obj.Charbohydrate)
      ..writeByte(3)
      ..write(obj.fat)
      ..writeByte(4)
      ..write(obj.protein);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SnacksAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DinnerAdapter extends TypeAdapter<Dinner> {
  @override
  final int typeId = 4;

  @override
  Dinner read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Dinner(
      name: fields[0] as String,
      prize: fields[1] as int,
      Charbohydrate: fields[2] as int,
      fat: fields[3] as int,
      protein: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Dinner obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.prize)
      ..writeByte(2)
      ..write(obj.Charbohydrate)
      ..writeByte(3)
      ..write(obj.fat)
      ..writeByte(4)
      ..write(obj.protein);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DinnerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class Diet00Adapter extends TypeAdapter<Diet00> {
  @override
  final int typeId = 7;

  @override
  Diet00 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Diet00(
      name: fields[0] as String,
      prize: fields[1] as int,
      Charbohydrate: fields[2] as int,
      fat: fields[3] as int,
      protein: fields[4] as int,
      quantity: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Diet00 obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.prize)
      ..writeByte(2)
      ..write(obj.Charbohydrate)
      ..writeByte(3)
      ..write(obj.fat)
      ..writeByte(4)
      ..write(obj.protein)
      ..writeByte(5)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Diet00Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class Diet01Adapter extends TypeAdapter<Diet01> {
  @override
  final int typeId = 8;

  @override
  Diet01 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Diet01(
      name: fields[0] as String,
      prize: fields[1] as int,
      Charbohydrate: fields[2] as int,
      fat: fields[3] as int,
      protein: fields[4] as int,
      quantity: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Diet01 obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.prize)
      ..writeByte(2)
      ..write(obj.Charbohydrate)
      ..writeByte(3)
      ..write(obj.fat)
      ..writeByte(4)
      ..write(obj.protein)
      ..writeByte(5)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Diet01Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class Diet02Adapter extends TypeAdapter<Diet02> {
  @override
  final int typeId = 9;

  @override
  Diet02 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Diet02(
      name: fields[0] as String,
      prize: fields[1] as int,
      Charbohydrate: fields[2] as int,
      fat: fields[3] as int,
      protein: fields[4] as int,
      quantity: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Diet02 obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.prize)
      ..writeByte(2)
      ..write(obj.Charbohydrate)
      ..writeByte(3)
      ..write(obj.fat)
      ..writeByte(4)
      ..write(obj.protein)
      ..writeByte(5)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Diet02Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class Diet03Adapter extends TypeAdapter<Diet03> {
  @override
  final int typeId = 10;

  @override
  Diet03 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Diet03(
      name: fields[0] as String,
      prize: fields[1] as int,
      Charbohydrate: fields[2] as int,
      fat: fields[3] as int,
      protein: fields[4] as int,
      quantity: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Diet03 obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.prize)
      ..writeByte(2)
      ..write(obj.Charbohydrate)
      ..writeByte(3)
      ..write(obj.fat)
      ..writeByte(4)
      ..write(obj.protein)
      ..writeByte(5)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Diet03Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class Diet10Adapter extends TypeAdapter<Diet10> {
  @override
  final int typeId = 11;

  @override
  Diet10 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Diet10(
      name: fields[0] as String,
      prize: fields[1] as int,
      Charbohydrate: fields[2] as int,
      fat: fields[3] as int,
      protein: fields[4] as int,
      quantity: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Diet10 obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.prize)
      ..writeByte(2)
      ..write(obj.Charbohydrate)
      ..writeByte(3)
      ..write(obj.fat)
      ..writeByte(4)
      ..write(obj.protein)
      ..writeByte(5)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Diet10Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class Diet11Adapter extends TypeAdapter<Diet11> {
  @override
  final int typeId = 12;

  @override
  Diet11 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Diet11(
      name: fields[0] as String,
      prize: fields[1] as int,
      Charbohydrate: fields[2] as int,
      fat: fields[3] as int,
      protein: fields[4] as int,
      quantity: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Diet11 obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.prize)
      ..writeByte(2)
      ..write(obj.Charbohydrate)
      ..writeByte(3)
      ..write(obj.fat)
      ..writeByte(4)
      ..write(obj.protein)
      ..writeByte(5)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Diet11Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class Diet12Adapter extends TypeAdapter<Diet12> {
  @override
  final int typeId = 13;

  @override
  Diet12 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Diet12(
      name: fields[0] as String,
      prize: fields[1] as int,
      Charbohydrate: fields[2] as int,
      fat: fields[3] as int,
      protein: fields[4] as int,
      quantity: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Diet12 obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.prize)
      ..writeByte(2)
      ..write(obj.Charbohydrate)
      ..writeByte(3)
      ..write(obj.fat)
      ..writeByte(4)
      ..write(obj.protein)
      ..writeByte(5)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Diet12Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class Diet13Adapter extends TypeAdapter<Diet13> {
  @override
  final int typeId = 14;

  @override
  Diet13 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Diet13(
      name: fields[0] as String,
      prize: fields[1] as int,
      Charbohydrate: fields[2] as int,
      fat: fields[3] as int,
      protein: fields[4] as int,
      quantity: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Diet13 obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.prize)
      ..writeByte(2)
      ..write(obj.Charbohydrate)
      ..writeByte(3)
      ..write(obj.fat)
      ..writeByte(4)
      ..write(obj.protein)
      ..writeByte(5)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Diet13Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class Diet20Adapter extends TypeAdapter<Diet20> {
  @override
  final int typeId = 15;

  @override
  Diet20 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Diet20(
      name: fields[0] as String,
      prize: fields[1] as int,
      Charbohydrate: fields[2] as int,
      fat: fields[3] as int,
      protein: fields[4] as int,
      quantity: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Diet20 obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.prize)
      ..writeByte(2)
      ..write(obj.Charbohydrate)
      ..writeByte(3)
      ..write(obj.fat)
      ..writeByte(4)
      ..write(obj.protein)
      ..writeByte(5)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Diet20Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class Diet21Adapter extends TypeAdapter<Diet21> {
  @override
  final int typeId = 16;

  @override
  Diet21 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Diet21(
      name: fields[0] as String,
      prize: fields[1] as int,
      Charbohydrate: fields[2] as int,
      fat: fields[3] as int,
      protein: fields[4] as int,
      quantity: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Diet21 obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.prize)
      ..writeByte(2)
      ..write(obj.Charbohydrate)
      ..writeByte(3)
      ..write(obj.fat)
      ..writeByte(4)
      ..write(obj.protein)
      ..writeByte(5)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Diet21Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class Diet22Adapter extends TypeAdapter<Diet22> {
  @override
  final int typeId = 17;

  @override
  Diet22 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Diet22(
      name: fields[0] as String,
      prize: fields[1] as int,
      Charbohydrate: fields[2] as int,
      fat: fields[3] as int,
      protein: fields[4] as int,
      quantity: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Diet22 obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.prize)
      ..writeByte(2)
      ..write(obj.Charbohydrate)
      ..writeByte(3)
      ..write(obj.fat)
      ..writeByte(4)
      ..write(obj.protein)
      ..writeByte(5)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Diet22Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class Diet23Adapter extends TypeAdapter<Diet23> {
  @override
  final int typeId = 18;

  @override
  Diet23 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Diet23(
      name: fields[0] as String,
      prize: fields[1] as int,
      Charbohydrate: fields[2] as int,
      fat: fields[3] as int,
      protein: fields[4] as int,
      quantity: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Diet23 obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.prize)
      ..writeByte(2)
      ..write(obj.Charbohydrate)
      ..writeByte(3)
      ..write(obj.fat)
      ..writeByte(4)
      ..write(obj.protein)
      ..writeByte(5)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Diet23Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class Diet30Adapter extends TypeAdapter<Diet30> {
  @override
  final int typeId = 19;

  @override
  Diet30 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Diet30(
      name: fields[0] as String,
      prize: fields[1] as int,
      Charbohydrate: fields[2] as int,
      fat: fields[3] as int,
      protein: fields[4] as int,
      quantity: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Diet30 obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.prize)
      ..writeByte(2)
      ..write(obj.Charbohydrate)
      ..writeByte(3)
      ..write(obj.fat)
      ..writeByte(4)
      ..write(obj.protein)
      ..writeByte(5)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Diet30Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class Diet31Adapter extends TypeAdapter<Diet31> {
  @override
  final int typeId = 20;

  @override
  Diet31 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Diet31(
      name: fields[0] as String,
      prize: fields[1] as int,
      Charbohydrate: fields[2] as int,
      fat: fields[3] as int,
      protein: fields[4] as int,
      quantity: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Diet31 obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.prize)
      ..writeByte(2)
      ..write(obj.Charbohydrate)
      ..writeByte(3)
      ..write(obj.fat)
      ..writeByte(4)
      ..write(obj.protein)
      ..writeByte(5)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Diet31Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class Diet32Adapter extends TypeAdapter<Diet32> {
  @override
  final int typeId = 21;

  @override
  Diet32 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Diet32(
      name: fields[0] as String,
      prize: fields[1] as int,
      Charbohydrate: fields[2] as int,
      fat: fields[3] as int,
      protein: fields[4] as int,
      quantity: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Diet32 obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.prize)
      ..writeByte(2)
      ..write(obj.Charbohydrate)
      ..writeByte(3)
      ..write(obj.fat)
      ..writeByte(4)
      ..write(obj.protein)
      ..writeByte(5)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Diet32Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class Diet33Adapter extends TypeAdapter<Diet33> {
  @override
  final int typeId = 22;

  @override
  Diet33 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Diet33(
      name: fields[0] as String,
      prize: fields[1] as int,
      Charbohydrate: fields[2] as int,
      fat: fields[3] as int,
      protein: fields[4] as int,
      quantity: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Diet33 obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.prize)
      ..writeByte(2)
      ..write(obj.Charbohydrate)
      ..writeByte(3)
      ..write(obj.fat)
      ..writeByte(4)
      ..write(obj.protein)
      ..writeByte(5)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Diet33Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class Diet40Adapter extends TypeAdapter<Diet40> {
  @override
  final int typeId = 23;

  @override
  Diet40 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Diet40(
      name: fields[0] as String,
      prize: fields[1] as int,
      Charbohydrate: fields[2] as int,
      fat: fields[3] as int,
      protein: fields[4] as int,
      quantity: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Diet40 obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.prize)
      ..writeByte(2)
      ..write(obj.Charbohydrate)
      ..writeByte(3)
      ..write(obj.fat)
      ..writeByte(4)
      ..write(obj.protein)
      ..writeByte(5)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Diet40Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class Diet41Adapter extends TypeAdapter<Diet41> {
  @override
  final int typeId = 24;

  @override
  Diet41 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Diet41(
      name: fields[0] as String,
      prize: fields[1] as int,
      Charbohydrate: fields[2] as int,
      fat: fields[3] as int,
      protein: fields[4] as int,
      quantity: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Diet41 obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.prize)
      ..writeByte(2)
      ..write(obj.Charbohydrate)
      ..writeByte(3)
      ..write(obj.fat)
      ..writeByte(4)
      ..write(obj.protein)
      ..writeByte(5)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Diet41Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class Diet42Adapter extends TypeAdapter<Diet42> {
  @override
  final int typeId = 25;

  @override
  Diet42 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Diet42(
      name: fields[0] as String,
      prize: fields[1] as int,
      Charbohydrate: fields[2] as int,
      fat: fields[3] as int,
      protein: fields[4] as int,
      quantity: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Diet42 obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.prize)
      ..writeByte(2)
      ..write(obj.Charbohydrate)
      ..writeByte(3)
      ..write(obj.fat)
      ..writeByte(4)
      ..write(obj.protein)
      ..writeByte(5)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Diet42Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class Diet43Adapter extends TypeAdapter<Diet43> {
  @override
  final int typeId = 26;

  @override
  Diet43 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Diet43(
      name: fields[0] as String,
      prize: fields[1] as int,
      Charbohydrate: fields[2] as int,
      fat: fields[3] as int,
      protein: fields[4] as int,
      quantity: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Diet43 obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.prize)
      ..writeByte(2)
      ..write(obj.Charbohydrate)
      ..writeByte(3)
      ..write(obj.fat)
      ..writeByte(4)
      ..write(obj.protein)
      ..writeByte(5)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Diet43Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class Diet50Adapter extends TypeAdapter<Diet50> {
  @override
  final int typeId = 27;

  @override
  Diet50 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Diet50(
      name: fields[0] as String,
      prize: fields[1] as int,
      Charbohydrate: fields[2] as int,
      fat: fields[3] as int,
      protein: fields[4] as int,
      quantity: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Diet50 obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.prize)
      ..writeByte(2)
      ..write(obj.Charbohydrate)
      ..writeByte(3)
      ..write(obj.fat)
      ..writeByte(4)
      ..write(obj.protein)
      ..writeByte(5)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Diet50Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class Diet51Adapter extends TypeAdapter<Diet51> {
  @override
  final int typeId = 28;

  @override
  Diet51 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Diet51(
      name: fields[0] as String,
      prize: fields[1] as int,
      Charbohydrate: fields[2] as int,
      fat: fields[3] as int,
      protein: fields[4] as int,
      quantity: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Diet51 obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.prize)
      ..writeByte(2)
      ..write(obj.Charbohydrate)
      ..writeByte(3)
      ..write(obj.fat)
      ..writeByte(4)
      ..write(obj.protein)
      ..writeByte(5)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Diet51Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class Diet52Adapter extends TypeAdapter<Diet52> {
  @override
  final int typeId = 29;

  @override
  Diet52 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Diet52(
      name: fields[0] as String,
      prize: fields[1] as int,
      Charbohydrate: fields[2] as int,
      fat: fields[3] as int,
      protein: fields[4] as int,
      quantity: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Diet52 obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.prize)
      ..writeByte(2)
      ..write(obj.Charbohydrate)
      ..writeByte(3)
      ..write(obj.fat)
      ..writeByte(4)
      ..write(obj.protein)
      ..writeByte(5)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Diet52Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class Diet53Adapter extends TypeAdapter<Diet53> {
  @override
  final int typeId = 30;

  @override
  Diet53 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Diet53(
      name: fields[0] as String,
      prize: fields[1] as int,
      Charbohydrate: fields[2] as int,
      fat: fields[3] as int,
      protein: fields[4] as int,
      quantity: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Diet53 obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.prize)
      ..writeByte(2)
      ..write(obj.Charbohydrate)
      ..writeByte(3)
      ..write(obj.fat)
      ..writeByte(4)
      ..write(obj.protein)
      ..writeByte(5)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Diet53Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class Diet60Adapter extends TypeAdapter<Diet60> {
  @override
  final int typeId = 31;

  @override
  Diet60 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Diet60(
      name: fields[0] as String,
      prize: fields[1] as int,
      Charbohydrate: fields[2] as int,
      fat: fields[3] as int,
      protein: fields[4] as int,
      quantity: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Diet60 obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.prize)
      ..writeByte(2)
      ..write(obj.Charbohydrate)
      ..writeByte(3)
      ..write(obj.fat)
      ..writeByte(4)
      ..write(obj.protein)
      ..writeByte(5)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Diet60Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class Diet61Adapter extends TypeAdapter<Diet61> {
  @override
  final int typeId = 32;

  @override
  Diet61 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Diet61(
      name: fields[0] as String,
      prize: fields[1] as int,
      Charbohydrate: fields[2] as int,
      fat: fields[3] as int,
      protein: fields[4] as int,
      quantity: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Diet61 obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.prize)
      ..writeByte(2)
      ..write(obj.Charbohydrate)
      ..writeByte(3)
      ..write(obj.fat)
      ..writeByte(4)
      ..write(obj.protein)
      ..writeByte(5)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Diet61Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class Diet62Adapter extends TypeAdapter<Diet62> {
  @override
  final int typeId = 33;

  @override
  Diet62 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Diet62(
      name: fields[0] as String,
      prize: fields[1] as int,
      Charbohydrate: fields[2] as int,
      fat: fields[3] as int,
      protein: fields[4] as int,
      quantity: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Diet62 obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.prize)
      ..writeByte(2)
      ..write(obj.Charbohydrate)
      ..writeByte(3)
      ..write(obj.fat)
      ..writeByte(4)
      ..write(obj.protein)
      ..writeByte(5)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Diet62Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class Diet63Adapter extends TypeAdapter<Diet63> {
  @override
  final int typeId = 34;

  @override
  Diet63 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Diet63(
      name: fields[0] as String,
      prize: fields[1] as int,
      Charbohydrate: fields[2] as int,
      fat: fields[3] as int,
      protein: fields[4] as int,
      quantity: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Diet63 obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.prize)
      ..writeByte(2)
      ..write(obj.Charbohydrate)
      ..writeByte(3)
      ..write(obj.fat)
      ..writeByte(4)
      ..write(obj.protein)
      ..writeByte(5)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Diet63Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
