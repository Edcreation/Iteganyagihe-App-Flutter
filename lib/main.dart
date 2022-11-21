import 'package:flutter/material.dart';
import './Screens/Homepage.dart';
import './Screens/Login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: const Color.fromARGB(255, 2, 6, 81),
      ),
      home: const Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}

