import 'package:flutter/material.dart';
import 'package:teknofest_proje/proje_girisEkran.dart';
import 'package:teknofest_proje/proje_girisyap.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ProjeGirisEkran(),
    );
  }
}
