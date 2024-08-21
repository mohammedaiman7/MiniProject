import 'package:hive/hive.dart';
part 'model.g.dart';
//part of 'model.dart';

class Food {
  final String name;
  final int prize;
  final int Charbohydrate;
  final int fat;
  final int protein;

  Food(
      {required this.name,
      required this.prize,
      required this.Charbohydrate,
      required this.fat,
      required this.protein});
}

class Diet {
  final Food food;
  int quantity;

  Diet({required this.food, required this.quantity});
}

class Day {
  final List<Diet> breakFast;
  final List<Diet> lunch;
  final List<Diet> snacks;
  final List<Diet> dinner;
  Day(
      {required this.breakFast,
      required this.lunch,
      required this.snacks,
      required this.dinner});
}

class Week {
  final List<Day> week;
  final int curDay;
  Week({required this.week, required this.curDay});
}

class Weeks {
  final List<Week> weeks;
  final int curWeek;
  Weeks({required this.weeks, required this.curWeek});
}

@HiveType(typeId: 6)
class HealthData {
  @HiveField(0)
  int bloodSugerLevel;
  @HiveField(1)
  int bloodFatLevel;
  @HiveField(2)
  int bloodPreserLevel;

  HealthData(
      {required this.bloodSugerLevel,
      required this.bloodFatLevel,
      required this.bloodPreserLevel});
}

@HiveType(typeId: 5)
class CurrentNutrientLevel {
  @HiveField(0)
  int charbohydrate;
  @HiveField(1)
  int fat;
  CurrentNutrientLevel({required this.charbohydrate, required this.fat});
}

@HiveType(typeId: 1)
class BreakFast {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int prize;
  @HiveField(2)
  final int Charbohydrate;
  @HiveField(3)
  final int fat;
  @HiveField(4)
  final int protein;

  BreakFast(
      {required this.name,
      required this.prize,
      required this.Charbohydrate,
      required this.fat,
      required this.protein});
}

@HiveType(typeId: 2)
class Lunch {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int prize;
  @HiveField(2)
  final int Charbohydrate;
  @HiveField(3)
  final int fat;
  @HiveField(4)
  final int protein;

  Lunch(
      {required this.name,
      required this.prize,
      required this.Charbohydrate,
      required this.fat,
      required this.protein});
}

@HiveType(typeId: 3)
class Snacks {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int prize;
  @HiveField(2)
  final int Charbohydrate;
  @HiveField(3)
  final int fat;
  @HiveField(4)
  final int protein;

  Snacks(
      {required this.name,
      required this.prize,
      required this.Charbohydrate,
      required this.fat,
      required this.protein});
}

@HiveType(typeId: 4)
class Dinner {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int prize;
  @HiveField(2)
  final int Charbohydrate;
  @HiveField(3)
  final int fat;
  @HiveField(4)
  final int protein;

  Dinner(
      {required this.name,
      required this.prize,
      required this.Charbohydrate,
      required this.fat,
      required this.protein});
}

@HiveType(typeId: 7)
class Diet00 {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int prize;
  @HiveField(2)
  final int Charbohydrate;
  @HiveField(3)
  final int fat;
  @HiveField(4)
  final int protein;
  @HiveField(5)
  int quantity;

  Diet00(
      {required this.name,
      required this.prize,
      required this.Charbohydrate,
      required this.fat,
      required this.protein,
      required this.quantity});
}

@HiveType(typeId: 8)
class Diet01 {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int prize;
  @HiveField(2)
  final int Charbohydrate;
  @HiveField(3)
  final int fat;
  @HiveField(4)
  final int protein;
  @HiveField(5)
  int quantity;

  Diet01(
      {required this.name,
      required this.prize,
      required this.Charbohydrate,
      required this.fat,
      required this.protein,
      required this.quantity});
}

@HiveType(typeId: 9)
class Diet02 {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int prize;
  @HiveField(2)
  final int Charbohydrate;
  @HiveField(3)
  final int fat;
  @HiveField(4)
  final int protein;
  @HiveField(5)
  int quantity;

  Diet02(
      {required this.name,
      required this.prize,
      required this.Charbohydrate,
      required this.fat,
      required this.protein,
      required this.quantity});
}

@HiveType(typeId: 10)
class Diet03 {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int prize;
  @HiveField(2)
  final int Charbohydrate;
  @HiveField(3)
  final int fat;
  @HiveField(4)
  final int protein;
  @HiveField(5)
  int quantity;

  Diet03(
      {required this.name,
      required this.prize,
      required this.Charbohydrate,
      required this.fat,
      required this.protein,
      required this.quantity});
}

@HiveType(typeId: 11)
class Diet10 {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int prize;
  @HiveField(2)
  final int Charbohydrate;
  @HiveField(3)
  final int fat;
  @HiveField(4)
  final int protein;
  @HiveField(5)
  int quantity;

  Diet10(
      {required this.name,
      required this.prize,
      required this.Charbohydrate,
      required this.fat,
      required this.protein,
      required this.quantity});
}

@HiveType(typeId: 12)
class Diet11 {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int prize;
  @HiveField(2)
  final int Charbohydrate;
  @HiveField(3)
  final int fat;
  @HiveField(4)
  final int protein;
  @HiveField(5)
  int quantity;

  Diet11(
      {required this.name,
      required this.prize,
      required this.Charbohydrate,
      required this.fat,
      required this.protein,
      required this.quantity});
}

@HiveType(typeId: 13)
class Diet12 {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int prize;
  @HiveField(2)
  final int Charbohydrate;
  @HiveField(3)
  final int fat;
  @HiveField(4)
  final int protein;
  @HiveField(5)
  int quantity;

  Diet12(
      {required this.name,
      required this.prize,
      required this.Charbohydrate,
      required this.fat,
      required this.protein,
      required this.quantity});
}

@HiveType(typeId: 14)
class Diet13 {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int prize;
  @HiveField(2)
  final int Charbohydrate;
  @HiveField(3)
  final int fat;
  @HiveField(4)
  final int protein;
  @HiveField(5)
  int quantity;

  Diet13(
      {required this.name,
      required this.prize,
      required this.Charbohydrate,
      required this.fat,
      required this.protein,
      required this.quantity});
}

@HiveType(typeId: 15)
class Diet20 {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int prize;
  @HiveField(2)
  final int Charbohydrate;
  @HiveField(3)
  final int fat;
  @HiveField(4)
  final int protein;
  @HiveField(5)
  int quantity;

  Diet20(
      {required this.name,
      required this.prize,
      required this.Charbohydrate,
      required this.fat,
      required this.protein,
      required this.quantity});
}

@HiveType(typeId: 16)
class Diet21 {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int prize;
  @HiveField(2)
  final int Charbohydrate;
  @HiveField(3)
  final int fat;
  @HiveField(4)
  final int protein;
  @HiveField(5)
  int quantity;

  Diet21(
      {required this.name,
      required this.prize,
      required this.Charbohydrate,
      required this.fat,
      required this.protein,
      required this.quantity});
}

@HiveType(typeId: 17)
class Diet22 {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int prize;
  @HiveField(2)
  final int Charbohydrate;
  @HiveField(3)
  final int fat;
  @HiveField(4)
  final int protein;
  @HiveField(5)
  int quantity;

  Diet22({
    required this.name,
    required this.prize,
    required this.Charbohydrate,
    required this.fat,
    required this.protein,
    required this.quantity,
  });
}

@HiveType(typeId: 18)
class Diet23 {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int prize;
  @HiveField(2)
  final int Charbohydrate;
  @HiveField(3)
  final int fat;
  @HiveField(4)
  final int protein;
  @HiveField(5)
  int quantity;

  Diet23({
    required this.name,
    required this.prize,
    required this.Charbohydrate,
    required this.fat,
    required this.protein,
    required this.quantity,
  });
}

@HiveType(typeId: 19)
class Diet30 {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int prize;
  @HiveField(2)
  final int Charbohydrate;
  @HiveField(3)
  final int fat;
  @HiveField(4)
  final int protein;
  @HiveField(5)
  int quantity;

  Diet30({
    required this.name,
    required this.prize,
    required this.Charbohydrate,
    required this.fat,
    required this.protein,
    required this.quantity,
  });
}

@HiveType(typeId: 20)
class Diet31 {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int prize;
  @HiveField(2)
  final int Charbohydrate;
  @HiveField(3)
  final int fat;
  @HiveField(4)
  final int protein;
  @HiveField(5)
  int quantity;

  Diet31({
    required this.name,
    required this.prize,
    required this.Charbohydrate,
    required this.fat,
    required this.protein,
    required this.quantity,
  });
}

@HiveType(typeId: 21)
class Diet32 {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int prize;
  @HiveField(2)
  final int Charbohydrate;
  @HiveField(3)
  final int fat;
  @HiveField(4)
  final int protein;
  @HiveField(5)
  int quantity;

  Diet32({
    required this.name,
    required this.prize,
    required this.Charbohydrate,
    required this.fat,
    required this.protein,
    required this.quantity,
  });
}

@HiveType(typeId: 22)
class Diet33 {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int prize;
  @HiveField(2)
  final int Charbohydrate;
  @HiveField(3)
  final int fat;
  @HiveField(4)
  final int protein;
  @HiveField(5)
  int quantity;

  Diet33({
    required this.name,
    required this.prize,
    required this.Charbohydrate,
    required this.fat,
    required this.protein,
    required this.quantity,
  });
}

@HiveType(typeId: 23)
class Diet40 {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int prize;
  @HiveField(2)
  final int Charbohydrate;
  @HiveField(3)
  final int fat;
  @HiveField(4)
  final int protein;
  @HiveField(5)
  int quantity;

  Diet40({
    required this.name,
    required this.prize,
    required this.Charbohydrate,
    required this.fat,
    required this.protein,
    required this.quantity,
  });
}

@HiveType(typeId: 24)
class Diet41 {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int prize;
  @HiveField(2)
  final int Charbohydrate;
  @HiveField(3)
  final int fat;
  @HiveField(4)
  final int protein;
  @HiveField(5)
  int quantity;

  Diet41({
    required this.name,
    required this.prize,
    required this.Charbohydrate,
    required this.fat,
    required this.protein,
    required this.quantity,
  });
}

@HiveType(typeId: 25)
class Diet42 {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int prize;
  @HiveField(2)
  final int Charbohydrate;
  @HiveField(3)
  final int fat;
  @HiveField(4)
  final int protein;
  @HiveField(5)
  int quantity;

  Diet42({
    required this.name,
    required this.prize,
    required this.Charbohydrate,
    required this.fat,
    required this.protein,
    required this.quantity,
  });
}

@HiveType(typeId: 26)
class Diet43 {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int prize;
  @HiveField(2)
  final int Charbohydrate;
  @HiveField(3)
  final int fat;
  @HiveField(4)
  final int protein;
  @HiveField(5)
  int quantity;

  Diet43({
    required this.name,
    required this.prize,
    required this.Charbohydrate,
    required this.fat,
    required this.protein,
    required this.quantity,
  });
}

@HiveType(typeId: 27)
class Diet50 {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int prize;
  @HiveField(2)
  final int Charbohydrate;
  @HiveField(3)
  final int fat;
  @HiveField(4)
  final int protein;
  @HiveField(5)
  int quantity;

  Diet50({
    required this.name,
    required this.prize,
    required this.Charbohydrate,
    required this.fat,
    required this.protein,
    required this.quantity,
  });
}

@HiveType(typeId: 28)
class Diet51 {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int prize;
  @HiveField(2)
  final int Charbohydrate;
  @HiveField(3)
  final int fat;
  @HiveField(4)
  final int protein;
  @HiveField(5)
  int quantity;

  Diet51({
    required this.name,
    required this.prize,
    required this.Charbohydrate,
    required this.fat,
    required this.protein,
    required this.quantity,
  });
}

@HiveType(typeId: 29)
class Diet52 {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int prize;
  @HiveField(2)
  final int Charbohydrate;
  @HiveField(3)
  final int fat;
  @HiveField(4)
  final int protein;
  @HiveField(5)
  int quantity;

  Diet52({
    required this.name,
    required this.prize,
    required this.Charbohydrate,
    required this.fat,
    required this.protein,
    required this.quantity,
  });
}

@HiveType(typeId: 30)
class Diet53 {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int prize;
  @HiveField(2)
  final int Charbohydrate;
  @HiveField(3)
  final int fat;
  @HiveField(4)
  final int protein;
  @HiveField(5)
  int quantity;

  Diet53({
    required this.name,
    required this.prize,
    required this.Charbohydrate,
    required this.fat,
    required this.protein,
    required this.quantity,
  });
}

@HiveType(typeId: 31)
class Diet60 {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int prize;
  @HiveField(2)
  final int Charbohydrate;
  @HiveField(3)
  final int fat;
  @HiveField(4)
  final int protein;
  @HiveField(5)
  int quantity;

  Diet60({
    required this.name,
    required this.prize,
    required this.Charbohydrate,
    required this.fat,
    required this.protein,
    required this.quantity,
  });
}

@HiveType(typeId: 32)
class Diet61 {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int prize;
  @HiveField(2)
  final int Charbohydrate;
  @HiveField(3)
  final int fat;
  @HiveField(4)
  final int protein;
  @HiveField(5)
  int quantity;

  Diet61({
    required this.name,
    required this.prize,
    required this.Charbohydrate,
    required this.fat,
    required this.protein,
    required this.quantity,
  });
}

@HiveType(typeId: 33)
class Diet62 {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int prize;
  @HiveField(2)
  final int Charbohydrate;
  @HiveField(3)
  final int fat;
  @HiveField(4)
  final int protein;
  @HiveField(5)
  int quantity;

  Diet62({
    required this.name,
    required this.prize,
    required this.Charbohydrate,
    required this.fat,
    required this.protein,
    required this.quantity,
  });
}

@HiveType(typeId: 34)
class Diet63 {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int prize;
  @HiveField(2)
  final int Charbohydrate;
  @HiveField(3)
  final int fat;
  @HiveField(4)
  final int protein;
  @HiveField(5)
  int quantity;

  Diet63({
    required this.name,
    required this.prize,
    required this.Charbohydrate,
    required this.fat,
    required this.protein,
    required this.quantity,
  });
}

class DietLimit {
  final int Charboupper;
  final int CharboLower;
  final int fatupper;
  final int fatLower;

  DietLimit(
      {required this.Charboupper,
      required this.CharboLower,
      required this.fatupper,
      required this.fatLower});
}
