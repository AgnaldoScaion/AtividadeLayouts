import 'package:flutter/material.dart';
import 'pages/navigation_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
return MaterialApp(
  title: 'Desafios Flutter',
theme: ThemeData(
  primarySwatch: Colors.blueGrey,
  colorScheme: ColorScheme.light(
    primary: Colors.blueGrey[800]!,
    secondary: Colors.amber,
  ),
  scaffoldBackgroundColor: Colors.grey[900], // Preto mais claro
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.blueGrey[900]!,
    elevation: 0,
    ),
  ),
  darkTheme: ThemeData.dark().copyWith(
    colorScheme: ColorScheme.dark(
      primary: Colors.blueGrey[800]!,
      secondary: Colors.amber,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey[900]!,  // Cinza quase preto
    ),
  ),
  themeMode: ThemeMode.system,
  home: const NavigationHome(),
);
  }
}