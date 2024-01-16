import 'package:flutter/material.dart';
import 'package:araci_plus/pages/todo_list_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Aqui retiramos a indicação de "debug" da tela.
      home: TodoListPage(),// Aqui definimos a Página principal do App.

      theme:ThemeData(
        fontFamily: 'Raleway',
        primaryColor: Colors.black,
        //buttonColor: Colors.purple[400],
        brightness: Brightness.dark,
        //accentColor: Colors.lightGreen,
        dialogBackgroundColor: Colors.purple[400],
        appBarTheme: AppBarTheme(
          color: Colors.lightGreen,
        ),
      ),








    );
  }
}
