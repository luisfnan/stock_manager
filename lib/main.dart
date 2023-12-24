import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pedidos_app/screens/login_screen.dart';
import 'package:pedidos_app/screens/sign_up.dart';
import 'package:pedidos_app/styles/global_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle(
      statusBarColor: GlobalColors.mainColor,
      statusBarIconBrightness: Brightness.light,
    ));
    return MaterialApp(
      title: 'Predidos App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: 'login',
      routes: {
        'login': (_) => const LoginScreen(),
        'signup': (_) => const SignUp(),
        //'home': (_) => HomeScreen(),
      },
    );
  }
}
