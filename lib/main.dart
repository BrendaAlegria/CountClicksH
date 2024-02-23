//import 'package:counter_texth/pages/home_pages.dart';
import 'package:counter_texth/pages/login_pages.dart';
import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //importa las paginas
      home: LoginPage(),
    );
  }
}