import 'package:adv_exam1/CountryDetailPage.dart';
import 'package:adv_exam1/CountryProvider.dart';
import 'package:adv_exam1/HomePage.dart';
import 'package:adv_exam1/SeeMoreProvider.dart';
import 'package:adv_exam1/Splace_Screen.dart';
import 'package:adv_exam1/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences=await SharedPreferences.getInstance();
  bool isDark=preferences.getBool('appTheme')??false;
  runApp(
      MultiProvider(providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider(themeModal: ThemeModal(isDark: isDark)),),
        ChangeNotifierProvider(create: (context) => CountryProvider(),),
        ChangeNotifierProvider(create: (context) => SeeMoreProvider(),),

  ],
    child: const MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: (Provider.of<ThemeProvider>(context).themeModal.isDark)?ThemeMode.dark:ThemeMode.light,
      home:Splace_Screen(),
    );
  }
}


