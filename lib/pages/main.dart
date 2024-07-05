import 'package:flutter/material.dart';
import 'package:try1/pages/homeP.dart';
import 'package:try1/pages/loginP.dart';
import 'package:try1/utils/routes.dart';
import 'package:try1/widgets/themes.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyThemes.lightTheme(context),
      darkTheme: MyThemes.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoute.HomeRoute,
      routes: {
        "/" : (context) => Loginp(),
        MyRoute.loginRoute : (context) => Loginp(),
       MyRoute.HomeRoute : (context) => HomePage(),



      },
    );
  }
}
