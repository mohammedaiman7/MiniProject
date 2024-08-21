import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:shedule_ease1/bd/model/model.dart';

//ValueNotifier<List<Food>> studentListNotifier = ValueNotifier([]);
ValueNotifier<List<Food>> breakFast = ValueNotifier([]);

void addToBreakFast(Food value) async {
  final bf = await Hive.openBox<BreakFast>('BreakFast_db');
  var value1 = BreakFast(
      name: value.name,
      prize: value.prize,
      Charbohydrate: value.Charbohydrate,
      fat: value.fat,
      protein: value.protein);
  await bf.add(value1);
  breakFast.value.add(value);
  breakFast.notifyListeners();
  // print(value.toString());
}

Future<void> addDefaltBF() async {
  if (breakFast.value.length == 0) {
    addToBreakFast(
        Food(name: 'Dosa', prize: 10, Charbohydrate: 29, fat: 4, protein: 4));
    addToBreakFast(
        Food(name: "Sambar", prize: 20, Charbohydrate: 26, fat: 1, protein: 7));
    addToBreakFast(
        Food(name: "Idli", prize: 8, Charbohydrate: 41, fat: 0, protein: 6));
  }
}

Future<void> addDefaltL() async {
  if (lunch.value.length == 0) {
    addTolunch(
        Food(name: 'Rice', prize: 30, Charbohydrate: 53, fat: 1, protein: 5));
    addTolunch(Food(
        name: 'Chicken curry',
        prize: 40,
        Charbohydrate: 8,
        fat: 11,
        protein: 28));
    addTolunch(Food(
        name: "Chicken Biryani",
        prize: 100,
        Charbohydrate: 31,
        fat: 10,
        protein: 20));
  }
}

Future<void> addDefaltD() async {
  if (dinner.value.length == 0) {
    adddinner(
        Food(name: 'Dosa', prize: 10, Charbohydrate: 29, fat: 4, protein: 4));
    adddinner(
        Food(name: "Sambar", prize: 20, Charbohydrate: 26, fat: 1, protein: 7));
    adddinner(
        Food(name: "Idli", prize: 8, Charbohydrate: 41, fat: 0, protein: 6));
    adddinner(
        Food(name: "Chapati", prize: 5, Charbohydrate: 18, fat: 4, protein: 3));
  }
}

Future<void> addDefaltS() async {
  if (snacks.value.length == 0) {
    addsnacks(Food(
        name: "Samoosa", prize: 15, Charbohydrate: 24, fat: 17, protein: 4));
    addsnacks(
        Food(name: "Banana", prize: 10, Charbohydrate: 27, fat: 1, protein: 2));
    addsnacks(
        Food(name: "Vada", prize: 10, Charbohydrate: 11, fat: 9, protein: 5));
  }
}

Future<void> getAllBF() async {
  final bf = await Hive.openBox<BreakFast>('BreakFast_db');
  breakFast.value.clear();
  for (BreakFast value in bf.values) {
    var value1 = Food(
        name: value.name,
        prize: value.prize,
        Charbohydrate: value.Charbohydrate,
        fat: value.fat,
        protein: value.protein);
    breakFast.value.add(value1);
  }
  breakFast.notifyListeners();
}

ValueNotifier<List<Food>> lunch = ValueNotifier([]);

void addTolunch(Food value) async {
  final l = await Hive.openBox<Lunch>('Lunch_db');
  var value1 = Lunch(
      name: value.name,
      prize: value.prize,
      Charbohydrate: value.Charbohydrate,
      fat: value.fat,
      protein: value.protein);
  await l.add(value1);
  lunch.value.add(value);
  lunch.notifyListeners();
  //print(value.toString());
}

Future<void> getAllL() async {
  final l = await Hive.openBox<Lunch>('Lunch_db');
  lunch.value.clear();
  for (Lunch value in l.values) {
    var value1 = Food(
        name: value.name,
        prize: value.prize,
        Charbohydrate: value.Charbohydrate,
        fat: value.fat,
        protein: value.protein);
    lunch.value.add(value1);
  }
  lunch.notifyListeners();
}

ValueNotifier<List<Food>> snacks = ValueNotifier([]);

void addsnacks(Food value) async {
  final s = await Hive.openBox<Snacks>('Snacks_db');
  var value1 = Snacks(
      name: value.name,
      prize: value.prize,
      Charbohydrate: value.Charbohydrate,
      fat: value.fat,
      protein: value.protein);
  await s.add(value1);
  snacks.value.add(value);
  snacks.notifyListeners();
  //print(value.toString());
}

Future<void> getAllS() async {
  final s = await Hive.openBox<Snacks>('Snacks_db');
  snacks.value.clear();
  for (Snacks value in s.values) {
    var value1 = Food(
        name: value.name,
        prize: value.prize,
        Charbohydrate: value.Charbohydrate,
        fat: value.fat,
        protein: value.protein);
    snacks.value.add(value1);
  }
  snacks.notifyListeners();
}

ValueNotifier<List<Food>> dinner = ValueNotifier([]);

void adddinner(Food value) async {
  final d = await Hive.openBox<Dinner>('Dinner_db');
  var value1 = Dinner(
      name: value.name,
      prize: value.prize,
      Charbohydrate: value.Charbohydrate,
      fat: value.fat,
      protein: value.protein);
  await d.add(value1);
  dinner.value.add(value);
  dinner.notifyListeners();
}

Future<void> getAllD() async {
  final d = await Hive.openBox<Dinner>('Dinner_db');
  dinner.value.clear();
  for (Dinner value in d.values) {
    var value1 = Food(
        name: value.name,
        prize: value.prize,
        Charbohydrate: value.Charbohydrate,
        fat: value.fat,
        protein: value.protein);
    dinner.value.add(value1);
  }
  dinner.notifyListeners();
}

List<List<ValueNotifier<List<Diet>>>> diet = [
  [ValueNotifier([]), ValueNotifier([]), ValueNotifier([]), ValueNotifier([])],
  [ValueNotifier([]), ValueNotifier([]), ValueNotifier([]), ValueNotifier([])],
  [ValueNotifier([]), ValueNotifier([]), ValueNotifier([]), ValueNotifier([])],
  [ValueNotifier([]), ValueNotifier([]), ValueNotifier([]), ValueNotifier([])],
  [ValueNotifier([]), ValueNotifier([]), ValueNotifier([]), ValueNotifier([])],
  [ValueNotifier([]), ValueNotifier([]), ValueNotifier([]), ValueNotifier([])],
  [ValueNotifier([]), ValueNotifier([]), ValueNotifier([]), ValueNotifier([])],
];
final _list = [
  [Diet00, Diet01, Diet02, Diet03],
  [Diet10, Diet11, Diet12, Diet13],
  [Diet20, Diet21, Diet22, Diet23],
  [Diet30, Diet31, Diet32, Diet33],
  [Diet40, Diet41, Diet42, Diet43],
  [Diet50, Diet51, Diet52, Diet53],
  [Diet60, Diet61, Diet62, Diet63],
];

void addDiet(Diet value, int i, int a) async {
  /*  if (i == 0) {
    if (a == 0) {
      final d = await Hive.openBox<Diet00>('Diet00_db');
      var value1 = Diet00(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity,
      );
      await d.add(value1);
    } else if (a == 1) {
      final d = await Hive.openBox<Diet01>('Diet01_db');
      var value1 = Diet01(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity,
      );
      await d.add(value1);
    } else if (a == 2) {
      final d = await Hive.openBox<Diet02>('Diet02_db');
      var value1 = Diet02(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity,
      );
      await d.add(value1);
    } else {
      final d = await Hive.openBox<Diet03>('Diet03_db');
      var value1 = Diet03(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity,
      );
      await d.add(value1);
    }
  } else if (i == 1) {
    if (a == 0) {
      final d = await Hive.openBox<Diet10>('Diet10_db');
      var value1 = Diet10(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity,
      );
      await d.add(value1);
    } else if (a == 1) {
      final d = await Hive.openBox<Diet11>('Diet11_db');
      var value1 = Diet11(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity,
      );
      await d.add(value1);
    } else if (a == 2) {
      final d = await Hive.openBox<Diet12>('Diet12_db');
      var value1 = Diet12(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity,
      );
      await d.add(value1);
    } else {
      final d = await Hive.openBox<Diet13>('Diet13_db');
      var value1 = Diet13(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity,
      );
      await d.add(value1);
    }
  } else if (i == 2) {
    if (a == 0) {
      final d = await Hive.openBox<Diet20>('Diet20_db');
      var value1 = Diet20(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity,
      );
      await d.add(value1);
    } else if (a == 1) {
      final d = await Hive.openBox<Diet21>('Diet21_db');
      var value1 = Diet21(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity,
      );
      await d.add(value1);
    } else if (a == 2) {
      final d = await Hive.openBox<Diet22>('Diet22_db');
      var value1 = Diet22(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity,
      );
      await d.add(value1);
    } else {
      final d = await Hive.openBox<Diet23>('Diet23_db');
      var value1 = Diet23(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity,
      );
      await d.add(value1);
    }
  } else if (i == 3) {
    if (a == 0) {
      final d = await Hive.openBox<Diet30>('Diet30_db');
      var value1 = Diet30(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity,
      );
      await d.add(value1);
    } else if (a == 1) {
      final d = await Hive.openBox<Diet31>('Diet31_db');
      var value1 = Diet31(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity,
      );
      await d.add(value1);
    } else if (a == 2) {
      final d = await Hive.openBox<Diet32>('Diet32_db');
      var value1 = Diet32(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity,
      );
      await d.add(value1);
    } else {
      final d = await Hive.openBox<Diet33>('Diet33_db');
      var value1 = Diet33(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity,
      );
      await d.add(value1);
    }
  } else if (i == 4) {
    if (a == 0) {
      final d = await Hive.openBox<Diet40>('Diet40_db');
      var value1 = Diet40(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity,
      );
      await d.add(value1);
    } else if (a == 1) {
      final d = await Hive.openBox<Diet41>('Diet41_db');
      var value1 = Diet41(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity,
      );
      await d.add(value1);
    } else if (a == 2) {
      final d = await Hive.openBox<Diet42>('Diet42_db');
      var value1 = Diet42(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity,
      );
      await d.add(value1);
    } else {
      final d = await Hive.openBox<Diet43>('Diet43_db');
      var value1 = Diet43(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity,
      );
      await d.add(value1);
    }
  } else if (i == 5) {
    if (a == 0) {
      final d = await Hive.openBox<Diet50>('Diet50_db');
      var value1 = Diet50(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity,
      );
      await d.add(value1);
    } else if (a == 1) {
      final d = await Hive.openBox<Diet51>('Diet51_db');
      var value1 = Diet51(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity,
      );
      await d.add(value1);
    } else if (a == 2) {
      final d = await Hive.openBox<Diet52>('Diet52_db');
      var value1 = Diet52(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity,
      );
      await d.add(value1);
    } else {
      final d = await Hive.openBox<Diet53>('Diet53_db');
      var value1 = Diet53(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity,
      );
      await d.add(value1);
    }
  } else if (i == 6) {
    if (a == 0) {
      final d = await Hive.openBox<Diet60>('Diet60_db');
      var value1 = Diet60(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity,
      );
      await d.add(value1);
    } else if (a == 1) {
      final d = await Hive.openBox<Diet61>('Diet61_db');
      var value1 = Diet61(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity,
      );
      await d.add(value1);
    } else if (a == 2) {
      final d = await Hive.openBox<Diet62>('Diet62_db');
      var value1 = Diet62(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity,
      );
      await d.add(value1);
    } else {
      final d = await Hive.openBox<Diet63>('Diet63_db');
      var value1 = Diet63(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity,
      );
      await d.add(value1);
    }
  } */
  diet[i][a].value.add(value);
  diet[i][a].notifyListeners();
}

Future<void> getDiet() async {
  final d00 = await Hive.openBox<Diet00>('Diet00_db');
  diet[0][0].value.clear();
  for (Diet00 value in d00.values) {
    var value1 = Diet(
      food: Food(
        name: value.name,
        prize: value.prize,
        Charbohydrate: value.Charbohydrate,
        fat: value.fat,
        protein: value.protein,
      ),
      quantity: value.quantity,
    );
    diet[0][0].value.add(value1);
  }
  diet[0][0].notifyListeners();
  final d01 = await Hive.openBox<Diet01>('Diet01_db');
  diet[0][1].value.clear();
  for (Diet01 value in d01.values) {
    var value1 = Diet(
      food: Food(
        name: value.name,
        prize: value.prize,
        Charbohydrate: value.Charbohydrate,
        fat: value.fat,
        protein: value.protein,
      ),
      quantity: value.quantity,
    );
    diet[0][1].value.add(value1);
  }
  diet[0][1].notifyListeners();
  final d02 = await Hive.openBox<Diet02>('Diet02_db');
  diet[0][2].value.clear();
  for (Diet02 value in d02.values) {
    var value1 = Diet(
      food: Food(
        name: value.name,
        prize: value.prize,
        Charbohydrate: value.Charbohydrate,
        fat: value.fat,
        protein: value.protein,
      ),
      quantity: value.quantity,
    );
    diet[0][2].value.add(value1);
  }
  diet[0][2].notifyListeners();
  final d03 = await Hive.openBox<Diet03>('Diet03_db');
  diet[0][3].value.clear();
  for (Diet03 value in d03.values) {
    var value1 = Diet(
      food: Food(
        name: value.name,
        prize: value.prize,
        Charbohydrate: value.Charbohydrate,
        fat: value.fat,
        protein: value.protein,
      ),
      quantity: value.quantity,
    );
    diet[0][3].value.add(value1);
  }
  diet[0][3].notifyListeners();
  final d10 = await Hive.openBox<Diet10>('Diet10_db');
  diet[1][0].value.clear();
  for (Diet10 value in d10.values) {
    var value1 = Diet(
      food: Food(
        name: value.name,
        prize: value.prize,
        Charbohydrate: value.Charbohydrate,
        fat: value.fat,
        protein: value.protein,
      ),
      quantity: value.quantity,
    );
    diet[1][0].value.add(value1);
  }
  diet[1][0].notifyListeners();
  final d11 = await Hive.openBox<Diet11>('Diet11_db');
  diet[1][1].value.clear();
  for (Diet11 value in d11.values) {
    var value1 = Diet(
      food: Food(
        name: value.name,
        prize: value.prize,
        Charbohydrate: value.Charbohydrate,
        fat: value.fat,
        protein: value.protein,
      ),
      quantity: value.quantity,
    );
    diet[1][1].value.add(value1);
  }
  diet[1][1].notifyListeners();
  final d12 = await Hive.openBox<Diet12>('Diet12_db');
  diet[1][2].value.clear();
  for (Diet12 value in d12.values) {
    var value1 = Diet(
      food: Food(
        name: value.name,
        prize: value.prize,
        Charbohydrate: value.Charbohydrate,
        fat: value.fat,
        protein: value.protein,
      ),
      quantity: value.quantity,
    );
    diet[1][2].value.add(value1);
  }
  diet[1][2].notifyListeners();
  final d13 = await Hive.openBox<Diet13>('Diet13_db');
  diet[1][3].value.clear();
  for (Diet13 value in d13.values) {
    var value1 = Diet(
      food: Food(
        name: value.name,
        prize: value.prize,
        Charbohydrate: value.Charbohydrate,
        fat: value.fat,
        protein: value.protein,
      ),
      quantity: value.quantity,
    );
    diet[1][3].value.add(value1);
  }
  diet[1][3].notifyListeners();
  final d20 = await Hive.openBox<Diet20>('Diet20_db');
  diet[2][0].value.clear();
  for (Diet20 value in d20.values) {
    var value1 = Diet(
      food: Food(
        name: value.name,
        prize: value.prize,
        Charbohydrate: value.Charbohydrate,
        fat: value.fat,
        protein: value.protein,
      ),
      quantity: value.quantity,
    );
    diet[2][0].value.add(value1);
  }
  diet[2][0].notifyListeners();
  final d21 = await Hive.openBox<Diet21>('Diet21_db');
  diet[2][1].value.clear();
  for (Diet21 value in d21.values) {
    var value1 = Diet(
      food: Food(
        name: value.name,
        prize: value.prize,
        Charbohydrate: value.Charbohydrate,
        fat: value.fat,
        protein: value.protein,
      ),
      quantity: value.quantity,
    );
    diet[2][1].value.add(value1);
  }
  diet[2][1].notifyListeners();
  final d22 = await Hive.openBox<Diet22>('Diet22_db');
  diet[2][2].value.clear();
  for (Diet22 value in d22.values) {
    var value1 = Diet(
      food: Food(
        name: value.name,
        prize: value.prize,
        Charbohydrate: value.Charbohydrate,
        fat: value.fat,
        protein: value.protein,
      ),
      quantity: value.quantity,
    );
    diet[2][2].value.add(value1);
  }
  diet[2][2].notifyListeners();
  final d23 = await Hive.openBox<Diet23>('Diet23_db');
  diet[2][3].value.clear();
  for (Diet23 value in d23.values) {
    var value1 = Diet(
      food: Food(
        name: value.name,
        prize: value.prize,
        Charbohydrate: value.Charbohydrate,
        fat: value.fat,
        protein: value.protein,
      ),
      quantity: value.quantity,
    );
    diet[2][3].value.add(value1);
  }
  diet[2][3].notifyListeners();
  final d30 = await Hive.openBox<Diet30>('Diet30_db');
  diet[3][0].value.clear();
  for (Diet30 value in d30.values) {
    var value1 = Diet(
      food: Food(
        name: value.name,
        prize: value.prize,
        Charbohydrate: value.Charbohydrate,
        fat: value.fat,
        protein: value.protein,
      ),
      quantity: value.quantity,
    );
    diet[3][0].value.add(value1);
  }
  diet[3][0].notifyListeners();
  final d31 = await Hive.openBox<Diet31>('Diet31_db');
  diet[3][1].value.clear();
  for (Diet31 value in d31.values) {
    var value1 = Diet(
      food: Food(
        name: value.name,
        prize: value.prize,
        Charbohydrate: value.Charbohydrate,
        fat: value.fat,
        protein: value.protein,
      ),
      quantity: value.quantity,
    );
    diet[3][1].value.add(value1);
  }
  diet[3][1].notifyListeners();
  final d32 = await Hive.openBox<Diet32>('Diet32_db');
  diet[3][2].value.clear();
  for (Diet32 value in d32.values) {
    var value1 = Diet(
      food: Food(
        name: value.name,
        prize: value.prize,
        Charbohydrate: value.Charbohydrate,
        fat: value.fat,
        protein: value.protein,
      ),
      quantity: value.quantity,
    );
    diet[3][2].value.add(value1);
  }
  diet[3][2].notifyListeners();
  final d33 = await Hive.openBox<Diet33>('Diet33_db');
  diet[0][3].value.clear();
  for (Diet33 value in d33.values) {
    var value1 = Diet(
      food: Food(
        name: value.name,
        prize: value.prize,
        Charbohydrate: value.Charbohydrate,
        fat: value.fat,
        protein: value.protein,
      ),
      quantity: value.quantity,
    );
    diet[3][3].value.add(value1);
  }
  diet[3][3].notifyListeners();
  final d40 = await Hive.openBox<Diet40>('Diet40_db');
  diet[4][0].value.clear();
  for (Diet40 value in d40.values) {
    var value1 = Diet(
      food: Food(
        name: value.name,
        prize: value.prize,
        Charbohydrate: value.Charbohydrate,
        fat: value.fat,
        protein: value.protein,
      ),
      quantity: value.quantity,
    );
    diet[4][0].value.add(value1);
  }
  diet[4][0].notifyListeners();
  final d41 = await Hive.openBox<Diet41>('Diet41_db');
  diet[0][1].value.clear();
  for (Diet41 value in d41.values) {
    var value1 = Diet(
      food: Food(
        name: value.name,
        prize: value.prize,
        Charbohydrate: value.Charbohydrate,
        fat: value.fat,
        protein: value.protein,
      ),
      quantity: value.quantity,
    );
    diet[4][1].value.add(value1);
  }
  diet[4][1].notifyListeners();
  final d42 = await Hive.openBox<Diet42>('Diet42_db');
  diet[0][2].value.clear();
  for (Diet42 value in d42.values) {
    var value1 = Diet(
      food: Food(
        name: value.name,
        prize: value.prize,
        Charbohydrate: value.Charbohydrate,
        fat: value.fat,
        protein: value.protein,
      ),
      quantity: value.quantity,
    );
    diet[4][2].value.add(value1);
  }
  diet[4][2].notifyListeners();
  final d43 = await Hive.openBox<Diet43>('Diet43_db');
  diet[4][3].value.clear();
  for (Diet43 value in d43.values) {
    var value1 = Diet(
      food: Food(
        name: value.name,
        prize: value.prize,
        Charbohydrate: value.Charbohydrate,
        fat: value.fat,
        protein: value.protein,
      ),
      quantity: value.quantity,
    );
    diet[4][3].value.add(value1);
  }
  diet[4][3].notifyListeners();
  final d50 = await Hive.openBox<Diet50>('Diet50_db');
  diet[5][0].value.clear();
  for (Diet50 value in d50.values) {
    var value1 = Diet(
      food: Food(
        name: value.name,
        prize: value.prize,
        Charbohydrate: value.Charbohydrate,
        fat: value.fat,
        protein: value.protein,
      ),
      quantity: value.quantity,
    );
    diet[5][0].value.add(value1);
  }
  diet[5][0].notifyListeners();
  final d51 = await Hive.openBox<Diet51>('Diet51_db');
  diet[5][1].value.clear();
  for (Diet51 value in d51.values) {
    var value1 = Diet(
      food: Food(
        name: value.name,
        prize: value.prize,
        Charbohydrate: value.Charbohydrate,
        fat: value.fat,
        protein: value.protein,
      ),
      quantity: value.quantity,
    );
    diet[5][1].value.add(value1);
  }
  diet[5][1].notifyListeners();
  final d52 = await Hive.openBox<Diet52>('Diet52_db');
  diet[5][2].value.clear();
  for (Diet52 value in d52.values) {
    var value1 = Diet(
      food: Food(
        name: value.name,
        prize: value.prize,
        Charbohydrate: value.Charbohydrate,
        fat: value.fat,
        protein: value.protein,
      ),
      quantity: value.quantity,
    );
    diet[5][2].value.add(value1);
  }
  diet[5][2].notifyListeners();
  final d53 = await Hive.openBox<Diet53>('Diet53_db');
  diet[5][3].value.clear();
  for (Diet53 value in d53.values) {
    var value1 = Diet(
      food: Food(
        name: value.name,
        prize: value.prize,
        Charbohydrate: value.Charbohydrate,
        fat: value.fat,
        protein: value.protein,
      ),
      quantity: value.quantity,
    );
    diet[5][3].value.add(value1);
  }
  diet[5][3].notifyListeners();
  final d60 = await Hive.openBox<Diet60>('Diet60_db');
  diet[6][0].value.clear();
  for (Diet60 value in d60.values) {
    var value1 = Diet(
      food: Food(
        name: value.name,
        prize: value.prize,
        Charbohydrate: value.Charbohydrate,
        fat: value.fat,
        protein: value.protein,
      ),
      quantity: value.quantity,
    );
    diet[6][0].value.add(value1);
  }
  diet[6][0].notifyListeners();
  final d61 = await Hive.openBox<Diet61>('Diet61_db');
  diet[6][1].value.clear();
  for (Diet61 value in d61.values) {
    var value1 = Diet(
      food: Food(
        name: value.name,
        prize: value.prize,
        Charbohydrate: value.Charbohydrate,
        fat: value.fat,
        protein: value.protein,
      ),
      quantity: value.quantity,
    );
    diet[6][1].value.add(value1);
  }
  diet[6][1].notifyListeners();
  final d62 = await Hive.openBox<Diet62>('Diet62_db');
  diet[6][2].value.clear();
  for (Diet62 value in d62.values) {
    var value1 = Diet(
      food: Food(
        name: value.name,
        prize: value.prize,
        Charbohydrate: value.Charbohydrate,
        fat: value.fat,
        protein: value.protein,
      ),
      quantity: value.quantity,
    );
    diet[6][2].value.add(value1);
  }
  diet[6][2].notifyListeners();
  final d63 = await Hive.openBox<Diet63>('Diet63_db');
  diet[6][3].value.clear();
  for (Diet63 value in d63.values) {
    var value1 = Diet(
      food: Food(
        name: value.name,
        prize: value.prize,
        Charbohydrate: value.Charbohydrate,
        fat: value.fat,
        protein: value.protein,
      ),
      quantity: value.quantity,
    );
    diet[6][3].value.add(value1);
  }
  diet[6][3].notifyListeners();
  for (int i = 0; i < 7; i++) {
    for (int j = 0; j < 4; j++) {
      diet[6][3].notifyListeners();
    }
  }
}

Future<void> updateDiet() async {
  final d00 = await Hive.openBox<Diet00>('Diet00_db');
  await d00.clear();
  for (Diet value in diet[0][0].value) {
    var value1 = Diet00(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity);
    await d00.add(value1);
  }
  final d01 = await Hive.openBox<Diet01>('Diet01_db');
  await d01.clear();
  for (Diet value in diet[0][1].value) {
    var value1 = Diet01(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity);
    await d01.add(value1);
  }
  final d02 = await Hive.openBox<Diet02>('Diet02_db');
  await d02.clear();
  for (Diet value in diet[0][2].value) {
    var value1 = Diet02(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity);
    await d02.add(value1);
  }
  final d03 = await Hive.openBox<Diet03>('Diet03_db');
  await d03.clear();
  for (Diet value in diet[0][3].value) {
    var value1 = Diet03(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity);
    await d03.add(value1);
  }
  final d10 = await Hive.openBox<Diet10>('Diet10_db');
  await d10.clear();
  for (Diet value in diet[1][0].value) {
    var value1 = Diet10(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity);
    await d10.add(value1);
  }
  final d11 = await Hive.openBox<Diet11>('Diet11_db');
  await d11.clear();
  for (Diet value in diet[1][1].value) {
    var value1 = Diet11(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity);
    await d11.add(value1);
  }
  final d12 = await Hive.openBox<Diet12>('Diet12_db');
  await d12.clear();
  for (Diet value in diet[1][2].value) {
    var value1 = Diet12(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity);
    await d12.add(value1);
  }
  final d13 = await Hive.openBox<Diet13>('Diet13_db');
  await d13.clear();
  for (Diet value in diet[0][3].value) {
    var value1 = Diet03(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity);
    await d03.add(value1);
  }
  final d20 = await Hive.openBox<Diet20>('Diet20_db');
  await d20.clear();
  for (Diet value in diet[2][0].value) {
    var value1 = Diet20(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity);
    await d20.add(value1);
  }
  final d21 = await Hive.openBox<Diet21>('Diet21_db');
  await d21.clear();
  for (Diet value in diet[2][1].value) {
    var value1 = Diet21(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity);
    await d21.add(value1);
  }
  final d22 = await Hive.openBox<Diet22>('Diet22_db');
  await d22.clear();
  for (Diet value in diet[2][2].value) {
    var value1 = Diet22(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity);
    await d22.add(value1);
  }
  final d23 = await Hive.openBox<Diet23>('Diet23_db');
  await d23.clear();
  for (Diet value in diet[2][3].value) {
    var value1 = Diet23(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity);
    await d23.add(value1);
  }
  final d30 = await Hive.openBox<Diet30>('Diet30_db');
  await d30.clear();
  for (Diet value in diet[3][0].value) {
    var value1 = Diet30(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity);
    await d30.add(value1);
  }
  final d31 = await Hive.openBox<Diet31>('Diet31_db');
  await d11.clear();
  for (Diet value in diet[3][1].value) {
    var value1 = Diet31(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity);
    await d31.add(value1);
  }
  final d32 = await Hive.openBox<Diet32>('Diet32_db');
  await d12.clear();
  for (Diet value in diet[3][2].value) {
    var value1 = Diet32(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity);
    await d32.add(value1);
  }
  final d33 = await Hive.openBox<Diet33>('Diet33_db');
  await d33.clear();
  for (Diet value in diet[3][3].value) {
    var value1 = Diet03(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity);
    await d03.add(value1);
  }
  final d40 = await Hive.openBox<Diet40>('Diet40_db');
  await d40.clear();
  for (Diet value in diet[4][0].value) {
    var value1 = Diet40(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity);
    await d40.add(value1);
  }
  final d41 = await Hive.openBox<Diet41>('Diet11_db');
  await d41.clear();
  for (Diet value in diet[4][1].value) {
    var value1 = Diet41(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity);
    await d41.add(value1);
  }
  final d42 = await Hive.openBox<Diet42>('Diet12_db');
  await d42.clear();
  for (Diet value in diet[4][2].value) {
    var value1 = Diet42(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity);
    await d42.add(value1);
  }
  final d43 = await Hive.openBox<Diet43>('Diet43_db');
  await d43.clear();
  for (Diet value in diet[4][3].value) {
    var value1 = Diet43(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity);
    await d43.add(value1);
  }
  final d50 = await Hive.openBox<Diet50>('Diet50_db');
  await d50.clear();
  for (Diet value in diet[5][0].value) {
    var value1 = Diet50(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity);
    await d50.add(value1);
  }
  final d51 = await Hive.openBox<Diet51>('Diet51_db');
  await d51.clear();
  for (Diet value in diet[5][1].value) {
    var value1 = Diet51(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity);
    await d51.add(value1);
  }
  final d52 = await Hive.openBox<Diet52>('Diet52_db');
  await d52.clear();
  for (Diet value in diet[5][2].value) {
    var value1 = Diet52(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity);
    await d52.add(value1);
  }
  final d53 = await Hive.openBox<Diet53>('Diet53_db');
  await d53.clear();
  for (Diet value in diet[5][3].value) {
    var value1 = Diet53(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity);
    await d53.add(value1);
  }
  final d60 = await Hive.openBox<Diet60>('Diet60_db');
  await d60.clear();
  for (Diet value in diet[6][0].value) {
    var value1 = Diet60(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity);
    await d60.add(value1);
  }
  final d61 = await Hive.openBox<Diet61>('Diet61_db');
  await d11.clear();
  for (Diet value in diet[6][1].value) {
    var value1 = Diet61(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity);
    await d61.add(value1);
  }
  final d62 = await Hive.openBox<Diet62>('Diet62_db');
  await d62.clear();
  for (Diet value in diet[6][2].value) {
    var value1 = Diet62(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity);
    await d62.add(value1);
  }
  final d63 = await Hive.openBox<Diet63>('Diet63_db');
  await d13.clear();
  for (Diet value in diet[6][3].value) {
    var value1 = Diet63(
        name: value.food.name,
        prize: value.food.prize,
        Charbohydrate: value.food.Charbohydrate,
        fat: value.food.fat,
        protein: value.food.protein,
        quantity: value.quantity);
    await d63.add(value1);
  }
}

ValueNotifier<List<HealthData>> healthData = ValueNotifier([]);
void addHealthData(HealthData value) {
  healthData.value.add(value);
  healthData.notifyListeners();
}

ValueNotifier<List<CurrentNutrientLevel>> curNut = ValueNotifier([]);
void updateNutrientStatus(CurrentNutrientLevel value) {
  curNut.value.add(value);
  curNut.notifyListeners();
}
