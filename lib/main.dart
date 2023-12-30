import 'package:flutter/material.dart';
import 'package:flutter_todolist_app/pages/home_page.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  //init the hive
  await Hive.initFlutter();

  //open box
  var box = await Hive.openBox('myBox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}
