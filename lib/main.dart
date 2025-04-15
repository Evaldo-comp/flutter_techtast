import 'package:flutter/material.dart';
import 'package:myapp/ui/splash/splash_screen.dart';
import 'package:myapp/ui/_core/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: AppTheme.appTheme, home: SplashScreen());
  }
}

/*Palavra chave:Alura*/
