import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:shedule_ease1/bd/functions/functions.dart';
import 'package:shedule_ease1/bd/model/model.dart';
import 'package:shedule_ease1/finance_1.dart';
import 'package:shedule_ease1/home.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shedule_ease1/splashscreen.dart';
import 'package:shedule_ease1/task_1.dart';
import 'package:shedule_ease1/transaction_model_1.dart';
import 'package:shedule_ease1/login.dart';
import 'package:shedule_ease1/theme_changer.dart';
import 'package:shedule_ease1/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:shedule_ease1/theme_1.dart';

void main() async {
  await Hive.initFlutter();
  WidgetsFlutterBinding.ensureInitialized();
  if (!Hive.isAdapterRegistered(TaskAdapter().typeId)) {
    Hive.registerAdapter(TaskAdapter());
  }
  if (!Hive.isAdapterRegistered(BreakFastAdapter().typeId)) {
    Hive.registerAdapter(BreakFastAdapter());
  }
  if (!Hive.isAdapterRegistered(LunchAdapter().typeId)) {
    Hive.registerAdapter(LunchAdapter());
  }
  if (!Hive.isAdapterRegistered(SnacksAdapter().typeId)) {
    Hive.registerAdapter(SnacksAdapter());
  }
  if (!Hive.isAdapterRegistered(DinnerAdapter().typeId)) {
    Hive.registerAdapter(DinnerAdapter());
  }
  if (!Hive.isAdapterRegistered(Diet00Adapter().typeId)) {
    Hive.registerAdapter(Diet00Adapter());
  }
  if (!Hive.isAdapterRegistered(Diet01Adapter().typeId)) {
    Hive.registerAdapter(Diet01Adapter());
  }
  if (!Hive.isAdapterRegistered(Diet02Adapter().typeId)) {
    Hive.registerAdapter(Diet02Adapter());
  }
  if (!Hive.isAdapterRegistered(Diet03Adapter().typeId)) {
    Hive.registerAdapter(Diet03Adapter());
  }
  if (!Hive.isAdapterRegistered(Diet10Adapter().typeId)) {
    Hive.registerAdapter(Diet10Adapter());
  }
  if (!Hive.isAdapterRegistered(Diet11Adapter().typeId)) {
    Hive.registerAdapter(Diet11Adapter());
  }
  if (!Hive.isAdapterRegistered(Diet12Adapter().typeId)) {
    Hive.registerAdapter(Diet12Adapter());
  }
  if (!Hive.isAdapterRegistered(Diet13Adapter().typeId)) {
    Hive.registerAdapter(Diet13Adapter());
  }
  if (!Hive.isAdapterRegistered(Diet20Adapter().typeId)) {
    Hive.registerAdapter(Diet20Adapter());
  }
  if (!Hive.isAdapterRegistered(Diet21Adapter().typeId)) {
    Hive.registerAdapter(Diet21Adapter());
  }
  if (!Hive.isAdapterRegistered(Diet22Adapter().typeId)) {
    Hive.registerAdapter(Diet22Adapter());
  }
  if (!Hive.isAdapterRegistered(Diet23Adapter().typeId)) {
    Hive.registerAdapter(Diet23Adapter());
  }
  if (!Hive.isAdapterRegistered(Diet30Adapter().typeId)) {
    Hive.registerAdapter(Diet30Adapter());
  }
  if (!Hive.isAdapterRegistered(Diet31Adapter().typeId)) {
    Hive.registerAdapter(Diet31Adapter());
  }
  if (!Hive.isAdapterRegistered(Diet32Adapter().typeId)) {
    Hive.registerAdapter(Diet32Adapter());
  }
  if (!Hive.isAdapterRegistered(Diet33Adapter().typeId)) {
    Hive.registerAdapter(Diet33Adapter());
  }
  if (!Hive.isAdapterRegistered(Diet40Adapter().typeId)) {
    Hive.registerAdapter(Diet40Adapter());
  }
  if (!Hive.isAdapterRegistered(Diet41Adapter().typeId)) {
    Hive.registerAdapter(Diet41Adapter());
  }
  if (!Hive.isAdapterRegistered(Diet42Adapter().typeId)) {
    Hive.registerAdapter(Diet42Adapter());
  }
  if (!Hive.isAdapterRegistered(Diet43Adapter().typeId)) {
    Hive.registerAdapter(Diet43Adapter());
  }
  if (!Hive.isAdapterRegistered(Diet50Adapter().typeId)) {
    Hive.registerAdapter(Diet50Adapter());
  }
  if (!Hive.isAdapterRegistered(Diet51Adapter().typeId)) {
    Hive.registerAdapter(Diet51Adapter());
  }
  if (!Hive.isAdapterRegistered(Diet52Adapter().typeId)) {
    Hive.registerAdapter(Diet52Adapter());
  }
  if (!Hive.isAdapterRegistered(Diet53Adapter().typeId)) {
    Hive.registerAdapter(Diet53Adapter());
  }
  if (!Hive.isAdapterRegistered(Diet60Adapter().typeId)) {
    Hive.registerAdapter(Diet60Adapter());
  }
  if (!Hive.isAdapterRegistered(Diet61Adapter().typeId)) {
    Hive.registerAdapter(Diet61Adapter());
  }
  if (!Hive.isAdapterRegistered(Diet62Adapter().typeId)) {
    Hive.registerAdapter(Diet62Adapter());
  }
  if (!Hive.isAdapterRegistered(Diet63Adapter().typeId)) {
    Hive.registerAdapter(Diet63Adapter());
  }
  if (!Hive.isAdapterRegistered(TaskAdapter().typeId)) {
    Hive.registerAdapter(TaskAdapter());
  }
  if (!Hive.isAdapterRegistered(TransactionAdapter().typeId)) {
    Hive.registerAdapter(TransactionAdapter());
  }
  addDefaltBF();
  addDefaltD();
  addDefaltL();
  addDefaltS();

  runApp(ChangeNotifierProvider<ThemeNotifier>(
    create: (_) => ThemeNotifier(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, theme, child) => MaterialApp(
        initialRoute: '/splash',
        routes: {
          '/splash': (context) => SplashScreen(),
          '/login': (context) => LoginPage(),
          '/home': (context) => SheduleHome(),
        },
        // themeMode: ThemeMode.system,
        theme: theme.currentTheme,
        // darkTheme: MyThemes.darkTheme,
        //debugShowCheckedModeBanner: false,
        // theme: theme.getTheme(),
        // home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Hybrid Theme'),
      ),
      //// body: Row(
      //children: [
      // Container(
      //child: ElevatedButton(
      // onPressed: () => {
      // print('Set Light Theme'),
      // theme.setLightMode(),
      // },
      // child: Text('Set Light Theme'),
      // ),
      // ),
      //   Container(
      //    child: ElevatedButton(
      //     onPressed: () => {
      //      print('Set Dark theme'),
      //     theme.setDarkMode(),
      //  },
      //  child: Text('Set Dark theme'),
      //),
      // ),
      // ],
      // ),
      // ),
      //),
    );
  }
}

class ThemeNotifier extends ChangeNotifier {
  ThemeData _currentTheme = MyThemes.lightTheme;

  ThemeData get currentTheme => _currentTheme;

  void setLightTheme() {
    _currentTheme = MyThemes.lightTheme;
    notifyListeners();
  }

  void setDarkTheme() {
    _currentTheme = MyThemes.darkTheme;
    notifyListeners();
  }
}
